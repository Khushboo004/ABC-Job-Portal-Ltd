var wsURI = "ws://" + document.location.host + document.location.pathname;

var websocket = new WebSocket(wsURI);

websocket.onmessage = function(evnt) {
    onMessage(evnt);
};

websocket.onopen = function()  {
    onOpen();
};

function onOpen() {
    console.log("Opened connection: " + wsURI);
}

function onClose() {
    console.log("Closed connection: " + wsURI);
}

function onMessage(event) {
    console.log(event);
    display(event.data);
}

function display(dataString) {
    var data = JSON.parse(dataString);
    var contentMessage = "<p>User " + data.fullName + " says: " + data.content + "</p>";
    document.getElementById("output").innerHTML += contentMessage + "</br>";
}

function send() {
    var message = document.getElementById("message_input").value;
    var fullName = document.getElementById("${user.fullName }").value;
    var json = {
        "content": message,
        "fullName": fullName
    };
    console.log("Sending " + message);
    websocket.send(JSON.stringify(json));
}









function setReceiver(element) {
	receiver = element.id;
		var rightSide = '<div class="user-contact">' + '<div class="back">'
		+ '<i class="fa fa-arrow-left"></i>'
		+ '</div>'
		+ '<div class="user-contain">'
		+ '<div class="user-info">'
				+ '<input id="${user.fullName }" placeholder="Your username">'
		+ '<span id="${user.fullName }" class="user-name">' + receiver + '</span>'
		+ '</div>'
		+ '</div>'
		+ '<div class="setting">'
		+ '<i class="fa fa-cog"></i>'
		+ '</div>'
		+ '</div>'
		+ '</div>'
		+ '<div class="list-messages-contain">'
		+ '<h2 id="output">'
		+ '</h2>'
		+ '</div>'
		+ '<form class="form-send-message" onsubmit="return sendMessage(event)">'
		+ '<ul class="list-file"></ul> '
		+ '<input type="text" id="message_input" class="txt-input" placeholder="Type message...">'
		+ '<button onclick="send()">Send message</button>'
		+ '<label class="btn btn-image" for="attach"><i class="fa fa-file"></i></label>'
		+ '<input type="file" multiple id="attach">'
		+ '<label class="btn btn-image" for="image"><i class="fa fa-file-image-o"></i></label>'
		+ '<input type="file" accept="image/*" multiple id="image">'
		+ '<button type="submit" class="btn btn-send">'
		+ '<i class="fa fa-paper-plane"></i>'
		+ '</button>'
		+ '</form>';

	document.getElementById("receiver").innerHTML = rightSide;
	}
	
	
	function sendMessage(e) {
	e.preventDefault();



	return false;
}


