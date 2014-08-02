//  Copyright (c) 2014 Rob Rix. All rights reserved.

extension NSView {
	typealias Horizontal = Term<CGFloat, Property<Loyalist.Horizontal>>
	typealias Vertical = Term<CGFloat, Property<Loyalist.Vertical>>
	typealias Dimension = Term<CGFloat, Property<Loyalist.Dimension>>
	
	func term<Class : PropertyClass>(attribute: NSLayoutAttribute) -> Term<CGFloat, Property<Class>> {
		return Term(variable: Property(item: self, attribute: attribute))
	}
	
	var left: Horizontal { return term(.Left) }
	var right: Horizontal { return term(.Right) }
	
	var top: Vertical { return term(.Top) }
	var bottom: Vertical { return term(.Bottom) }
	
	var leading: Horizontal { return term(.Leading) }
	var trailing: Horizontal { return term(.Trailing) }
	
	var width: Dimension { return term(.Width) }
	var height: Dimension { return term(.Height) }
	
	var centerX: Horizontal { return term(.CenterX) }
	var centerY: Vertical { return term(.CenterY) }
	
	var baseline: Vertical { return term(.Baseline) }
}
