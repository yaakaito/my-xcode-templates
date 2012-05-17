//
//  ___PROJECTNAME___ - ___FILENAME___
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Created by: ___FULLUSERNAME___
//

#import <GHUnitIOS/GHUnit.h>
#import <OCMock/OCMock.h>
#import "NLTHTTPStubServer.h"

@interface ___FILEBASENAMEASIDENTIFIER___ : GHTestCase
{
    NLTHTTPStubServer *server;
}
@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (BOOL)shouldRunOnMainThread {
    // By default NO, but if you have a UI test or test dependent on running on the main thread return YES
    return NO;
}

- (void)setUpClass {
    // Run at start of all tests in the class
    [NLTHTTPStubServer globalSettings].port = 12345;
    
    server = [[NLTHTTPStubServer stubServer] retain];
    [server startServer];
}

- (void)tearDownClass {
    // Run at end of all tests in the class
    [server stopServer];
    [server release];
}

- (void)setUp {
    // Run before each test method
    [server clear];
}

- (void)tearDown {
    // Run after each test method
    if(![server isStubEmpty]) {
        GHFail(@"stubs not empty");
    }
}

- (void)testExample
{
    GHFail(@"Unit tests are not implemented yet in ___FILEBASENAMEASIDENTIFIER___");
}

// simple test to ensure building, linking, 
// and running test case works in the project
- (void)testOCMockPass {
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"mocktest", returnValue, 
                         @"Should have returned the expected string.");
}

- (void)testOCMockFail {
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"thisIsTheWrongValueToCheck", 
                         returnValue, @"Should have returned the expected string.");
}

@end
