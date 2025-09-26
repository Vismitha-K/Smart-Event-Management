import { LightningElement, wire, track } from 'lwc';
import getEvents from '@salesforce/apex/EventController.getEvents';

const COLUMNS = [
    { label: 'Event Name', fieldName: 'Name' },
    { label: 'Start Date', fieldName: 'Start_Date__c', type: 'date' },
    { label: 'Venue', fieldName: 'Venue__c' }   // changed from Location__c
];

export default class EventList extends LightningElement {
    @track events;
    @track error;
    columns = COLUMNS;

    @wire(getEvents)
    wiredEvents({ error, data }) {
        if (data) {
            this.events = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.events = undefined;
        }
    }

    handleRowSelection(event) {
        const selectedRows = event.detail.selectedRows;
        if (selectedRows.length > 0) {
            const eventId = selectedRows[0].Id;
            // Fire a custom event with the selected Event Id
            this.dispatchEvent(new CustomEvent('eventselected', {
                detail: { eventId }
            }));
        }
    }

}
