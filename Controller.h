//
//  Controller.h
//
//  Created by Josue Roman on 10/13/10.
//  Copyright 2010 UT Austin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"

@interface Controller : NSObject {
    IBOutlet UIButton *decreaseButton;
    IBOutlet UIButton *increaseButton;
    IBOutlet UILabel *numberOfSidesLabel;
	IBOutlet PolygonShape *poly;
	
	IBOutlet UILabel *name;
}
- (IBAction)decrease:(id)sender;
- (IBAction)increase:(id)sender;
-(void) updateInterface;
@end
