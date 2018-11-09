//
//  SampleAppJenkinsIOSUITests.m
//  SampleAppJenkinsIOSUITests
//
//  Created by Jenkins on 05/11/18.
//  Copyright © 2018 Ravali. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SampleAppJenkinsIOSUITests : XCTestCase
{
    XCUIApplication *app;
}

@end

@implementation SampleAppJenkinsIOSUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    app = [[XCUIApplication alloc] init];
    [app launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    XCUIElement *button = app.buttons[@"Tap"];
    XCTAssert(button.exists);
}

@end
