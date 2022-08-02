public class ChatUser extends User {

	public ChatUser(IChatRoom room, String id, String name) {
		super(room, id, name);
	}

	public override void send(String msg) {
		System.debug(this.getName() + msg + 'sent');
		getMediator().sendMessage(msg);
	}

	public override void receive(String msg) {
		System.debug(this.getName() + msg + 'received');
	}

}