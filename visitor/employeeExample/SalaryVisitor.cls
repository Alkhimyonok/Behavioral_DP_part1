public with sharing class SalaryVisitor implements Visitor {
	private Integer totalSalary;

	public SalaryVisitor() {
		totalSalary = 0;
	}

	public Integer getTotalSalary() {
		return totalSalary;
	}

	public void visit(Developer dev) {
		totalSalary += dev.getSalary();
	}

	public void visit(Manager manager) {
		totalSalary += (manager.getSalary() + manager.getBonus());
	}

	public void visit(Boss boss) {
		totalSalary += (boss.getSalary() + boss.getAdditionalSalary());
	}
}