public with sharing class IteratorApp {
	public static void start() {
		StringCollection collection = new StringCollection();
		collection.add('A');
		collection.add('B');
		collection.add('C');

		//with pattern
		IIterator itr = collection.createIterator(IteratorType.REVERSE);
		while (itr.hasNext()) {
			System.debug(itr.next());
		}

		//without pattern
		for (Integer i = collection.getStringList().size() - 1; i >= 0; i--) {
			System.debug(collection.getStringList().get(i));
		}
	}
}