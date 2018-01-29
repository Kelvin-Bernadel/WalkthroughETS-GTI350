//
//  ViewController.m
//  ExempleUI
//
//  Created by Bernadel, Kelvin on 2018-01-29.
//  Copyright © 2018 KelvinBernadel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)AlloBouton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *nomAChanger;
@property (weak, nonatomic) IBOutlet UITextField *champsPrenom;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)AlloBouton:(UIButton *)sender {
    _nomAChanger.text = self.champsPrenom.text;
    [self.champsPrenom resignFirstResponder];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Titre de mon alerte" message:@"Ceci est une alerte" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}

@end
