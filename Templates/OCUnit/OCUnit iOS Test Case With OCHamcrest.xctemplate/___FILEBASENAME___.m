//
//  ___PROJECTNAME___ - ___FILENAME___
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Created by: ___FULLUSERNAME___
//

#import <SenTestingKit/SenTestingKit.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

@interface ___FILEBASENAMEASIDENTIFIER___ : SenTestCase
{
    
}
@end

@implementation ___FILEBASENAMEASIDENTIFIER___


- (void)setUp {
    // Run before each test method
}

- (void)tearDown {
    // Run after each test method
}

- (void)testExample
{
    assertThat(@"a", @"b");
}

@end
