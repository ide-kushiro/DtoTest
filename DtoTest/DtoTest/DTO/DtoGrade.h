//
//  DtoGrade.h
//  DtoTest
//
//  Created by std on 2014/01/17.
//  Copyright (c) 2014年 std. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DtoGrade : NSObject

@property (strong, nonatomic) NSString* model;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSNumber* price;

- (NSArray *)getKeys;

@end
