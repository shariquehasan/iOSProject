//
//  ViewController.h
//  IosGame
//

//  Copyright (c) 2014 Sharique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>

@interface ViewController : UIViewController
- (IBAction)play:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *playlbl;
@property (weak, nonatomic) IBOutlet UITextField *heading;

@property (weak, nonatomic) IBOutlet UITextView *text;
@property (weak, nonatomic) IBOutlet UIButton *tryagain;

@end
