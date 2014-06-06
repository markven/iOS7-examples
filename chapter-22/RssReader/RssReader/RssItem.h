//
//  RssItem.h
//  RssReader
//
//  Created by Simon on 29/12/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RssItem : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *link;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *pubDate;

@end
