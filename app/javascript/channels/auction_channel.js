import consumer from "./consumer"

consumer.subscriptions.create("AuctionChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("connected auction channel")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("dis connected auction channel")
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("received auction channel");
    var current_price = data.content;

    var node = document.getElementById("current_price");
    node.textContent = current_price.toLocaleString();

  }
});
