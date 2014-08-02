//  Copyright (c) 2014 Rob Rix. All rights reserved.

struct Coefficient {
	let value: Double
}

extension Coefficient : IntegerLiteralConvertible {
	static func convertFromIntegerLiteral(value: IntegerLiteralType) -> Coefficient {
		return Coefficient(value: Double(value))
	}
}

extension Coefficient : FloatLiteralConvertible {
	static func convertFromFloatLiteral(value: Double) -> Coefficient {
		return Coefficient(value: value)
	}
}
