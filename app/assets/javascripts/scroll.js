function scrollLastMessageIntoView() {
  var messages = document.querySelectorAll('.message');
  var lastMessage = messages[messages.length - 1];
    lastMessage.scrollIntoView();
}
