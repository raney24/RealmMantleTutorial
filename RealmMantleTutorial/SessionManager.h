//
//  SessionManager.h
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface SessionManager : AFHTTPSessionManager

+ (id)sharedManager;

@end
