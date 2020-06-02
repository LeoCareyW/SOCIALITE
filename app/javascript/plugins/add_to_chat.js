export const messagesPopup2 = () => {

  const modal2 = document.getElementById("PopUpModal2");
  // Get the button that opens the modal
  const btn2 = document.getElementById("pbtn4");

  // Get the <span> element that closes the modal
  const span = document.getElementsByClassName("close")[0];

  // When the user clicks on the button, open the modal
  if (btn2) {
    btn2.onclick = function(event) {
      event.preventDefault();
      modal2.style.display = "block";
    }
    window.onclick = function(event) {
      if (event.target == modal2) {
        modal2.style.display = "none";
      }
    }
  }

  if (span) {
    span.onclick = function() {
     modal2.style.display = "none";
    }
  }
}
