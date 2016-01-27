//
//  ArticleRealm.m
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "ArticleRealm.h"

@implementation ArticleRealm

-(id)initWithMantleModel:(ArticleModel *)articleModel {
    self = [super init];
    if(!self)
        return nil;
    
    self.leadParagraph = articleModel.leadParagraph;
    self.sectionName = articleModel.sectionName;
    self.url = articleModel.url;
    
    return self;
}

@end
