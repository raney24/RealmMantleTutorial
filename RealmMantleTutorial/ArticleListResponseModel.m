//
//  ArticleList.m
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "ArticleListResponseModel.h"

@class ArticleModel;

@implementation ArticleListResponseModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"articles" : @"response.docs",
             @"status" : @"status"
             };
}

#pragma mark - JSON Transformer

+(NSValueTransformer *)articlesJSONtransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:ArticleModel.class];
}

@end
