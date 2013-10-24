//
//  ServiciosViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 9/27/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ServiciosViewController.h"
#import "SimpleTableCell.h"

@interface ServiciosViewController ()

@end

@implementation ServiciosViewController
NSArray *tableData;
NSArray *thumbnails;



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
                  @"Restaurant", @"Room Service", @"Bar", @"Meeting Room", @"Pool", @"Gym", @"Laundry", @"Gift Shop & Newstand", @"Business Center", @"Car Rental", @"Travel Agency", @"Money Echange", @"Airpot-Hotel Shuttle", @"24h Security", @"Ambulance & Medical Care", nil];
    
    thumbnails = [NSArray arrayWithObjects:
                 @"restaurante.jpeg", @"room_Service.jpeg", @"bar.jpeg", @"salon.jpeg", @"piscina.jpeg", @"gym.jpeg", @"lavanderia.jpeg", @"regalo.jpeg", @"internet.jpeg", @"autos.jpeg", @"agencia.jpeg", @"intercambio.jpg", @"transporte.jpeg", @"seguridad.jpeg", @"medico.jpeg", nil];
    
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
    static NSString *simpleTableIdentifier = @"SimpleTableCell";

    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
   // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
       // cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
   
    
    }
    
    //cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];

    cell.label_nombre_servicio.text = [tableData objectAtIndex:indexPath.row];
    cell.image_servicio.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
   
    
    return cell;
  

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}



@end
