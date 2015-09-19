//
//  Web.h
//  Jaxon Stevens Profile 
//
//  Created by Jaxon Stevens on 04/20/15
//  Copyright (c) Jaxon Stevens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Web : UIViewController<UIAlertViewDelegate>

//WebView
{
    
    IBOutlet UIWebView *webview;
    
    IBOutlet UIActivityIndicatorView *active;
    
    
}

- (IBAction)pulBackContact:(id)sender;

@end
