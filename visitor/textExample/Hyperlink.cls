public with sharing class Hyperlink extends DocumentPart {
	public Hyperlink(String text) {
		super(text);
	}
	public override void accept(ITextVisitor visitor) {
		visitor.visit(this);
	}
}