public class CalloutDemo {
    @future(callout=true)
    public static void sendRegistrationData(Id registrationId) {
        Registration__c reg = [SELECT Id, Name, Participant__r.Name, Event__r.Name 
                               FROM Registration__c WHERE Id = :registrationId LIMIT 1];

        String participantName = reg.Participant__r.Name;
        String eventName = reg.Event__r.Name;

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:TestAPI/posts'); // Named Credential
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');

        // Send Participant + Event info to external system
        String body = '{"title":"New Registration","body":"Participant ' + participantName +
                      ' registered for event ' + eventName + '","userId":1}';
        request.setBody(body);

        HttpResponse response = http.send(request);
        System.debug('Response from API: ' + response.getBody());
    }
}
