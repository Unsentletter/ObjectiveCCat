//
//  ViewController.h
//  MyApp
//
//  Created by Tristan on 14/2/21.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    SystemSoundID soundID;
}

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)Cat:(id)sender;


@end

