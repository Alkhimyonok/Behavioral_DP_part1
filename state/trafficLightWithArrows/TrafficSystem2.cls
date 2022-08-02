public with sharing class TrafficSystem2 {
	private State leftAllow;
	private State straightAllow;
	private State straightAndRightAllow;
	private State straightAndRightAndLeftAllow;
	private State warning;

	private State currentState;
	private State previousState;

	public TrafficSystem2() {
		TrafficLight redLight = new RedLight();
		TrafficLight yellowLight = new YellowLight();
		TrafficLight greenLight = new GreenLight();

		TrafficArrow leftArrow = new LeftArrow2();
		TrafficArrow rightArrow = new RightArrow2();
		TrafficArrow straightArrow = new StraightArrow2();

		this.leftAllow = new LeftAllow(this, redLight, leftArrow);
		this.straightAllow = new StraightAllow(this, greenLight, straightArrow);
		this.straightAndRightAllow = new StraightAndRightAllow(this, greenLight, straightArrow, rightArrow);
		this.straightAndRightAndLeftAllow = new StraightAndRightAndLeftAllow(this, greenLight, straightArrow, rightArrow, leftArrow);
		this.warning = new Warning(this, yellowLight);

		this.currentState = this.straightAllow;
		this.previousState = this.straightAllow;
	}

	public State getLeftAllow(){
		return this.leftAllow;
	}

	public State getStraightAllow(){
		return this.straightAllow;
	}

	public State getStraightAndRightAllow(){
		return this.straightAndRightAllow;
	}

	public State getStraightAndRightAndLeftAllow(){
		return this.straightAndRightAndLeftAllow;
	}

	public State getWarning(){
		return this.warning;
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