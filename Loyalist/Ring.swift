//  Copyright (c) 2014 Rob Rix. All rights reserved.

public protocol Ring {
	class var additiveIdentity: Self { get }
	func + (Self, Self) -> Self
	
	class var multiplicativeIdentity: Self { get }
	func * (Self, Self) -> Self
}
