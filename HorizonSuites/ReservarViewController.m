//
//  ReservarViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ReservarViewController.h"
#import "HomeViewController.h"

@interface ReservarViewController (){

}

@end

int_room_type = 0;
indicador_int_date_checkin=0;
indicador_int_date_checkout=0;
NSDate *extern_date_in;
NSDate *extern_date_out;


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
    self.textfield_email.delegate=self;
    self.textfield_firstname.delegate=self;
    self.textfield_lastname.delegate=self;
    self.textfield_phone1.delegate=self;
    self.textfield_phone2.delegate=self;
    self.textfield_skype.delegate=self;
    
    
    self.label_checkin.text=self.fecha_checkin;
    self.label_checkout.text=self.fecha_checkout;
    self.label_room.text=self.room_type;
   
	// Do any additional setup after loading thif
    if (int_room_type==1) {
        NSLog(@"uno");
        self.label_room.text=@"Simple";
        
    }
    else if (int_room_type==2){
    NSLog(@"dos");
        self.label_room.text=@"Double";
    }
else if (int_room_type==3){
    NSLog(@"tres");
    self.label_room.text=@"Suite";
}


    if (indicador_int_date_checkin==1) {
        NSDateFormatter *form = [[NSDateFormatter alloc] init];
        [form setDateFormat:@"MM-dd-YYYY"];
        NSString *str2 = [form stringFromDate:extern_date_in];
        self.label_checkin.text=str2;
    }
    if (indicador_int_date_checkout==1) {
        NSDateFormatter *form = [[NSDateFormatter alloc] init];
        [form setDateFormat:@"MM-dd-YYYY"];
        NSString *str2 = [form stringFromDate:extern_date_out];
        self.label_checkout.text=str2;
    }
    
}



- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_textfield_email resignFirstResponder];
    [_textfield_firstname resignFirstResponder];
    [_textfield_lastname resignFirstResponder];
    [_textfield_phone1 resignFirstResponder];
    [_textfield_phone2 resignFirstResponder];
    [_textfield_skype resignFirstResponder];

    }

- (BOOL)  textFieldShouldReturn:(UITextField *)textField {
    
    if (textField) {
        [textField resignFirstResponder];
    }
    return NO;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

    if (buttonIndex==1) {
       //confirmada
        
        HomeViewController *detalle = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
        [self.navigationController pushViewController: detalle animated:YES];
    }
    else if (buttonIndex==0) {
       //cancelada
        HomeViewController *detalle = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
        [self.navigationController pushViewController: detalle animated:YES];
        
    }
    else {
    
    
    }
    
}

- (IBAction)reservar:(id)sender {
    int costo;
    int total;
    if (int_room_type==1){costo=85;} else if (int_room_type==2){costo=102;} else{costo=125;}
    
    
    NSTimeInterval secondsBetween = [extern_date_out timeIntervalSinceDate:extern_date_in];
    
    int numberOfDays = secondsBetween / 86400;
    total= costo*numberOfDays;
    
    //NSLog(@"There are %d days in between the two dates.", numberOfDays);
    NSString *mensaje=[NSString stringWithFormat: @"Your bill will be $ %d",total];
    
    confirmation = [[UIAlertView alloc] initWithTitle:@"Confirmation" message:mensaje delegate:self cancelButtonTitle: @"Cancel" otherButtonTitles:@"Confirm", nil];

    [confirmation show];
    
    
}
@end
