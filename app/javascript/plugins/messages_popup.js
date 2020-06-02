export const messagesPopup = () => {

  const modal = document.getElementById("PopUpModal");
  // Get the button that opens the modal
  const btn = document.getElementById("pbtn2");

  // Get the <span> element that closes the modal
  const span = document.getElementsByClassName("close")[0];

  // When the user clicks on the button, open the modal
  if (btn) {
    btn.onclick = function(event) {
      event.preventDefault();
      modal.style.display = "block";
    }
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
  }

  if (span) {
  span.onclick = function() {
    modal.style.display = "none";
    }
  }
}
