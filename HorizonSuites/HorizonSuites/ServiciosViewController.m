//
//  ServiciosViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 9/27/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ServiciosViewController.h"

@interface ServiciosViewController ()

@end

@implementation ServiciosViewController
NSArray *tableData;


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
     tableData = [NSArray arrayWithObjects:
                  @"Restaurante de Especialidades", @"Room Service", @"Bar", @"Salones de Conferencia", @"Piscina Climatizada", @"Gimnasio", @"Lavanderia", @"Venta de Regalos y Revistas", @"Centro de Negocios e Internet", @"Renta de Autos", @"Agencia de Viajes", @"Intercambio de Dinero", @"Transporte Aereopuerto-Hotel", @"Seguridad  24h", @"Cuidados Medicos y Ambulancia", nil];
    
    [self.scroll setScrollEnabled:YES];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}



@end
