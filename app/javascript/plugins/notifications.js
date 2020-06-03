export const notification = () => {

  const groupTitles = document.querySelectorAll(".group-message-title")

  groupTitles.forEach((title)  => {

  title.addEventListener('click', (event) => {
    const string = event.target.href;
    let array = string.split("/");
    let id = array[array.length - 1];

    $.ajax({
      type: "GET",
      dataType: "json",
      url: `/chatrooms/${id}/mark_as_read`,
      success: function(data){
        console.log("mark as read");
        }
      })
     }
    )
   }
  )
  };

