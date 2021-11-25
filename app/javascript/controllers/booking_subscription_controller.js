import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { bookingId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
        { channel: "BookingChannel", id: this.bookingIdValue },
        { received: data => this.element.insertAdjacentHTML("beforeend", data) }
    );
  }
}