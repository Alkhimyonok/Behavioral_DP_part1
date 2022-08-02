public with sharing class MediatorApp {
	public static void start() {
		IChatRoom chatroom = new ChatRoom();

		User user1 = new ChatUser(chatroom, '123', 'A');
		User user2 = new ChatUser(chatroom, '456', 'B');
		User user3 = new ChatUser(chatroom, '789', 'C');
		User admin = new AdminUser(chatroom, '101', 'Admin');

		chatroom.addUser(admin);
		chatroom.addUser(user1);
		chatroom.addUser(user2);
		chatroom.addUser(user3);

		user1.send('Hello B');
	}
}