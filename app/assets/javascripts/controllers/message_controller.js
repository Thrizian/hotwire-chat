import {Controller} from "stimulus";
import dayjs from 'dayjs';

export default class extends Controller {
    static targets = ["string", "output"]

    convert() {
        this.outputTarget.textContent = `The time locally is: `
    }
}
