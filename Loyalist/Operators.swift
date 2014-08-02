//  Copyright (c) 2014 Rob Rix. All rights reserved.

func * <Constant : Ring, Variable> (x: Term<Constant, Variable>, y: Term<Constant, Variable>) -> Term<Constant, Variable> {
	return Term(multiplication: x, y)
}

func + <Constant : Ring, Variable> (x: Term<Constant, Variable>, y: Term<Constant, Variable>) -> Term<Constant, Variable> {
	return Term(addition: x, y)
}
