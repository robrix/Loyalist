//  Copyright (c) 2014 Rob Rix. All rights reserved.

struct Equation<Constant : Ring, Variable> {
	let y: Term<Constant, Variable>
	let relation: Relation
	let x: Term<Constant, Variable>
}
