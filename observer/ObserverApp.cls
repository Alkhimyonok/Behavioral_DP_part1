public with sharing class ObserverApp {
	public static void start(){
		Observable channel = new Channel();

		Observer o1 = new ConcreteObserver('a@a.com');
		channel.subscribe(o1);
		channel.notifyUpdate('Hello');

		Observer o2 = new ConcreteObserver('b@b.com');
		channel.subscribe(o2);
		channel.notifyUpdate('Update');

		Observer o3 = new ConcreteObserver('c@c.com');
		channel.subscribe(o3);
		channel.notifyUpdate('Bye');
	}
}