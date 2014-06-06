//
//  RecipeCollectionViewController.h
//  RecipePhoto
//
//  Created by Simon on 26/12/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeCollectionViewController : UICollectionViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *shareButton;
- (IBAction)shareButtonTapped:(id)sender;

@end
