//
//  ReservarViewController.h
//  HorizonSuites
//
//  Created by Fernando Archila on 10/2/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReservarViewController : UIViewController <UITextFieldDelegate> {
    NSMutableArray *contenido;
}
@property (strong, nonatomic) IBOutlet UILabel *ladultos;
@property (strong, nonatomic) IBOutlet UILabel *lninos;
@property (strong, nonatomic) IBOutlet UITextField *t_nombre;
@property (strong, nonatomic) IBOutlet UITextField *t_apellido;
@property (strong, nonatomic) IBOutlet UITextField *t_telefono;
@property (strong, nonatomic) IBOutlet UITextField *t_email;
@property (strong, nonatomic) IBOutlet UITextField *t_adultos;
@property (strong, nonatomic) IBOutlet UITextField *t_ninos;

@property (strong, nonatomic) IBOutlet UILabel *label_habitacion;
@property (strong, nonatomic) IBOutlet UIPickerView *picker_habitacion;
- (IBAction)seleccionar_habitacion:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *Aceptar;
- (IBAction)Action_aceptar:(id)sender;

-(IBAction)backgroundTouched:(id)sender;

-(IBAction)textFieldreturn:(id)sender;



@end
