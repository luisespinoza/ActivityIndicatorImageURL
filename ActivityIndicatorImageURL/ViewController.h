//
//  ViewController.h
//  ActivityIndicatorImageURL
//
//  Created by Luis Enrique Espinoza Severino on 04-02-13.
//  Copyright (c) 2013 LuisEspinoza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet  UIImageView *_imageView;
    
}

@property (unsafe_unretained)IBOutlet UIActivityIndicatorView *activityIndicator;
@end
