public with sharing class Channel implements Observable {

	private List<Observer> observers = new List<Observer>();

	public void subscribe(Observer o) {
		this.observers.add(o);
	}

	public void unsubscribe(Observer o) {
		this.observers.remove(this.observers.indexOf(o));
	}

	public void notifyUpdate(String message) {
		for (Observer o : this.observers) {
			o.receiveMessage(message);
		}
	}
}