//
//  datatest.swift
//  LadyToLadyTests
//
//  Created by Dionne Condor-Farrell on 19/05/2018.
//  Copyright © 2018 Dionne Condor-Farrell. All rights reserved.
//

import XCTest
@testable import LadyToLady

class datatest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

//    func testGetName(){
//        let provider = DataProvider()
//        let name = provider.getName()
//        XCTAssertEqual(name,"Sally")
//    }
//    
//    func testGetEmail(){
//        let provider = DataProvider()
//        let email = provider.getEmail()
//        XCTAssertEqual(email,"sally@mail.com")
//    }
//    
//    func testGetNotes(){
//        let provider = DataProvider()
//        let notes = provider.getNotes()
//        XCTAssertEqual(notes,"Some nice notes about me")
//        
//    }
    
    func testGetMyData(){
        let provider = DataProvider()
        let myData = provider.getMyData()
        let name = myData.name
        let email = myData.email
        let notes = myData.notes
        XCTAssertEqual(name,"Vanessa")
        XCTAssertEqual(email,"vanessa@mail.com")
        XCTAssertEqual(notes,"Twitter handle, LinkedIn, interesting facts, anything :)")
    
    }
        
        
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
