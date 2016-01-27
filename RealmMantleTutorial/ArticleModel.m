//
//  ArticleModel.m
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "ArticleModel.h"

@implementation ArticleModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"leadParagraph": @"lead_paragraph",
             @"sectionName": @"section_name",
             @"url": @"web_url"
             };
}

@end
