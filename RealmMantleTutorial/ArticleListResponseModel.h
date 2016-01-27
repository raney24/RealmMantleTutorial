//
//  ArticleList.h
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>
#import "ArticleModel.h"

@interface ArticleListResponseModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSArray *articles;
@property (nonatomic, copy) NSString *status;

@end
