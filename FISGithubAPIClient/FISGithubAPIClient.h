//
//  FISGithubAPIClient.h
//  ReviewSession 3-16-14
//
//  Created by Joe Burgess on 3/18/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISGithubAPIClient : NSObject

+ (void)getReposForSearchTerm:(NSString *)term Completion:(void(^)(NSArray *repoDictionaries))completionBlock;

@end
