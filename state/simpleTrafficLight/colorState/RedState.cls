public class RedState implements State {
	private TrafficSystem trafficSystem;
	private TrafficLight light;

	public RedState(TrafficSystem trafficSystem, TrafficLight light) {
		this.trafficSystem = trafficSystem;
		this.light = light;
	}

	public void changeState() {
		this.light.turnOff();
		this.trafficSystem.setPreviousState(this);
		this.trafficSystem.setCurrentState(this.trafficSystem.getYellowState());
	}

	public void displayState() {
		System.debug('RedState');
		this.light.turnOn();
	}
}