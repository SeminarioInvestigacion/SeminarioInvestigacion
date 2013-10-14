//
//  ReservarViewController.h
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ViewController.h"

@interface ReservarViewController : ViewController
{
NSString *str;
}
@property (strong, nonatomic) IBOutlet UILabel *label_checkin;
@property (nonatomic, strong) NSString *fecha_checkin;

@end
