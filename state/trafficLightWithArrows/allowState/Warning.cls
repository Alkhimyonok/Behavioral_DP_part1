/**
 * Created by H487642 on 7/29/2022.
 */

public with sharing class Warning implements State {
	private TrafficSystem2 trafficSystem;
	private TrafficLight light;

	public Warning(TrafficSystem2 trafficSystem, TrafficLight light) {
		this.trafficSystem = trafficSystem;
		this.light = light;
	}

	public void changeState() {
		this.light.turnOff();
		if (this.trafficSystem.getPreviousState() instanceof StraightAndRightAndLeftAllow) {
			this.trafficSystem.setCurrentState(this.trafficSystem.getLeftAllow());
		} else {
			this.trafficSystem.setCurrentState(this.trafficSystem.getStraightAllow());
		}
		this.trafficSystem.setPreviousState(this);
	}

	public void displayState() {
		System.debug('Warning');
		this.light.turnOn();
	}
}