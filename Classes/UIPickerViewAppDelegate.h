//
//  UIPickerViewAppDelegate.h
//  UIPickerView
//
//  Created by Deepak Kumar on 31/07/09.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface UIPickerViewAppDelegate : NSObject <UIApplicationDelegate>
{
	
    ViewController *mviewController;
	
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) ViewController *mviewController;

@end

