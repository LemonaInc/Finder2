//
//  Locat.m
//  Jaxon Stevens Profile 
//
//  Created by Jaxon Stevens on04/20/15.
//  Copyright (c) 2015 Jaxon Stevens. All rights reserved.
//

#import "Locat.h"
#import <MapKit/MapKit.h>
#import "Annotation.h"


@interface Locat ()

@end

//Mappa

//Coordinates
#define LOC1_LATITUDE 50.952661;
#define LOC1_LONGITUDE -114.564741;


//Span
#define THE_SPAN 0.01f;
//FinMap



@implementation Locat

@synthesize myMapView;



//MAP



//------------------------------------------
// App Life Cycle
//------------------------------------------
#pragma mark - App Life Cycle



-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self goToFrance];
    [self addAnnotations];
}

//------------------------------------------
// Private Methods
//------------------------------------------
#pragma mark - Private Methods

// Navigates
-(void)goToFrance
{
    
    MKCoordinateRegion newRegion;
    
    newRegion.center.latitude = LOC1_LATITUDE;
    newRegion.center.longitude = LOC1_LONGITUDE;
    newRegion.span.latitudeDelta = THE_SPAN;
    newRegion.span.longitudeDelta = THE_SPAN;
    
    [self.myMapView setRegion:newRegion animated:YES];
    
}

// Adds all 3 annotations to the Map
-(void)addAnnotations
{
    //Annotation
    NSMutableArray * locations = [[NSMutableArray alloc] init];
    CLLocationCoordinate2D location;
    Annotation * myAnn;
    
    
    
    //Annotataion
    myAnn = [[Annotation alloc] init];
    location.latitude = LOC1_LATITUDE;
    location.longitude = LOC1_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"";
    myAnn.subtitle = @"";
    [locations addObject:myAnn];
    
    
    
    
    
    
    
    [self.myMapView addAnnotations: locations];
    
}

//FinMap




//Button Map










- (IBAction)bottoneMappa:(id)sender{
    
    
    
    
    UIBarButtonItem *boton = (UIBarButtonItem *) sender;
    switch (boton.tag) {
        case 2:
            [myMapView setMapType:MKMapTypeSatellite];
            break;
        case 1:
            [myMapView setMapType:MKMapTypeStandard];
            break;
            
            
            
        default:
            break;
    }
    
    
}

//FinButtonMap

//GPS

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
    Annotation *myAnnotation = (Annotation *)view.annotation;
    CLLocationCoordinate2D currentUserCoords = CLLocationCoordinate2DMake(myMapView.userLocation.coordinate.latitude, myMapView.userLocation.coordinate.longitude);
    CLLocationCoordinate2D coord = CLLocationCoordinate2DMake(myAnnotation.coordinate.latitude, myAnnotation.coordinate.longitude);
    
    if ((CLLocationCoordinate2DIsValid(coord))&&(CLLocationCoordinate2DIsValid(currentUserCoords))) {
        Annotation *ann = (Annotation *)view.annotation;
        selectedCoords = ann.coordinate;
        
        NSString *strTitle = @"FitCity";
        NSString *strMess = @" Open this location in maps?";
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:strTitle
                                                        message:strMess
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
        [alert show];
        
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sorry"
                                                        message:@"Location not found"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    MKPinAnnotationView *pinView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"pinView"];
    if (!pinView) {
        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pinView"];
        pinView.pinColor = MKPinAnnotationColorRed;
        pinView.animatesDrop = YES;
        pinView.canShowCallout = YES;
        
        UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        pinView.rightCalloutAccessoryView = rightButton;
    } else {
        pinView.annotation = annotation;
    }
    return pinView;
}




//FIN GPS


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
    
    
    //Map
    myMapView.delegate = self;
    //Map
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        CLLocationCoordinate2D coordUser = CLLocationCoordinate2DMake(myMapView.userLocation.coordinate.latitude,
                                                                      myMapView.userLocation.coordinate.longitude);
        
        if ((CLLocationCoordinate2DIsValid(coordUser))&&(CLLocationCoordinate2DIsValid(selectedCoords))) {
            NSString *daddr = [NSString stringWithFormat:@"%f,%f", coordUser.latitude,
                               coordUser.longitude];
            NSString *saddr = [NSString stringWithFormat:@"%f,%f", selectedCoords.latitude, selectedCoords.longitude];
            NSString *mapString = [NSString stringWithFormat:@"http://maps.apple.com/?daddr=%@&saddr=%@", daddr, saddr];
            NSURL *urlMapScheme = [NSURL URLWithString:mapString];
            
            if ([[UIApplication sharedApplication] canOpenURL:urlMapScheme])
                [[UIApplication sharedApplication] openURL:urlMapScheme];
        }
        else if (CLLocationCoordinate2DIsValid(selectedCoords)) {
            NSString *saddr = [NSString stringWithFormat:@"%f,%f", selectedCoords.latitude, selectedCoords.longitude];
            NSString *mapString = [NSString stringWithFormat:@"http://maps.apple.com/?saddr=%@", saddr];
            NSURL *urlMapScheme = [NSURL URLWithString:mapString];
            
            if ([[UIApplication sharedApplication] canOpenURL:urlMapScheme])
                [[UIApplication sharedApplication] openURL:urlMapScheme];
        }
    }
}







- (IBAction)findmylocation:(id)sender {
    
    myMapView.showsUserLocation = YES;
    [myMapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    
}




- (IBAction)pulBackContacts:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end

