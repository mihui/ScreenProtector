//
//  SampleTests.m
//  SampleTests
//
//  Created by Mihui on 5/18/16.
//
//

#import <XCTest/XCTest.h>
#import "ScreenProtector.h"

@interface SampleTests : XCTestCase
@property ScreenProtector *screenProtector;
@end

@implementation SampleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [self setScreenProtector:[[ScreenProtector alloc] init]];
    [[self screenProtector] pluginInitialize];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPluginInitialize {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertNotNil([ScreenProtector getInstance]);
    XCTAssertTrue([[ScreenProtector getInstance] isKindOfClass: [CDVPlugin class]]);
}

- (void)testOSVersion{
    XCTAssertTrue([ScreenProtector isOSVersion:8]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
