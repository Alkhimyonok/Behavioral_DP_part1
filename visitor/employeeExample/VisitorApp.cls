public with sharing class VisitorApp {
	public static void start() {
		List<Employee> employees = new List<Employee>();
		employees.add(new Developer(1));
		employees.add(new Manager(2));
		employees.add(new Boss(3));

		//with visitor pattern
		Visitor visitor = new SalaryVisitor();
		for (Employee e : employees) {
			e.accept(visitor);
		}

		System.debug(((SalaryVisitor) visitor).getTotalSalary());

		//without visitor pattern
		Integer totalSalary = 0;
		for (Employee e : employees) {
			if (e instanceof Developer) {
				Developer dev = (Developer) e;
				totalSalary += dev.getSalary();
				continue;
			}
			if (e instanceof Manager) {
				Manager manager = (Manager) e;
				totalSalary += manager.getSalary() + manager.getBonus();
				continue;
			}

			if (e instanceof Boss) {
				Boss boss = (Boss) e;
				totalSalary += boss.getSalary() + boss.getAdditionalSalary();
			}
		}

		System.debug(totalSalary);
	}
}