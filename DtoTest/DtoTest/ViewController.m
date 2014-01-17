//
//  ViewController.m
//  DtoTest
//
//  Created by std on 2014/01/17.
//  Copyright (c) 2014年 std. All rights reserved.
//

#import "ViewController.h"
#import "DtoGrade.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize memoView;

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	// 結果出力用
	NSMutableString* outputText = [NSMutableString string];
	
	// 配列データ取得
	NSArray* gradeList = self.gradeData;
	// 配列データのダンプ
	[outputText appendString:@"\n配列データのダンプ出力\n"];
	[outputText appendString:[gradeList debugDescription]];

	[outputText appendString:@"\n===========================\n"];
	[outputText appendString:@"\nDTOオブジェクトのダンプ出力\n"];
	// 配列毎にDTOに変換
	DtoGrade* dtoGrade = [[DtoGrade alloc] init];
	for (NSDictionary* dat in gradeList) {
    [dtoGrade setValuesForKeysWithDictionary:dat];
		[outputText appendString:[dtoGrade debugDescription]];
		[outputText appendString:@"\n"];
	}
	
	// 結果を出力
	[memoView setText:outputText];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma - mark 追加メソッド

- (NSArray*) gradeData
{
	NSMutableArray* list = [NSMutableArray array];

	// 配列に追加するデータ作成
	NSDictionary* grade1 = @{@"price": @1, @"model": @"Model1", @"name": @"Name1"};
	NSDictionary* grade2 = @{@"price": @2, @"model": @"Model2", @"name": @"Name2"};
	NSDictionary* grade3 = @{@"price": @3, @"model": @"Model3", @"name": @"Name3"};
	
	// 配列に追加
	[list addObject:grade1];
	[list addObject:grade2];
	[list addObject:grade3];
	
	return [list copy];
}

@end
