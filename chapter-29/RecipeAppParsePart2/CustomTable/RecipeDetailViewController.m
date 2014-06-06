//
//  RecipeDetailViewController.m
//  RecipeApp
//
//  Created by Simon on 23/12/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    PFFile *thumbnail = [self.recipe objectForKey:@"image"];
    self.recipeImageView.image = [UIImage imageNamed:@"placeholder.jpg"];
    self.recipeImageView.file = thumbnail;
    [self.recipeImageView loadInBackground];
    
	self.title = [self.recipe objectForKey:@"name"];
    self.prepTimeLabel.text = [self.recipe objectForKey:@"prepTime"];
    NSArray *ingredients = [self.recipe objectForKey:@"ingredients"];
    
    NSMutableString *ingredientsText = [NSMutableString string];
    for (NSString* ingredient in ingredients) {
        [ingredientsText appendFormat:@"%@\n", ingredient];
    }
    self.ingredientsTextView.text = ingredientsText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
