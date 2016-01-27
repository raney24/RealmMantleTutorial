//
//  ArticleListRequestModel.h
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"

@interface ArticleListRequestModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *query;
@property (nonatomic, copy) NSDate *articlesFromDate;
@property (nonatomic, copy) NSDate *articlesToDate;

+ (NSDateFormatter *)dateFormatter;

@end
