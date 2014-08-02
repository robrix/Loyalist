//  Copyright (c) 2014 Rob Rix. All rights reserved.

extension Term {
	func simplify() -> Recur {
		switch self.destructure() {
		default: return self
		}
	}
}
