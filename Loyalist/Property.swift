//  Copyright (c) 2014 Rob Rix. All rights reserved.

struct Property<T : PropertyClass> {
	let item: NSView?
	let attribute: NSLayoutAttribute
}

extension Property : NilLiteralConvertible {
	static func convertFromNilLiteral() -> Property {
		return Property(item: nil, attribute: .NotAnAttribute)
	}
}

protocol PropertyClass {}

struct Dimension : PropertyClass {}
struct Horizontal : PropertyClass {}
struct Vertical : PropertyClass {}
