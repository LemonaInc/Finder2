//
//  Contact.m
//  Jaxon Stevens Profile
//
//  Created by Jaxon Stevens on04/20/15.
//  Copyright (c) 2015 Jaxon Stevens. All rights reserved.
//

#import "Contact.h"
#import "Web.h"
#import "Maps.h"

@interface Contact ()

@end

@implementation Contact
@synthesize image;


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
    
}



- (void)animate{
    
    //parameters for animation
    float duration = 1.50;
    float angle = 360.00;
    int count = 50;
    BOOL easeIn = NO;
    BOOL easeOut = NO;
    BOOL reverse = NO;
    
    
    CABasicAnimation *myRotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    
    myRotation.fromValue = [NSNumber numberWithFloat:0];
    
    myRotation.toValue = [NSNumber numberWithFloat:angle * M_PI / 180];
    
    myRotation.duration = duration;
    
    myRotation.fillMode = kCAFillModeForwards;
    
    myRotation.removedOnCompletion = NO;
    
    myRotation.repeatCount = count;
    
    myRotation.autoreverses = reverse;
    
    if (easeIn == YES & easeOut == YES) {
        myRotation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    }else if (easeIn == YES & easeOut == NO) {
        myRotation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    }else if (easeIn == NO & easeOut == YES) {
        myRotation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    }else {
        myRotation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    }
    
    [[self.image layer] addAnimation:myRotation forKey:@"transform.rotation"];
}

- (void)viewDidAppear:(BOOL)animated{
    
    [self performSelector:@selector(animate) withObject:nil afterDelay:1.0];
}





//Phone


- (IBAction)pullphone:(id)sender {
    alertphone = [[UIAlertView alloc] initWithTitle:@"+4034792554" message:@"" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
    [alertphone show];
    
}


- (void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    
    if (buttonIndex == 1){
        
        
        [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"tel:+4034792554"]];
        
    }
    
    
    
}
//FinPhone


//Email
- (IBAction)showEmail:(id)sender { // Email Subject
    NSString *emailTitle = @"";
    // Email Content
    NSString *messageBody = @"";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"software@lemonainc.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Your Message was cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Your message was sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

//FinEmail





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (IBAction)pullBack:(id)sender {[self dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)pulWeb:(id)sender {
    
    Web *vcWeb = [[Web alloc]init];
    vcWeb.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vcWeb animated:YES completion:nil];
    
}


- (IBAction)pulMaps:(id)sender {
    Maps *vcMaps = [[Maps alloc]init];
    vcMaps.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vcMaps animated:YES completion:nil];
}




@end