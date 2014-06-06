//
//  RecipeViewController.h
//  RecipePhoto
//
//  Created by Simon on 27/12/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
- (IBAction)close:(id)sender;


@property (weak, nonatomic) NSString *recipeImageName;

@end
