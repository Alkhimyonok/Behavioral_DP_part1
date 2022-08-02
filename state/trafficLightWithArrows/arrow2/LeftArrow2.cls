/**
 * Created by H487642 on 7/29/2022.
 */

public with sharing class LeftArrow2 implements TrafficArrow{
	public void turnOn() {
		System.debug('Switching on lef arrow');
	}

	public void turnOff() {
		System.debug('Switching off lef arrow');
	}
}