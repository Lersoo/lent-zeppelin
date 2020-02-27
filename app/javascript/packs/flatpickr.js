const flatpickr = require("flatpickr");

const initFlatpickr = () => {
  const inputDatePicker = document.querySelector('#datePicker')
  const minDate = inputDatePicker.dataset.mindate;
  const maxDate = inputDatePicker.dataset.maxdate;
  const alreadyBooked = (JSON.parse(inputDatePicker.dataset.bookingsdate)).map(date => (new Date(date)).toDateString());
  console.log(alreadyBooked);
  flatpickr("#datePicker", {
    static: true,
    minDate: minDate,
    maxDate: maxDate,
    onDayCreate: function(dObj, dStr, fp, dayElem){
      const parsedDate = (new Date(dayElem.getAttribute('aria-label'))).toDateString();
      if (alreadyBooked.includes(parsedDate)) {
        dayElem.classList.toggle('flatpickr-disabled');
        dayElem.innerHTML += "<span class='event busy'></span>";
      };
    }});
}

export { initFlatpickr }
