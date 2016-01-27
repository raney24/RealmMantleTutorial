//
//  ArticleRealm.h
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "RLMObject.h"
#import "ArticleModel.h"

@interface ArticleRealm : RLMObject

@property NSString *leadParagraph;
@property NSString *sectionName;
@property NSString *url;

-(id)initWithMantleModel:(ArticleModel *)articleModel;

@end
