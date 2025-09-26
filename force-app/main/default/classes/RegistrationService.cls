public class RegistrationService {
    
    public static void validateRegistration(List<Registration__c> newRegistrations) {
        Set<String> comboSet = new Set<String>();
        Set<Id> eventIds = new Set<Id>();
        Set<Id> participantIds = new Set<Id>();
        
        for (Registration__c reg : newRegistrations) {
            if (reg.Event__c != null && reg.Participant__c != null) {
                String comboKey = reg.Event__c + '-' + reg.Participant__c;
                if (comboSet.contains(comboKey)) {
                    reg.addError('Duplicate registration detected in this batch for the same event and participant.');
                } else {
                    comboSet.add(comboKey);
                }
                eventIds.add(reg.Event__c);
                participantIds.add(reg.Participant__c);
            }
        }

        if (!eventIds.isEmpty() && !participantIds.isEmpty()) {
            List<Registration__c> existingRegs = [
                SELECT Event__c, Participant__c 
                FROM Registration__c 
                WHERE Event__c IN :eventIds
                AND Participant__c IN :participantIds
            ];

            for (Registration__c reg : newRegistrations) {
                for (Registration__c ex : existingRegs) {
                    if (reg.Event__c == ex.Event__c && reg.Participant__c == ex.Participant__c) {
                        reg.addError('This participant is already registered for this event.');
                    }
                }
            }
        }
    }
}