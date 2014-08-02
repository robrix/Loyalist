//  Copyright (c) 2014 Rob Rix. All rights reserved.

extension Term {
	func simplify() -> Recur {
		switch self.destructure() {
		case let .Addition(.Coefficient(x), .Coefficient(y)):
			return Recur(constant: x.value + y.value)
		
		case let .Multiplication(.Coefficient(x), .Coefficient(y)):
			return Recur(constant: x.value * y.value)
			
		default: return self
		}
	}
}
