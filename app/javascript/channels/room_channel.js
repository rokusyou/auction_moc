import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("connected");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  // received(data) {
  //   // Called when there's incoming data on the websocket for this channel
  // },

  received(data) {
    console.log("received");

    // トップに表示させた最新の投稿メッセージを更新します。
    var latest_message = document.getElementById("latest_message");
    latest_message.textContent = data.content.message;

    // 新しいP要素を用意します．
    var node = document.createElement("P");
    // 受信したメッセージを変数に入れます．
    var textnode = document.createTextNode(data.content.message);
    // テキストノードを新規作成したP要素に追加します．
    node.appendChild(textnode);

    // DOM に新しく作られた要素とその内容を追加します
    document.getElementById("new_message").appendChild(node);
    // フォームの中身を空にします
    document.getElementById('chat_message').value= ''
  }
});
