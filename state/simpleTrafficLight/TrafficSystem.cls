public with sharing class TrafficSystem {
	private State greenState;
	private State redState;
	private State yellowState;

	private State currentState;
	private State previousState;

	public TrafficSystem() {
		this.greenState = new GreenState(this, new GreenLight());
		this.redState = new RedState(this, new RedLight());
		this.yellowState = new YellowState(this, new YellowLight());

		this.currentState = this.greenState;
		this.previousState = this.redState;
	}

	public State getGreenState() {
		return this.greenState;
	}

	public State getRedState() {
		return this.redState;
	}

	public State getYellowState() {
		return this.yellowState;
	}

	public State getCurrentState() {
		return this.currentState;
	}

	public void setCurrentState(State currentState) {
		this.currentState = currentState;
	}

	public State getPreviousState() {
		return this.previousState;
	}

	public void setPreviousState(State previousState) {
		this.previousState = previousState;
	}

	public void changeState() {
		this.currentState.changeState();
	}

	public void displayState() {
		this.currentState.displayState();
	}
}