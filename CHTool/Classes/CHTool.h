//
//  CHTool.h
//  CHTool
//
//  Created by 周灿华 on 2020/3/14.
//

#import <Foundation/Foundation.h>
#import "CHPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHTool : NSObject

+ (NSString *)getName:(CHPerson *)person;

@end

NS_ASSUME_NONNULL_END
