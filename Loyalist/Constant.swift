//  Copyright (c) 2014 Rob Rix. All rights reserved.

struct Constant {
	let value: Double
}

extension Constant : IntegerLiteralConvertible {
	static func convertFromIntegerLiteral(value: IntegerLiteralType) -> Constant {
		return Constant(value: Double(value))
	}
}

extension Constant : FloatLiteralConvertible {
	static func convertFromFloatLiteral(value: Double) -> Constant {
		return Constant(value: value)
	}
}
