//
//  UbicacionViewController.h
//  HorizonSuites
//
//  Created by user3747 on 9/28/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

#define kGOOGLE_API_KEY @"AIzaSyBqe6t1mOz7nd7qyZPPCaSlGAPMgcd_v3k"

@interface UbicacionViewController : UIViewController

{
    CLLocationManager *locationManager;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;



@end
