public with sharing class Manager implements Employee {
	private Integer salary;
	private Integer bonus;

	public Manager(Integer salary) {
		this.salary = salary;
		this.bonus = 2 * salary;
	}

	public Integer getSalary() {
		return salary;
	}

	public Integer getBonus() {
		return bonus;
	}

	public void accept(Visitor visitor) {
		visitor.visit(this);
	}
}