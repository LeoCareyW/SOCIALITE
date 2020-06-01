import consumer from './consumer'

document.addEventListener('turbolinks:load', () => {
  const messageContainer = document.getElementById('messages');
  if (messageContainer) {
    const id = messageContainer.dataset.chatroomId;
    console.log(id);
    consumer.subscriptions.create({ channel: 'ChatroomChannel', id: id }, {
      received(data) {
        console.log("hi")
        messageContainer.insertAdjacentHTML('beforeend', data);
      }
    })

  }
});

