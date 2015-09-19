//
//  SiteDetailViewController.m
//  findr
//
//  Created by Jaxon Stevens on 05/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import "SiteDetailViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Web.h"
#import "Maps.h"

@interface SiteDetailViewController()
@property (nonatomic, copy) NSString *phoneNumber;
@property (nonatomic, weak) IBOutlet UIScrollView *scrollContent;
@end


@implementation SiteDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
        self.navigationController.navigationBar.hidden = YES;
      [_scrollContent setContentOffset:CGPointMake(0, 0) animated:YES];
    
}

-(IBAction)backBtnTapped:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
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











-(IBAction) pushButtonResturant1 {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
    
}


-(IBAction) PushButtonLemona {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.lemonainc.com"]];
    
}


-(IBAction) PushButtonITAReservation {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.opentable.com/italian-farmhouse-restaurant-and-bar-reservations-bragg-creek"]];
    
}

-(IBAction) PushButtonBVVReservation {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.opentable.com/the-bavarian-inn-restaurant?DateTime=2014-12-07%2019%3A00&Covers=2&OnlyOffers=false&RestaurantIDs=38056&MetroId=77"]];
    
    

}

-(IBAction) PushButtonBuy {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
    
}
-(IBAction) pushButtonResturant2 {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
    
}

-(IBAction) pushButtonResturant3 {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}

-(IBAction) CallResturant {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@""]];
}

-(IBAction) PushButtonFacebook {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}


-(IBAction) PushButtonFacebookITA {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}

-(IBAction) PushButtonFacebookLEM {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}

-(IBAction) PushButtonFacebookHOT {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}

-(IBAction) PushButtonVBCWEBSITE {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}

-(IBAction) PushButtonLEMApps {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}

-(IBAction) PushButtonLEMGoogle {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}

-(IBAction) PushButtonLEMTwitter{
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
}


-(IBAction) PushButtonFacebookBAVV {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
    
}

    -(IBAction) PushButtonBAVV {self.phoneNumber = @"4039493611";
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", self.phoneNumber]]];
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Call 4039493611" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES",nil];
        [alert show];
        
    }


-(IBAction) PushButtonITA {self.phoneNumber = @"4039492750";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", self.phoneNumber]]];
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Call 4039492750" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES",nil];
    [alert show];
    
}


-(IBAction) PushButtonLEM {self.phoneNumber = @"4034792554";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", self.phoneNumber]]];
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Call 403472554" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES",nil];
    [alert show];
    
    
    
}


@end
