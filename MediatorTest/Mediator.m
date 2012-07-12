//
//  Mediator.m
//  MediatorTest
//
//  Created by José Rafael Moraes Garcia da Roc on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator


- (id)initWithBtnPlus:(UIButton*) btnPls btnMinus:(UIButton*) btnMin lblInfo:(UILabel*) lblInf lblCounter:(UILabel*) lblCount
{
  self = [super init];
  if (self) {
    btnPlus = btnPls;
    [btnPlus addTarget:self action:@selector(plusClicked:) forControlEvents:UIControlEventTouchUpInside];
    btnMinus = btnMin;
    [btnMinus addTarget:self action:@selector(minusClicked:) forControlEvents:UIControlEventTouchUpInside];
    lblInfo = lblInf;
    lblCounter = lblCount;
  }
  return self;
}


-(void) plusClicked:(id)sender{
  
  int info = [lblInfo.text intValue];
  int count = [lblCounter.text intValue];
  if(info == 10){
    [lblInfo setText:[NSString stringWithFormat:@"%d", 0]];
    [lblCounter setText:[NSString stringWithFormat:@"%d", (count+1)]];
  }else {
    [lblInfo setText:[NSString stringWithFormat:@"%d", (info+1)]];
  }
  
}

-(void) minusClicked:(id)sender{

  int info = [lblInfo.text intValue];
  int count = [lblCounter.text intValue];
  if(info == 0 && count >0){
    
    [lblInfo setText:[NSString stringWithFormat:@"%d", 10]];
    [lblCounter setText:[NSString stringWithFormat:@"%d", (count-1)]];
  }else if(info > 0){
    [lblInfo setText:[NSString stringWithFormat:@"%d", (info-1)]];
  }
  
}

@end
