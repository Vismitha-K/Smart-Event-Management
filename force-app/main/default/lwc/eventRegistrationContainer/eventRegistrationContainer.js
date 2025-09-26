import { LightningElement } from 'lwc';

export default class EventRegistrationContainer extends LightningElement {
    selectedEventId;

    handleEventSelected(event) {
        this.selectedEventId = event.detail.eventId;
    }
}