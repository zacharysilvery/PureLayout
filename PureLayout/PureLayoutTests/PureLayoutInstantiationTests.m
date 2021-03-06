//
//  PureLayoutInstantiationTests.m
//  PureLayout Tests
//
//  Copyright (c) 2014 Tyler Fox
//  https://github.com/smileyborg/PureLayout
//

#import "PureLayoutTestBase.h"

@interface PureLayoutInstantiationTests : PureLayoutTestBase

@end

@implementation PureLayoutInstantiationTests

- (void)setUp
{
    [super setUp];

}

- (void)tearDown
{

    [super tearDown];
}

/**
 Test the +[newAutoLayoutView] method.
 */
- (void)testNewAutoLayoutView
{
    ALView *view = [ALView newAutoLayoutView];
    XCTAssertNotNil(view, @"+[ALView newAutoLayoutView] should not return nil.");
    XCTAssert([view isKindOfClass:[ALView class]], @"+[ALView newAutoLayoutView] should return an instance of ALView.");
    XCTAssert(view.translatesAutoresizingMaskIntoConstraints == NO, @"The view returned from +[ALView newAutoLayoutView] should not translate its autoresizing mask into constraints.");
    
    view = [ALLabel newAutoLayoutView];
    XCTAssertNotNil(view, @"+[ALLabel newAutoLayoutView] should not return nil.");
    XCTAssert([view isKindOfClass:[ALLabel class]], @"+[ALLabel newAutoLayoutView] should return an instance of ALLabel.");
    XCTAssert(view.translatesAutoresizingMaskIntoConstraints == NO, @"The view returned from +[ALLabel newAutoLayoutView] should not translate its autoresizing mask into constraints.");
    
    view = [ALImageView newAutoLayoutView];
    XCTAssertNotNil(view, @"+[ALImageView newAutoLayoutView] should not return nil.");
    XCTAssert([view isKindOfClass:[ALImageView class]], @"+[ALImageView newAutoLayoutView] should return an instance of ALImageView.");
    XCTAssert(view.translatesAutoresizingMaskIntoConstraints == NO, @"The view returned from +[ALImageView newAutoLayoutView] should not translate its autoresizing mask into constraints.");
}

/**
 Test the -[initForAutoLayout] method.
 */
- (void)testInitForAutoLayout
{
    ALView *view = [[ALView alloc] initForAutoLayout];
    XCTAssertNotNil(view, @"-[[ALView alloc] initForAutoLayout] should not return nil.");
    XCTAssert([view isKindOfClass:[ALView class]], @"-[[ALView alloc] initForAutoLayout] should return an instance of ALView.");
    XCTAssert(view.translatesAutoresizingMaskIntoConstraints == NO, @"The view returned from [[ALView alloc] initForAutoLayout] should not translate its autoresizing mask into constraints.");
    
    view = [[ALLabel alloc] initForAutoLayout];
    XCTAssertNotNil(view, @"-[[ALLabel alloc] initForAutoLayout] should not return nil.");
    XCTAssert([view isKindOfClass:[ALLabel class]], @"-[[ALLabel alloc] initForAutoLayout] should return an instance of ALLabel.");
    XCTAssert(view.translatesAutoresizingMaskIntoConstraints == NO, @"The view returned from [[ALLabel alloc] initForAutoLayout] should not translate its autoresizing mask into constraints.");
    
    view = [[ALImageView alloc] initForAutoLayout];
    XCTAssertNotNil(view, @"-[[ALImageView alloc] initForAutoLayout] should not return nil.");
    XCTAssert([view isKindOfClass:[ALImageView class]], @"-[[ALImageView alloc] initForAutoLayout] should return an instance of ALImageView.");
    XCTAssert(view.translatesAutoresizingMaskIntoConstraints == NO, @"The view returned from [[ALImageView alloc] initForAutoLayout] should not translate its autoresizing mask into constraints.");
}

@end
