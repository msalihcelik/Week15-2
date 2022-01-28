//
//  CalculatorTest.swift
//  Week15-2Tests
//
//  Created by Mehmet Salih ÇELİK on 28.01.2022.
//

import XCTest
@testable import Week15_2

class CalculatorTest: XCTestCase {

    func testMultiplyStuff() {
        let result = Calculator.multiplyNum(15, 5)
        XCTAssertNotNil(result)
        XCTAssertNotEqual(result, 23)
        XCTAssertLessThan(result, 100)
        XCTAssertGreaterThan(result, 12)
        XCTAssertEqual(result, 75)
    }

    func testDivideStuff() {
        let result = Calculator.divideNum(33, 1)
        XCTAssertNotNil(result)
        XCTAssertNotEqual(result, 32)
        XCTAssertLessThan(result, 44)
        XCTAssertGreaterThan(result, 12)
        XCTAssertEqual(result, 33)
    }

    func testAddStuff() {
        let result = Calculator.addNum(11, 1)
        XCTAssertNotNil(result)
        XCTAssertNotEqual(result, 10)
        XCTAssertLessThan(result, 44)
        XCTAssertGreaterThan(result, 11)
        XCTAssertEqual(result, 12)
    }

    func testSubStuff() {
        let result = Calculator.subNum(24, 0)
        XCTAssertNotNil(result)
        XCTAssertNotEqual(result, 0)
        XCTAssertLessThan(result, 25)
        XCTAssertGreaterThan(result, 0)
        XCTAssertEqual(result, 24)
    }
}
