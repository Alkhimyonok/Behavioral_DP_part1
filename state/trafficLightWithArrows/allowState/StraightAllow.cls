/**
 * Created by H487642 on 7/29/2022.
 */

public with sharing class StraightAllow implements State {
	private TrafficSystem2 trafficSystem;
	private TrafficLight light;
	private TrafficArrow straightArrow;

	public StraightAllow(TrafficSystem2 trafficSystem, TrafficLight light, TrafficArrow straightArrow) {
		this.trafficSystem = trafficSystem;
		this.light = light;
		this.straightArrow = straightArrow;
	}

	public void changeState() {
		this.light.turnOff();
		this.straightArrow.turnOff();
		this.trafficSystem.setPreviousState(this);
		this.trafficSystem.setCurrentState(this.trafficSystem.getStraightAndRightAllow());
	}

	public void displayState() {
		System.debug('StraightAllow');
		this.light.turnOn();
		this.straightArrow.turnOn();
	}
}