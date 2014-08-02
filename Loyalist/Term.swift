//  Copyright (c) 2014 Rob Rix. All rights reserved.

public enum Term<Constant, Variable> {
	typealias Recur = Term<Constant, Variable>
	case Coefficient(Box<Constant>)
	case Indeterminate(Box<Variable>)
	case Addition(Box<Recur>, Box<Recur>)
	case Multiplication(Box<Recur>, Box<Recur>)
}
