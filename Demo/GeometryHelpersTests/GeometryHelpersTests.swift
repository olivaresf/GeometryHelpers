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
    
    func testPointWithFunction() {
        // (0,0)
        let originPoint = CGPoint(x: 0, y: 0)
        
        // If `.with(x: 10)` is working correctly, then
        // originPointToTheRight = (0 + 10, 0)
        // originPointToTheRight = (10, 0)
        let originPointToTheRight = originPoint.with(x: 10)
        
        // XCTAssert is a function provided to us by Apple that allows us to confirm something.
        XCTAssert(originPointToTheRight.x == 10)
        XCTAssert(originPointToTheRight.y == 0)
    }
}
