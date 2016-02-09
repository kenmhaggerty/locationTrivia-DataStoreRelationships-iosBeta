//
//  FISAddTriviaTableViewController.m
//  locationTrivia-dataStore
//
//  Created by Ken M. Haggerty on 2/9/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaTableViewController.h"

@interface FISAddTriviaTableViewController ()
@property (nonatomic, strong) IBOutlet UITextField *textField;
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;
@end

@implementation FISAddTriviaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
    
    FISTrivium *trivium = [[FISTrivium alloc] initWithContent:self.textField.text likes:0];
    [self.location.trivia addObject:trivium];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancel:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
