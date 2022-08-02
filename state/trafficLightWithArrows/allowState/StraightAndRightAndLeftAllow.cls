public with sharing class StraightAndRightAndLeftAllow implements State {
	private TrafficSystem2 trafficSystem;
	private TrafficLight light;
	private TrafficArrow straightArrow;
	private TrafficArrow rightArrow;
	private TrafficArrow leftArrow;

	public StraightAndRightAndLeftAllow(TrafficSystem2 trafficSystem, TrafficLight light, TrafficArrow straightArrow, TrafficArrow rightArrow, TrafficArrow leftArrow) {//here can be used Builder pattern
		this.trafficSystem = trafficSystem;
		this.light = light;
		this.straightArrow = straightArrow;
		this.rightArrow = rightArrow;
		this.leftArrow = leftArrow;
	}

	public void changeState() {
		this.light.turnOff();
		this.straightArrow.turnOff();
		this.rightArrow.turnOff();
		this.leftArrow.turnOff();
		this.trafficSystem.setPreviousState(this);
		this.trafficSystem.setCurrentState(this.trafficSystem.getWarning());
	}

	public void displayState() {
		System.debug('StraightAndRightAndLeftAllow');
		this.light.turnOn();
		this.straightArrow.turnOn();
		this.rightArrow.turnOn();
	}
}