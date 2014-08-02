//  Copyright (c) 2014 Rob Rix. All rights reserved.

extension Relation {
	var layoutRelation: NSLayoutRelation {
		switch self {
		case .LessOrEqual: return .LessThanOrEqual
		case .Equal: return .Equal
		case .GreaterOrEqual: return .GreaterThanOrEqual
		}
	}
}

struct NormalizedEquation<Class : PropertyClass> {
	let y: Property<Class>
	let relation: Relation
	let m: CGFloat
	let x: Property<Class>
	let b: CGFloat
}

extension Equation {
	func normalize() -> Equation<Constant, Variable> {
		switch y.destructure() {
		case let .Coefficient(b):
			return Equation(y: Term(constant: Constant.additiveIdentity), relation: relation, x: x + Term(constant: -b.value))
			
		default: break
		}
		return self
	}
}
