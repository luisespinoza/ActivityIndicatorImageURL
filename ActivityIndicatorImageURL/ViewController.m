//
//  ViewController.m
//  ActivityIndicatorImageURL
//
//  Created by Luis Enrique Espinoza Severino on 04-02-13.
//  Copyright (c) 2013 LuisEspinoza. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *imageURL = [NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/402px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg"];
    NSURLRequest *imageRequest = [NSURLRequest requestWithURL:imageURL];
    [self.activityIndicator setHidden:NO];
    [self.activityIndicator startAnimating];
    [_imageView setImageWithURLRequest:imageRequest
                      placeholderImage:nil
                               success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image)
     {
         [self.activityIndicator setHidden:YES];
        [self.activityIndicator stopAnimating];
         _imageView.image = image;
     }
                               failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error)
     {
         [self.activityIndicator setHidden:YES];
         [self.activityIndicator stopAnimating];
     }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
