//
//  SessionManager.m
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "SessionManager.h"

static NSString *const kBaseURL = @"http://api.nytimes.com";

@implementation SessionManager

-(id)init {
    self = [super initWithBaseURL:[NSURL URLWithString:kBaseURL]];
    if(!self)
        return nil;
    
    self.responseSerializer = [AFJSONResponseSerializer serializer];
    self.requestSerializer = [AFJSONRequestSerializer serializer];
    
    return self;
}

+(id)sharedManager {
    static SessionManager *_sessionManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sessionManager = [[self alloc] init];
    });
    
    return _sessionManager;
}

@end
