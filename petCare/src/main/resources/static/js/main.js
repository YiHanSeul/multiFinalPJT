/**
 * 
 */
 var stompClient = null;

function connect() {

    var socket = new SockJS('/ws');
    stompClient = Stomp.over(socket);
		stompClient.connect({}, onConnected, onError);
}


function onConnected() {
    stompClient.subscribe('/topic/public', onMessageReceived);
    sendMessage("지금 뭐하고 있니");
}

function onMessageReceived(payload) {
    console.log(payload);
}

function onError(error) {
    console.log(error)
}

function sendMessage(content, event) {
    stompClient.send("/app/chat.sendMessage", {}, JSON.stringify(content));
}

connect();