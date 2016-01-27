//
//  APIManager.m
//  RealmMantleTutorial
//
//  Created by Kyle Raney on 1/26/16.
//  Copyright © 2016 Kyle Raney. All rights reserved.
//

#import "APIManager.h"
#import "Mantle.h"

static NSString *const kArticlesListPath = @"/svc/search/v2/articlesearch.json";
static NSString *const kApiKey = @"4c9480f385650dbbfc59dc34c098212f:1:74149987";

@implementation APIManager

- (NSURLSessionDataTask *)getArticlesWithRequestModel:(ArticleListRequestModel *)requestModel
                                              success:(void (^)(ArticleListResponseModel *responseModel))success
                                              failure:(void (^)(NSError *error))failure {
    
    NSDictionary *parameters = [MTLJSONAdapter JSONDictionaryFromModel:requestModel error:nil];
    NSMutableDictionary *parametersWithKey = [[NSMutableDictionary alloc] initWithDictionary:parameters];
    [parametersWithKey setObject:kApiKey forKey:@"api-key"];
    
    return [self GET:kArticlesListPath
          parameters:parametersWithKey
             success:^(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary *responseDictionary = (NSDictionary *)responseObject;
        
        NSError *error;
        ArticleListResponseModel *list = [MTLJSONAdapter modelOfClass:ArticleListResponseModel.class
                                                   fromJSONDictionary:responseDictionary error:&error];
        success(list);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        failure(error);
    }];
    
}

@end
