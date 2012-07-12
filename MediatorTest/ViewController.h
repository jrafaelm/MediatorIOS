//
//  ViewController.h
//  MediatorTest
//
//  Created by José Rafael Moraes Garcia da Roc on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mediator.h"
@interface ViewController : UIViewController{
  
  
  Mediator* mediator; 

}

@property (nonatomic, strong) IBOutlet UIButton * btnPlus;
@property (nonatomic, strong) IBOutlet UIButton * btnMinus;
@property (nonatomic, strong) IBOutlet UILabel * lblInfo;
@property (nonatomic, strong) IBOutlet UILabel * lblCounter;

@end
