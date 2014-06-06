//
//  AddRecipeViewController.m
//  RecipeStore
//
//  Created by Simon on 12/1/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "AddRecipeViewController.h"

@interface AddRecipeViewController ()

@end

@implementation AddRecipeViewController

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

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

    if (self.recipe) {
        self.nameTextField.text = [self.recipe valueForKey:@"name"];
        self.imageTextField.text = [self.recipe valueForKey:@"image"];
        self.prepTimeTextField.text = [self.recipe valueForKey:@"prepTime"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    // Create a new managed object
    if (self.recipe) {
        [self.recipe setValue:self.nameTextField.text forKey:@"name"];
        [self.recipe setValue:self.imageTextField.text forKey:@"image"];
        [self.recipe setValue:self.prepTimeTextField.text forKey:@"prepTime"];
    
    } else {
        NSManagedObject *newRecipe = [NSEntityDescription insertNewObjectForEntityForName:@"Recipe" inManagedObjectContext:context];
        [newRecipe setValue:self.nameTextField.text forKey:@"name"];
        [newRecipe setValue:self.imageTextField.text forKey:@"image"];
        [newRecipe setValue:self.prepTimeTextField.text forKey:@"prepTime"];
    }
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
