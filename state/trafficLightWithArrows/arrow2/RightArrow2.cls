/**
 * Created by H487642 on 7/29/2022.
 */

public with sharing class RightArrow2 implements TrafficArrow{
	public void turnOn() {
		System.debug('Switching on right arrow');
	}

	public void turnOff() {
		System.debug('Switching off right arrow');
	}
}