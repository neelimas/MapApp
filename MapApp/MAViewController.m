//
//  MAViewController.m
//  MapApp
//
//  Created by user on 11/14/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "MAViewController.h"

@interface MAViewController ()

@end

@implementation MAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.mapView setShowsUserLocation:YES];
    CLLocationCoordinate2D annotationCoord;
    annotationCoord.latitude = 47.640071;
    annotationCoord.longitude = -122.129598;
    
    MKPointAnnotation *ap = [[MKPointAnnotation alloc] init];
    ap.coordinate = annotationCoord;
    ap.title = @"Microsoft";
    ap.subtitle = @"MS Headquaters";
    [self.mapView addAnnotation:ap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)zoom2Action:(id)sender {
  MKUserLocation *userLocation=   self.mapView.userLocation;
 MKCoordinateRegion region =    MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 50, 50);
    [self.mapView setRegion:region animated:NO ];
}

- (IBAction)typeAction:(id)sender {
    if(self.mapView.mapType == MKMapTypeStandard)
        self.mapView.mapType = MKMapTypeSatellite;
    else
        self.mapView.mapType = MKMapTypeStandard;
}

@end
