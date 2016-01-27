//
//  ArticleModel.h
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>

@interface ArticleModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *leadParagraph;
@property (nonatomic, copy) NSString *sectionName;
@property (nonatomic, copy) NSString *url;

@end
