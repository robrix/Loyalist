//  Copyright (c) 2014 Rob Rix. All rights reserved.

enum Term<Constant, Variable> {
	case Coefficient(Box<Constant>)
	case Indeterminate(Box<Variable>)
	case Addition
	case Multiplication
}
