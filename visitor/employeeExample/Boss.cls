public with sharing class Boss implements Employee {
	private Integer salary;
	private Integer addSalary;

	public Boss(Integer salary) {
		this.salary = salary;
		this.addSalary = salary * 3;
	}

	public Integer getSalary() {
		return this.salary;
	}

	public Integer getAdditionalSalary() {
		return this.addSalary;
	}

	public void accept(Visitor visitor) {
		visitor.visit(this);
	}
}