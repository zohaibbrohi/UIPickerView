//
//  ViewController.m
//  UIPickerView
//
//  Created by Deepak Kumar on 31/07/09.
//

#import "ViewController.h"

@implementation ViewController
@synthesize mlabel;

- (void)viewDidLoad
{
	[super viewDidLoad];
	arrayNo = [[NSMutableArray alloc] init];
	[arrayNo addObject:@" January "];
	[arrayNo addObject:@" February "];
	[arrayNo addObject:@" March "];
	[arrayNo addObject:@" April "];
	[arrayNo addObject:@" May "];
    [arrayNo addObject:@" June "];
	[arrayNo addObject:@" July "];
	[arrayNo addObject:@" August "];
	[arrayNo addObject:@" September "];
	[arrayNo addObject:@" October "];
    [arrayNo addObject:@" November "];
	[arrayNo addObject:@" December "];
	
	[pickerView2 selectRow:1 inComponent:0 animated:NO];
    
    arrayNo1 = [[NSMutableArray alloc] init];
	[arrayNo1 addObject:@" 1001 "];
	[arrayNo1 addObject:@" 2001 "];
	[arrayNo1 addObject:@" 4001 "];
	[arrayNo1 addObject:@" 6001 "];
	[arrayNo1 addObject:@" 10001 "];
	
	[pickerView1 selectRow:1 inComponent:0 animated:NO];
    
    mlabel.text= [arrayNo1 objectAtIndex:[pickerView2 selectedRowInComponent:0]];	
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    if([pickerView isEqual:pickerView2])
    {
        return 1;
    }
    if ([pickerView isEqual:pickerView1]) {
        return 1;
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if([pickerView isEqual:pickerView2])
    {
        mlabel.text=	[arrayNo objectAtIndex:row];
    }
    if ([pickerView isEqual:pickerView1]) {
        mlabel.text=	[arrayNo1 objectAtIndex:row];
    }
	
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
	if([pickerView isEqual:pickerView2])
    {
        return arrayNo.count;
    }
    if ([pickerView isEqual:pickerView1]) {
        return arrayNo1.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    if([pickerView isEqual:pickerView2])
    {
        return [arrayNo objectAtIndex:row];
    }
    if ([pickerView isEqual:pickerView1]) {
        return [arrayNo1 objectAtIndex:row];
    }
	
}


/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad {
 [super viewDidLoad];
 }
 */

/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
