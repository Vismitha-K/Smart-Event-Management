@isTest
public class RegistrationServiceTest {
    
    @isTest
    static void testPreventDuplicateRegistration() {
        // Create a dummy Event
        Event__c eventRec = new Event__c(
            Name = 'Tech Summit',
            Capacity__c = 100
        );
        insert eventRec;

        // Create a dummy Participant
        Participant__c partRec = new Participant__c(
            Name = 'Test User',
            Email__c = 'testuser@example.com'
        );
        insert partRec;

        // Create first Registration (should succeed)
        Registration__c reg1 = new Registration__c(
            Event__c = eventRec.Id,
            Participant__c = partRec.Id,
            Status__c = 'Registered'
        );
        insert reg1;

        // Try inserting duplicate Registration (same Event + Participant)
        Registration__c reg2 = new Registration__c(
            Event__c = eventRec.Id,
            Participant__c = partRec.Id,
            Status__c = 'Registered'
        );

        Test.startTest();
        try {
            insert reg2;
            System.assert(false, 'Expected duplicate registration error not thrown');
        } catch (DmlException e) {
            System.assert(e.getMessage().contains('already registered for this event'));
        }
        Test.stopTest();
    }
}
