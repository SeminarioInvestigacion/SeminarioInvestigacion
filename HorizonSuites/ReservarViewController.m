//
//  ReservarViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ReservarViewController.h"

@interface ReservarViewController ()

@end

@implementation ReservarViewController
NSString *str;

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
    self.label_checkin.text=self.fecha_checkin;
    self.label_checkout.text= self.fecha_checkout;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
