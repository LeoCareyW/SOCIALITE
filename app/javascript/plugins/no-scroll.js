export const noScroll = () => {
  console.log("scroll maybe working")


  const container = document.getElementById("messages");

if (container) {

const message = document.getElementById(`elementMessage-${container.dataset.lastMessageId}`)
message.scrollIntoView();
message.scrollIntoView("alignToBottom");
message.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'start' });

  }
}
