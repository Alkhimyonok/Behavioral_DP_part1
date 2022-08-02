public with sharing class RedLight implements TrafficLight {

	public void turnOn() {
		System.debug('Switching on red light');
	}

	public void turnOff() {
		System.debug('Switching off red light');
	}
}