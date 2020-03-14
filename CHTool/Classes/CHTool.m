//
//  CHTool.m
//  CHTool
//
//  Created by 周灿华 on 2020/3/14.
//

#import "CHTool.h"

@implementation CHTool

+ (NSString *)getName:(CHPerson *)person {
    NSString *fmt = [NSString stringWithFormat:@"名字 : %@,地址 : %@",person.name,person.address];
    NSLog(@"%@",fmt);

    return fmt;
}


@end
