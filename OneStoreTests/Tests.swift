import UIKit
import XCTest
import OneStore

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRemoveAll() {
        
        let stack = Stack(userDefaults: UserDefaults.standard, namespace: "me")
        
        let defaults_a = OneStore<String>("string")
        let defaults_b = OneStore<String>("string", stack: stack)
        
        let object = "hahahahaha"
        defaults_a.value = object
        defaults_b.value = object
        
        XCTAssert(defaults_a.value != nil)
        XCTAssert(defaults_b.value != nil)
        
        defaults_a.stack.removeAllObjectsOnNamespace()
        XCTAssert(defaults_a.value == nil)
        XCTAssert(defaults_b.value != nil)
    }
    
    func testString() {
        
        let defaults = OneStore<String>("string")
        
        let object = "hahahahaha"
        defaults.value = object
        print(defaults.value, object)
        XCTAssert(defaults.value != nil)
        XCTAssertEqual(defaults.value, object)
    }
    
    func testInt() {
        
        let defaults = OneStore<Int>("int")
        let object = 1080
        defaults.value = object
        print(defaults.value, object)
        XCTAssert(defaults.value != nil)
        XCTAssertEqual(defaults.value, object)
    }
    
    func testInt32() {
        
        let defaults = OneStore<Int32>("int32")
        let object: Int32 = 1080
        defaults.value = object
        print(defaults.value, object)
        XCTAssert(defaults.value != nil)
        XCTAssertEqual(defaults.value, object)
    }
    
    func testInt64() {
        
        let defaults = OneStore<Int64>("int64")
        let object: Int64 = 1080
        defaults.value = object
        print(defaults.value, object)
        XCTAssert(defaults.value != nil)
        XCTAssertEqual(defaults.value, object)
    }
    
    func testBool() {
        
        let defaults = OneStore<Bool>("bool")
        let object = true
        defaults.value = object
        print(defaults.value, object)
        XCTAssert(defaults.value != nil)
        XCTAssertEqual(defaults.value, object)
    }
    
    func testDouble() {
        
        let defaults = OneStore<Double>("double")
        let object: Double = 1.2345678923456789
        defaults.value = object
        print(defaults.value, object)
        XCTAssert(defaults.value != nil)
        XCTAssertEqual(defaults.value, object)
    }
    
    func testFloat() {
        
        let defaults = OneStore<Float>("float")
        let object: Float = 1.2345678923456789
        defaults.value = object
        print(defaults.value, object)
        XCTAssert(defaults.value != nil)
        XCTAssertEqual(defaults.value, object)
    }
}