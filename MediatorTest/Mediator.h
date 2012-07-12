//
//  Mediator.h
//  MediatorTest
//
//  Created by José Rafael Moraes Garcia da Roc on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mediator : NSObject{

  UIButton* btnPlus;
  UIButton* btnMinus;
  UILabel* lblInfo;
  UILabel* lblCounter;
  
}


-(void) plusClicked:(id)sender;
-(void) minusClicked:(id)sender;
- (id)initWithBtnPlus:(UIButton*) btnPls btnMinus:(UIButton*) btnMin lblInfo:(UILabel*) lblInf lblCounter:(UILabel*) lblCount;


@end
