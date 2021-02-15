//
//  ViewController.m
//  MyApp
//
//  Created by Tristan on 14/2/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.hidden = YES;
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}

- (IBAction)Cat:(id)sender {
    self.label.hidden = NO;
    AudioServicesPlaySystemSound(soundID);
    
    [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
}

- (void)hideLabel {
    self.label.hidden = YES;
}

@end
