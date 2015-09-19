//
//  Web.m
//  Jaxon Stevens Profile 
//
//  Created by Jaxon Stevens on 04/20/15
//  Copyright (c) Jaxon Stevens. All rights reserved.
//

#import "Web.h"

@interface Web ()

@end

@implementation Web



- (void)viewDidLoad {
    
    
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.jaxonstevens.com"]]];
}

- (void)webView:(UIWebView *)webViewfail didFailLoadWithError:(NSError *)error {
    if([webViewfail isEqual:webview]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Whoa,The Connection Failed"
                                                        message:@"Check your Internet connection before refreshing."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}


- (void)webViewDidStartLoad:(UIWebView *)webView { //Start Load
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES]; //Activity Indicator start
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {//Finish Load
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO]; //Activity indicator stop
}





- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}




//FinWebView




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)pulBackContact:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end