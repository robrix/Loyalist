//  Copyright (c) 2014 Rob Rix. All rights reserved.

enum Relation<Constant : Ring, Variable> {
	case Equal(Term<Constant, Variable>, Term<Constant, Variable>)
	case LessOrEqual(Term<Constant, Variable>, Term<Constant, Variable>)
	case GreaterOrEqual(Term<Constant, Variable>, Term<Constant, Variable>)
}
