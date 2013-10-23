//
//  ReservarViewController.h
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ViewController.h"

@interface ReservarViewController : ViewController <UIVideoEditorControllerDelegate,UIAlertViewDelegate>
{
    
NSString *str,*room_type,*str2;
    IBOutlet UIAlertView  *confirmation;

    
}
extern NSInteger int_room_type;
extern NSInteger indicador_int_date_checkin;
extern NSInteger indicador_int_date_checkout;
extern NSDate *extern_date_in;
extern NSDate *extern_date_out;
@property (strong, nonatomic) IBOutlet UILabel *label_checkin;
- (IBAction)reservar:(id)sender;
@property (nonatomic, strong) NSString *fecha_checkin;
@property (nonatomic, strong) NSString *fecha_checkout;
@property (strong, nonatomic) IBOutlet UILabel *label_checkout;
@property (strong, nonatomic) IBOutlet UILabel *label_room;
@property (nonatomic, strong) NSString *room_type;
@property (strong, nonatomic) IBOutlet UITextField *textfield_firstname;
@property (strong, nonatomic) IBOutlet UITextField *textfield_lastname;
@property (strong, nonatomic) IBOutlet UITextField *textfield_phone1;
@property (strong, nonatomic) IBOutlet UITextField *textfield_phone2;
@property (strong, nonatomic) IBOutlet UITextField *textfield_skype;
@property (strong, nonatomic) IBOutlet UITextField *textfield_email;

@end
