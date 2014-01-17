//
//  DtoGrade.m
//  DtoTest
//
//  Created by std on 2014/01/17.
//  Copyright (c) 2014年 std. All rights reserved.
//

#import "DtoGrade.h"

@implementation DtoGrade


- (NSArray *)getKeys
{
	return @[@"model", @"name", @"price"];
}

#pragma - mark オーバーロード

- (NSString *)debugDescription
{
	NSString* ret = [NSString stringWithFormat:@"\tmodel=%@,\n\tname=%@,\n\tprice=%@\n", self.model, self.name, self.price];
	
	return ret;
}

@end
