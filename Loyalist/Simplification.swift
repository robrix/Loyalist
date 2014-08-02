//  Copyright (c) 2014 Rob Rix. All rights reserved.

extension Term {
	func simplify() -> Recur {
		switch self.destructure() {
		case let .Addition(.Coefficient(x), .Coefficient(y)):
			return Recur(constant: x.value + y.value)
			
		case let .Addition(x, y):
			return Recur(addition: x.simplify(), y.simplify())
		
		case let .Multiplication(.Coefficient(x), .Coefficient(y)):
			return Recur(constant: x.value * y.value)
			
		case let .Multiplication(x, y):
			return Recur(multiplication: x.simplify(), y.simplify())
			
		default: return self
		}
	}
}

extension Equation {
	func simplify() -> Equation<Constant, Variable> {
		return Equation(y: y.simplify(), relation: relation, x: x.simplify())
	}
}
