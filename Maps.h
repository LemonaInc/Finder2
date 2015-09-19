//
//  Maps.h
//  Jaxon Stevens Profile 
//
//  Created by Jaxon Stevens on04/20/15.
//  Copyright (c) 2015 Jaxon Stevens. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface Maps : UIViewController<UIAlertViewDelegate,MKMapViewDelegate>{
    CLLocationCoordinate2D selectedCoords;
}



@property (weak, nonatomic) IBOutlet MKMapView *myMapView;


- (IBAction)findmylocation:(id)sender;



- (IBAction)pulBackContacts:(id)sender;

@end
