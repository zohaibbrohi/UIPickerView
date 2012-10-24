//
//  UIPickerViewAppDelegate.m
//  UIPickerView
//
//  Created by Deepak Kumar on 31/07/09.
//

#import "UIPickerViewAppDelegate.h"
#import "ViewController.h"


@implementation UIPickerViewAppDelegate

@synthesize window;
@synthesize mviewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application
{    
	mviewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:[NSBundle mainBundle]];
    [window addSubview:mviewController.view];
     [window makeKeyAndVisible];
}

- (void)dealloc  
{
   [window release];
   [ViewController release];
   [super dealloc];
}


@end
