import { LightningElement, api } from 'lwc';

export default class RegistrationForm extends LightningElement {
    @api selectedEventId;

    handleEventSelected(event) {
        this.selectedEventId = event.detail.eventId;
    }
}