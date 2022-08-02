public with sharing class ConcreteObserver implements Observer {
	private String email;
	private List<String> messageHistory;

	public ConcreteObserver(String email) {
		this.email = email;
		this.messageHistory = new List<String>();
	}

	public void receiveMessage(String message) {
		this.messageHistory.add(message);
		System.debug('/////---------------------------' + this.email + '---------------------------/////');
		System.debug(this.messageHistory);
	}
}