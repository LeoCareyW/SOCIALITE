import consumer from './consumer'

const initChatroomCable = () => {
  const messageContainer = document.getElementById('messages');

  if (messageContainer) {
    const id = messageContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: 'ChatroomChannel', id: id }, {
      received(data) {
        messageContainer.insertAdjacentHTML('beforeend', data);
      }
    })

  }
}

export { initChatroomCable };
