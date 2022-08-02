/**
 * Created by H487642 on 7/29/2022.
 */

public with sharing class StateApp2 {
	public static void start() {
		TrafficSystem2 trafficSystem = new TrafficSystem2();
		Integer i = 0;
		while (i < 10) {
			trafficSystem.displayState();
			trafficSystem.changeState();
			i++;
			System.debug(i);
		}
	}
}