//
//  ViewController.h
//  UIPickerView
//
//  Created by Deepak Kumar on 31/07/09.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    IBOutlet UILabel *mlabel;
	NSMutableArray *arrayNo;
	IBOutlet UIPickerView *pickerView2;
    NSMutableArray *arrayNo1;
	IBOutlet UIPickerView *pickerView1;

}
@property (nonatomic, retain) UILabel *mlabel;
@end
