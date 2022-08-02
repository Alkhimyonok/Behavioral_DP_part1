public with sharing class GreenLight implements TrafficLight {

	public void turnOn() {
		System.debug('Switching on green light');
	}

	public void turnOff() {
		System.debug('Switching off green light');
	}
}