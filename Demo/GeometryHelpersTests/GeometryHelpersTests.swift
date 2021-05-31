//
//  GeometryHelpersTests.swift
//  GeometryHelpersTests
//
//  Created by Fernando Olivares on 5/31/21.
//

import XCTest
@testable import GeometryHelpers

class GeometryHelpersTests: XCTestCase {
    
    func testMirroredPoint() {
        let point = CGPoint(x: -10, y: -10)
        let mirroredPoint = point.mirrored
        
        XCTAssert(point.x == (mirroredPoint.x * -1))
        XCTAssert(point.y == mirroredPoint.y)
    }
    
    func testSlopedPoint() {
        let beginningPoint = CGPoint(x: 0, y: 0)
        let endPoint = CGPoint(x: 1, y: 1)
        
        // Slope should be 1
        let slope = beginningPoint.slope(to: endPoint)
        XCTAssert(slope == 1)
    }
}
