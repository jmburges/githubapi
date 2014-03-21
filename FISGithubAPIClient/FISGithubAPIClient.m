//
//  FISGithubAPIClient.m
//  ReviewSession 3-16-14
//
//  Created by Joe Burgess on 3/18/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISGithubAPIClient.h"
#import <AFNetworking.h>

@implementation FISGithubAPIClient
+ (void)getReposForSearchTerm:(NSString *)term Completion:(void (^)(NSArray *))completionBlock
{
    NSString *githubURLString = [NSString stringWithFormat:@"https://api.github.com/search/repositories?q=%@+language:objective-c",term];

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];


    [manager GET:githubURLString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary *responseDictionary = responseObject;
        NSArray *repositoriesDictionaries = responseDictionary[@"items"];
        completionBlock(repositoriesDictionaries);
    } failure:nil];
}
@end
