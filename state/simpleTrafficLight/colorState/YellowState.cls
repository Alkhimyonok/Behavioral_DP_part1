public with sharing class YellowState implements State {
	private TrafficSystem trafficSystem;
	private TrafficLight light;

	public YellowState(TrafficSystem trafficSystem, TrafficLight light) {
		this.trafficSystem = trafficSystem;
		this.light = light;
	}

	public void changeState() {
		this.light.turnOff();
		if (this.trafficSystem.getPreviousState() instanceof GreenState) {
			this.trafficSystem.setCurrentState(this.trafficSystem.getRedState());
		} else {
			this.trafficSystem.setCurrentState(this.trafficSystem.getGreenState());
		}
	}

	public void displayState() {
		System.debug('YellowState');
		this.light.turnOn();
	}
}