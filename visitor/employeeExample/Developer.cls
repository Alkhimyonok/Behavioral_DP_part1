public with sharing class Developer implements Employee {
	private Integer salary;

	public Developer(Integer salary) {
		this.salary = salary;
	}

	public Integer getSalary() {
		return this.salary;
	}

	public void accept(Visitor visitor) {
		visitor.visit(this);
	}
}