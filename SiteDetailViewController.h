
//
//  SiteDetailViewController.h
//  findr
//
//  Created by Rajkumar Sharma on 05/08/14.
//  Copyright (c) 2014 Jimmy. All rights reserved.
//

#import "ParentViewController.h"
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


@interface SiteDetailViewController : ParentViewController


-(IBAction) pushButtonResturant1;

- (IBAction) PushButtonITAReservation;
- (IBAction) PushButtonBVVReservation;
- (IBAction) PushButtonVBCWEBSITE;
-(IBAction) PushButtonFacebookITA;
-(IBAction) PushButtonFacebookBAVV;
-(IBAction) PushButtonFacebookLEM;
-(IBAction) PushButtonFacebookHOT;
-(IBAction) PushButtonLEMTwitter;
-(IBAction) PushButtonLEMGoogle;
-(IBAction) PushButtonLEMApps;
- (IBAction)PulMaps:(id)sender;
- (IBAction)Pulweb:(id)sender;





@end