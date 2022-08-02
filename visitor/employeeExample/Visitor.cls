public interface Visitor {
	void visit(Developer dev);
	void visit(Manager manager);
	void visit(Boss boss);
}