//
//  APIManager.h
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "SessionManager.h"
#import "ArticleListRequestModel.h"
#import "ArticleListResponseModel.h"

@interface APIManager : SessionManager

-(NSURLSessionDataTask *)getArticlesWithRequestModel:(ArticleListRequestModel *) requestModel success:(void (^)(ArticleListResponseModel *responseModel))success failure:(void (^)(NSError *error))failure;

@end
