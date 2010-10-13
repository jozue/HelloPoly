//
//  Controller.m
//
//  Created by Josue Roman on 10/13/10.
//  Copyright 2010 UT Austin. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (IBAction)decrease:(id)sender {
    int sides = [poly numberOfSides];
	sides--;
	[poly setNumberOfSides:sides];
	[self updateInterface];
	
	if (increaseButton.enabled == NO) {
		increaseButton.enabled = YES;
	}
}

- (IBAction)increase:(id)sender {
	int sides = [poly numberOfSides];
	sides++;
	[poly setNumberOfSides:sides];
	[self updateInterface];
	
	if (decreaseButton.enabled == NO) {
		decreaseButton.enabled = YES;
	}
}

-(void) updateInterface
{
	numberOfSidesLabel.text = [NSString stringWithFormat:@"%d", [poly numberOfSides]];
	
	if ([poly numberOfSides] <= [poly minimumNumberOfSides]) {
		decreaseButton.enabled = NO;
	}
	if ([poly numberOfSides] >= [poly maximumNumberOfSides]) {
		increaseButton.enabled = NO;
	}
	
	name.text = [poly name];
	
}

-(void) awakeFromNib
{
	[poly setMinimumNumberOfSides: 3];
	[poly setMaximumNumberOfSides: 12];
	
	[poly setNumberOfSides: numberOfSidesLabel.text.integerValue];
	
	name.text = [poly name];
}

@end
