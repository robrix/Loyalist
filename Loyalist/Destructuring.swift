//  Copyright (c) 2014 Rob Rix. All rights reserved.

extension Term {
	func destructure() -> DestructuredTerm<Constant, Variable> {
		switch self {
		case let .Coefficient(x): return .Coefficient(x)
		case let .Indeterminate(x): return .Indeterminate(x)
		case let .Addition(x, y): return .Addition(x.value, y.value)
		case let .Multiplication(x, y): return .Multiplication(x.value, y.value)
		}
	}
}

enum DestructuredTerm<Constant, Variable> {
	case Coefficient(Box<Constant>)
	case Indeterminate(Box<Variable>)
	case Addition(Term<Constant, Variable>, Term<Constant, Variable>)
	case Multiplication(Term<Constant, Variable>, Term<Constant, Variable>)
}
