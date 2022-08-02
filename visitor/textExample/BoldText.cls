public with sharing class BoldText extends DocumentPart {
	public BoldText(String text){
		super(text);
	}
	public override void accept(ITextVisitor visitor) {
		visitor.visit(this);
	}
}