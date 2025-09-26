trigger RegistrationCalloutTrigger on Registration__c (after insert) {
    for (Registration__c reg : Trigger.new) {
        CalloutDemo.sendRegistrationData(reg.Id);
    }
}