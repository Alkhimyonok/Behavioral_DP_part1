public with sharing class StringCollection implements Aggregate {
	private String[] stringList;
	//..many fields

	public StringCollection() {
		this.stringList = new String[0];
	}

	public String[] getStringList() {
		return stringList;
	}

	public IIterator createIterator(IteratorType type) {
		if (type == IteratorType.STRAIGHT) {
			return new StraightIterator(this.stringList);
		}
		if (type == IteratorType.REVERSE) {
			return new ReverseIterator(this.stringList);
		}
		return new StraightIterator(this.stringList);
	}


	public void add(String str) {
		this.stringList.add(str);
	}

	class StraightIterator implements IIterator {

		private String[] stringList;
		private Integer currentInd = 0;

		public StraightIterator(String[] stringList) {
			this.stringList = stringList;
		}

		public Boolean hasNext() {
			return this.currentInd < this.stringList.size();
		}

		public String next() {
			return this.stringList[this.currentInd++];
		}
	}

	class ReverseIterator implements IIterator {

		private String[] stringList;
		private Integer currentInd;

		public ReverseIterator(String[] stringList) {
			this.stringList = stringList;
			this.currentInd = stringList.size() - 1;
		}

		public Boolean hasNext() {
			return this.currentInd >= 0;
		}

		public String next() {
			return this.stringList[this.currentInd--];
		}
	}
}