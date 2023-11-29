//
//  VIPER_SwiftUI_RxSwift_SampleUITestsLaunchTests.swift
//  VIPER-SwiftUI-RxSwift-SampleUITests
//
//  Created by home on 2023/11/29.
//

import XCTest

final class VIPER_SwiftUI_RxSwift_SampleUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
