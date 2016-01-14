//
//  ViewController.m
//  exampleContentAndBounce
//
//  Created by ios31 on 1/14/16.
//  Copyright © 2016 ios31. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIScrollView * scrollView;
@end

@implementation ViewController
{
    UIImageView* photo;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage* image = [UIImage imageNamed:@"people.jpg"];
    self.scrollView= [[UIScrollView alloc] initWithFrame:CGRectMake(8, 8, self.view.bounds.size.width-16, 300)];
    self.scrollView.backgroundColor= [UIColor grayColor];
    self.scrollView.contentSize= CGSizeMake(image.size.width, image.size.height);
    
    self.scrollView.bounces= true;
    self.scrollView.showsHorizontalScrollIndicator= true;
    self.scrollView.showsVerticalScrollIndicator= true;
    
    photo = [[UIImageView alloc] initWithImage:image];
    photo.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    [self.scrollView addSubview:photo];
    [self.view addSubview:self.scrollView];
}



@end
