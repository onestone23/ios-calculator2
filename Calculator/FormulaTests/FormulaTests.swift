//
//  FormulaTests.swift
//  FormulaTests
//
//  Created by 써니쿠키 on 2022/09/22.
//

import XCTest
@testable import Calculator

class FormulaTests: XCTestCase {
    var sut: Formula!

    override func setUpWithError() throws {
        try super .setUpWithError()
        sut = Formula()
    }

    override func tearDownWithError() throws {
        try super .tearDownWithError()
        sut.operands.clear()
        sut.operators.clear()
    }

    func test_result() throws {
        //give (111 - 110.99) / 10.0 * 3000  일 때
        sut.operands.enqueue(111)
        sut.operators.enqueue(.subtract)
        sut.operands.enqueue(110.99)
        
        sut.operators.enqueue(.divide)
        
        sut.operands.enqueue(10.0)
        sut.operators.enqueue(.multiply)
        sut.operands.enqueue(3000)
        

        
        //when result 메서드 작동 시
        let result = try sut.result()
        
        //then 값은 (111 - 110.99) / 10.0 * 3000 = 3
        XCTAssertEqual((111 - 110.99) / 10.0 * 3000, result)
        
        //의도한 fail test
        XCTAssertNotEqual(4, result)
    }
}
