export const notification = () => {

  const groupTitles = document.querySelectorAll(".group-message-title")

  groupTitles.forEach((title)  => {

  title.addEventListener('click', (event) => {
    const id = event.target.href;
    console.log(event.target.href);
         }
        )
      }
    )
  };

