public with sharing abstract class DocumentPart {
	public String text { get; private set; }
	protected DocumentPart(String text) {
		this.text = text;
	}
	public abstract void accept(ITextVisitor visitor);
}