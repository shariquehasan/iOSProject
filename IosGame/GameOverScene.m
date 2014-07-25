//
//  GameOverScene.m
//  IosGame
//
//  Created by Sharique Hasan on 2014-07-24.
//  Copyright (c) 2014 Sharique. All rights reserved.
//

#import "GameOverScene.h"
#import "MyScene.h"
#import "ViewController.h"

@implementation GameOverScene

-(id)initWithSize:(CGSize)size won:(BOOL)won {
    if (self = [super initWithSize:size]) {
        
        // 1
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        
        // 2
        NSString * message;
        if (won) {
            message = @"You Won! You have successfully killed the 30 aliens and saved the human race.Tap to play again";

        } else {
            message = @"You Lose! You could not save the human race. Tap to play again";
        }
        
        // 3
        SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        label.text = message;
        label.fontSize = 8;
        label.fontColor = [SKColor blackColor];
        label.position = CGPointMake(self.size.width/2, self.size.height/2);
        [self addChild:label];

    }
    return self;
        
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self runAction:
     [SKAction sequence:@[
                          [SKAction waitForDuration:0],
                          [SKAction runBlock:^{
         
         SKTransition *reveal = [SKTransition flipHorizontalWithDuration:0.5];
         
         SKScene * myScene = [[MyScene alloc] initWithSize:self.size];
         [self.view presentScene:myScene transition: reveal]; }]
                          ]]
     ];
}
@end
