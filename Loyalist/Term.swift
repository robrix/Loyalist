//  Copyright (c) 2014 Rob Rix. All rights reserved.

public enum Term<Constant : Ring, Variable> {
	typealias Recur = Term<Constant, Variable>
	case Coefficient(Box<Constant>)
	case Indeterminate(Box<Variable>)
	case Addition(Box<Recur>, Box<Recur>)
	case Multiplication(Box<Recur>, Box<Recur>)
	
	init(constant: Constant) {
		self = .Coefficient(Box(constant))
	}
	
	init(variable: Variable) {
		self = .Indeterminate(Box(variable))
	}
	
	init(addition x: Recur, _ y: Recur) {
		self = .Addition(Box(x), Box(y))
	}
	
	init(multiplication x: Recur, _ y: Recur) {
		self = .Multiplication(Box(x), Box(y))
	}
}
