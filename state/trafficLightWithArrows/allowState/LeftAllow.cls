/**
 * Created by H487642 on 7/29/2022.
 */

public with sharing class LeftAllow implements State {
	private TrafficSystem2 trafficSystem;
	private TrafficLight light;
	private TrafficArrow leftArrow;

	public LeftAllow(TrafficSystem2 trafficSystem, TrafficLight light, TrafficArrow leftArrow) {
		this.trafficSystem = trafficSystem;
		this.light = light;
		this.leftArrow = leftArrow;
	}

	public void changeState() {
		this.light.turnOff();
		this.leftArrow.turnOff();
		this.trafficSystem.setPreviousState(this);
		this.trafficSystem.setCurrentState(this.trafficSystem.getWarning());
	}

	public void displayState() {
		System.debug('LeftAllow');
		this.light.turnOn();
		this.leftArrow.turnOn();
	}
}