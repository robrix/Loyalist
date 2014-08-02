//  Copyright (c) 2014 Rob Rix. All rights reserved.

public enum Term<Constant, Variable> {
	typealias Recur = Box<Term<Constant, Variable>>
	case Coefficient(Box<Constant>)
	case Indeterminate(Box<Variable>)
	case Addition(Recur, Recur)
	case Multiplication(Recur, Recur)
}
