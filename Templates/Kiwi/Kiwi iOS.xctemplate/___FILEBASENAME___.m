//
//  ___PROJECTNAME___ - ___FILENAME___
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Created by: ___FULLUSERNAME___
//

#import "Kiwi.h"

SPEC_BEGIN(___FILEBASENAMEASIDENTIFIER___)

describe(@"Example", ^{
    __block NSString *string;
    context(@"New", ^{
        beforeEach(^{
            string = @"example";
        });
        
        context(@"append 'exsample'", ^{
            beforeEach(^{
                string = [string stringByAppendingString:@"example"];
            });
            
            it(@"length = 14", ^{
                [[theValue([string length]) should] equal:theValue(15)];
            });
        });
    });
});

SPEC_END
