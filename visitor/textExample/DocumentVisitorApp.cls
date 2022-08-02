public with sharing class DocumentVisitorApp {
	public static void start() {
		Document doc = new Document();
		doc.addPart(new PlainText('plain text'));
		doc.addPart(new BoldText('bold text'));
		doc.addPart(new Hyperlink('hyperlink.com'));

		ITextVisitor visitor = new HtmlVisitor();
		doc.accept(visitor);

		System.debug(((HtmlVisitor) visitor).getOutput);
	}
}