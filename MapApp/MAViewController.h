//
//  MAViewController.h
//  MapApp
//
//  Created by user on 11/14/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MAViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)zoom2Action:(id)sender;
- (IBAction)typeAction:(id)sender;


@end
