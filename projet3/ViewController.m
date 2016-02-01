//
//  ViewController.m
//  projet3
//
//  Created by Adnane Chaabi on 2016-01-25.
//  Copyright © 2016 Adnane Chaabi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    countInt= 0;
    side=1;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)sendMessage:(id)sender
{
    if(self.messageOutlet.text.length==0){
        UIAlertView *erreur = [[UIAlertView alloc] initWithTitle:@"Message vide"
                                                        message:@"Veuillez taper un message"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [erreur show];
    }else{
        NSDate *myDate = [[NSDate alloc] init];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:@" hh:mm "];
        NSString *timestamp = [dateFormat stringFromDate:myDate];
    
    UILabel *label =  [[UILabel alloc] initWithFrame: CGRectMake(20,20+countInt*70,335,52)];
    NSString *varyingString1 = self.messageOutlet.text;
    NSString *author ;
    if(side)
    {
        author = @"adnane";
        [label setTextAlignment:NSTextAlignmentLeft];
        label.layer.borderColor = [UIColor blueColor].CGColor;
        label.text= [NSString stringWithFormat:@"\t %@ \t %@: \t %@ \t",timestamp,author ,varyingString1];

        side=0;
    }
    else
    {
        author = @"Wael";
        [label setTextAlignment:NSTextAlignmentRight];
        label.layer.borderColor = [UIColor greenColor].CGColor;
        label.text= [NSString stringWithFormat:@"\t %@ \t %@: \t %@ \t",timestamp, author,varyingString1];
        side=1;
    }
    label.layer.borderWidth = 2.0;
    label.layer.cornerRadius= 5.0;
    
    self.messageOutlet.text= @"";
    
    [self.view addSubview:label];
    countInt++;
    }
    UIScrollView* v = (UIScrollView*) self.view ;
    CGRect rc = [_messageOutlet bounds];
    rc = [_messageOutlet convertRect:rc toView:v];
    rc.origin.x = 0 ;
    rc.origin.y -= 60 ;
    
    rc.size.height = 400;
    //[self.scroll scrollRectToVisible:rc animated:YES];
}
- (IBAction)messageAction:(id)sender {
    
}

-(void)viewDidAppear:(BOOL)animated{
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:CGSizeMake(0,1500)];
}

-(void) viewDidLayoutSubviews{
    [self.scroller setContentSize:CGSizeMake(0, 1500)];
}





@end
