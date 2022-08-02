/**
 * Created by H487642 on 5/18/2022.
 */

public with sharing class StateApp {
	public static void start() {
		TrafficSystem trafficSystem = new TrafficSystem();
		Integer i = 0;
		while (i < 10) {
			trafficSystem.displayState();
			trafficSystem.changeState();
			i++;
			System.debug(i);
		}
	}
}