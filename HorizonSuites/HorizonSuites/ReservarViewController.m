//
//  ReservarViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/2/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ReservarViewController.h"

@interface ReservarViewController ()

@end

@implementation ReservarViewController



#pragma mark - Picker View

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [contenido count];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [self.label_habitacion setText:[contenido objectAtIndex:row]];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
   
    
    return [contenido objectAtIndex:row];
}


#pragma mark - View 

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
    [self.picker_habitacion setHidden:YES];
    contenido = [[NSMutableArray alloc]init];
    
    [contenido addObject:@"Standard"];
     [contenido addObject:@"Ejecutiva"];
     [contenido addObject:@"Suite"];
    
  
   
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) mostrar_ocultar {

   
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (IBAction)backgroundTouched:(id)sender {
    [_t_nombre resignFirstResponder];
    [_t_apellido resignFirstResponder];
    [_t_telefono resignFirstResponder];
    [_t_email resignFirstResponder] ;
    [_t_adultos resignFirstResponder];
    [_t_ninos resignFirstResponder];

}
-(IBAction)textFieldreturn:(id)sender{
 [sender resignFirstResponder];
}


- (IBAction)seleccionar_habitacion:(id)sender {
   
    if (_picker_habitacion.isHidden)
    {
        [_picker_habitacion setHidden:NO];
        [_Aceptar setHidden:YES];
        [_t_adultos setHidden:YES];
        //[_t_ninos setHIdden:YES];
        [_ladultos setHidden:YES];
        [_lninos setHidden:YES];
        
    }
    else {
        //[_t_ninos setHIdden:YES];
        [_picker_habitacion setHidden:YES];
        [_Aceptar setHidden:NO];
        [_t_adultos setHidden:NO];
        [_ladultos setHidden:NO];
        [_lninos setHidden:NO];
    }
}

- (IBAction)Action_aceptar:(id)sender {
}
@end
