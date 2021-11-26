document.addEventListener('turbolinks:load', () => {
  const btn = document.querySelectorAll(".event-modal-button");
  const close = document.querySelectorAll(".event-modal-close");

  btn.forEach(button => {
    const modal = document.getElementById(`event-modal-${button.dataset.buttonid}`)
    const closeButton = document.getElementById(`event-modal-close-${button.dataset.buttonid}`)
    
    button.onclick = function(event) {
      modal.style.display = "block";
    }
    
    closeButton.onclick = function(event) {
      modal.style.display = "none";
    }
  })
});