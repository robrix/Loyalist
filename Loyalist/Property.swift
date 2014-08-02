//  Copyright (c) 2014 Rob Rix. All rights reserved.

struct Property {
	let item: NSView?
	let attribute: NSLayoutAttribute
}

extension Property : NilLiteralConvertible {
	static func convertFromNilLiteral() -> Property {
		return Property(item: nil, attribute: .NotAnAttribute)
	}
}
