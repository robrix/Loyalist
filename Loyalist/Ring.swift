//  Copyright (c) 2014 Rob Rix. All rights reserved.

public protocol Ring {
	func + (Self, Self) -> Self
	func * (Self, Self) -> Self
}
