//
//  Contact.h
//  Jaxon Stevens Profile
//
//  Created by Jaxon Stevens on04/20/15.
//  Copyright (c) 2015 Jaxon Stevens. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <QuartzCore/QuartzCore.h>

@interface Contact : UIViewController<MFMailComposeViewControllerDelegate,UIAlertViewDelegate>

{
    
    IBOutlet UIAlertView *alertphone;
    
    
}


@property (strong, nonatomic) IBOutlet UIImageView *image;


- (IBAction)pulWeb:(id)sender;

- (IBAction)pulMaps:(id)sender;








- (IBAction)pullBack:(id)sender;


//Phone
- (IBAction)pullphone:(id)sender;



//Email
- (IBAction)showEmail:(id)sender;



@end
