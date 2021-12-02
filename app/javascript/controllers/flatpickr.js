import flatpickr from "flatpickr";

// date
flatpickr('.flatpickr.js-flatpickr-date',{
  altInput: true,
  altFormat: 'd. M Y',
  dateFormat: 'Y-m-d'
});

// time
flatpickr('.flatpickr.js-flatpickr-time',{
  enableTime: true,
  time_24hr: true,
  altInput: true,
  altFormat: 'H:i',
  dateFormat: 'H:i',
  noCalendar: true
});
