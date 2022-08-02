public with sharing class ChatRoom implements IChatRoom {

	private List<User> users = new List<User>();

	public void sendMessage(String msg) {
		for(User u: this.users){
			u.receive(msg);
		}
	}

	public void addUser(User user) {
		this.users.add(user);
	}
}