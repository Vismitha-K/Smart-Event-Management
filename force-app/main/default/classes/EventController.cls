public with sharing class EventController {
    @AuraEnabled(cacheable=true)
    public static List<Event__c> getEvents() {
        return [SELECT Id, Name, Start_Date__c, Venue__c FROM Event__c LIMIT 10];
    }
}
