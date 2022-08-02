public with sharing class YellowLight implements TrafficLight {

	public void turnOn() {
		System.debug('Switching on yellow light');
	}

	public void turnOff() {
		System.debug('Switching off yellow light');
	}
}