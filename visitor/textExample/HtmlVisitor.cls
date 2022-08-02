public with sharing class HtmlVisitor implements ITextVisitor {
	private String output = '';

	public String getOutput {
		get {
			return this.output;
		}
	}

	public void visit(PlainText docPart) {
		this.output += docPart.text + '\n';
	}

	public void visit(BoldText docPart) {
		this.output += '<b>' + docPart.text + '</b>' + '\n';
	}

	public void visit(Hyperlink docPart) {
		this.output += '<a href=\"' + docPart.text + '\">' + docPart.text + '</a>' + '\n';
	}
}