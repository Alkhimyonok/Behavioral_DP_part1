public with sharing class StraightAndRightAllow implements State {
	private TrafficSystem2 trafficSystem;
	private TrafficLight light;
	private TrafficArrow straightArrow;
	private TrafficArrow rightArrow;

	public StraightAndRightAllow(TrafficSystem2 trafficSystem, TrafficLight light, TrafficArrow straightArrow, TrafficArrow rightArrow) {//here can be used Builder pattern
		this.trafficSystem = trafficSystem;
		this.light = light;
		this.straightArrow = straightArrow;
		this.rightArrow = rightArrow;
	}

	public void changeState() {
		this.light.turnOff();
		this.straightArrow.turnOff();
		this.rightArrow.turnOff();
		this.trafficSystem.setPreviousState(this);
		this.trafficSystem.setCurrentState(this.trafficSystem.getStraightAndRightAndLeftAllow());
	}

	public void displayState() {
		System.debug('StraightAndRightAllow');
		this.light.turnOn();
		this.straightArrow.turnOn();
		this.rightArrow.turnOn();
	}
}