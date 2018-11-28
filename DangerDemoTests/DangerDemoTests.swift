//  Copyright 2018 Roman Tysiachnik. All rights reserved.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.

import XCTest
import DangerDemo

class DangerDemoTests: XCTestCase {

    func testExample() {
        let dangerDemoExample = DangerDemoExample()
        dangerDemoExample.exampleMethod(with: "String")
        XCTAssertNotNil(dangerDemoExample.example)
    }
}
