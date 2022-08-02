public with sharing class Document {
	private List<DocumentPart> documentParts = new List<DocumentPart>();

	public void addPart(DocumentPart part) {
		this.documentParts.add(part);
	}

	public void accept(ITextVisitor visitor) {
		for (DocumentPart part : this.documentParts) {
			part.accept(visitor);
		}
	}
}