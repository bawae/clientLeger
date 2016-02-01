//
//  ViewController.h
//  projet3
//
//  Created by Adnane Chaabi on 2016-01-25.
//  Copyright © 2016 Adnane Chaabi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int countInt;
    int side;

}

@property (weak, nonatomic) IBOutlet UITextField *messageOutlet;





- (IBAction)sendMessage:(id)sender;
- (IBAction)messageAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scroller;


@end

