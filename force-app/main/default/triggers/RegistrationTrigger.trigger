trigger RegistrationTrigger on Registration__c (before insert, before update) {
    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        RegistrationService.validateRegistration(Trigger.new);
    }
}
