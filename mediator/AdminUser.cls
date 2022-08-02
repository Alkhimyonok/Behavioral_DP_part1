public with sharing class AdminUser extends User {

	public AdminUser(IChatRoom room, String id, String name) {
		super(room, id, name);
	}

	public override void send(String msg) {
		System.debug(this.getName() + msg + 'sent by admin');
		getMediator().sendMessage(msg);
	}

	public override void receive(String msg) {
		System.debug(this.getName() + msg + 'received to admin');
	}

}