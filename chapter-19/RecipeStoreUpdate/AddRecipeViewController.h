//
//  AddRecipeViewController.h
//  RecipeStore
//
//  Created by Simon on 12/1/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddRecipeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageTextField;
@property (weak, nonatomic) IBOutlet UITextField *prepTimeTextField;
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@property (strong) NSManagedObject *recipe;
@end
