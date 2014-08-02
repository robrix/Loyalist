//  Copyright (c) 2014 Rob Rix. All rights reserved.

extension NSView {
	typealias Term = Loyalist.Term<CGFloat, Property>
	
	func term(attribute: NSLayoutAttribute) -> Term {
		return Term(variable: Property(item: self, attribute: attribute))
	}
	
	var left: Term { return term(.Left) }
	var right: Term { return term(.Right) }
	
	var top: Term { return term(.Top) }
	var bottom: Term { return term(.Bottom) }
	
	var leading: Term { return term(.Leading) }
	var trailing: Term { return term(.Trailing) }
	
	var width: Term { return term(.Width) }
	var height: Term { return term(.Height) }
	
	var centerX: Term { return term(.CenterX) }
	var centerY: Term { return term(.CenterY) }
	
	var baseline: Term { return term(.Baseline) }
}
