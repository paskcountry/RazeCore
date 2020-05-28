//
//  RazorNetworkingTest.swift
//  RazeCoreTests
//
//  Created by Alberto P. Gerteksa on 28/05/2020.
//

import XCTest
@testable import RazeCore

final class RazorNetworkingTest: XCTestCase {

    
    func testLoadDataCall() {
        let manager = RazeCore.Networking.Manager()
        let expectation = XCTestExpectation(description: "Called for data")
        guard let url = URL(string: "https://raywenderlich.com") else {
            return XCTFail("Could not create URL Property")
        }
        
        manager.loadData(from:url) { result in
            expectation.fulfill()
            switch result {
                case .success(let returnedData):
                    XCTAssertNotNil(returnedData, "Response data is not nil")
                
                case .failure(let error):
                    XCTFail(error?.localizedDescription ?? "error forming error result")
            }
        }
        wait(for:[expectation], timeout: 5)
    }
    
    static var allTests = [("testExample", testLoadDataCall)]
}
