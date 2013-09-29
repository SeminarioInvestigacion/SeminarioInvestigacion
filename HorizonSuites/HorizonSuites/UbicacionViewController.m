//
//  UbicacionViewController.m
//  HorizonSuites
//
//  Created by user3747 on 9/28/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "UbicacionViewController.h"

@interface UbicacionViewController ()

@end

@implementation UbicacionViewController

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
	// Do any additional setup after loading the view.
    
    //nos asegura ver nuestra ubicacion
    [self.mapView setShowsUserLocation:YES];
    
    //instancia un objeto de ubicacion
    locationManager = [[CLLocationManager alloc] init];
    
    //delegado para el location manager
    [locationManager setDelegate:self];
    
    //parametros
    [locationManager setDistanceFilter:kCLDistanceFilterNone];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//metodo para hacer el zoom
#pragma mark - MKMapViewDelegate methods.
- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
    
    MKCoordinateRegion region;
    region = MKCoordinateRegionMakeWithDistance(locationManager.location.coordinate,1000,1000);
    [mv setRegion:region animated:YES];

    
}
@end
