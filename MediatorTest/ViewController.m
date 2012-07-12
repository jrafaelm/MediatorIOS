//
//  ViewController.m
//  MediatorTest
//
//  Created by José Rafael Moraes Garcia da Roc on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize btnPlus;
@synthesize btnMinus;
@synthesize lblInfo;
@synthesize lblCounter;


- (void)viewDidLoad
{
    [super viewDidLoad];
	
  mediator = [[Mediator alloc] initWithBtnPlus:btnPlus btnMinus:btnMinus lblInfo:lblInfo lblCounter:lblCounter];
  
  
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
      return YES;
  }
}

@end
