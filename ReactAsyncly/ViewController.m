//
//  ViewController.m
//  ReactAsyncly
//
//  Created by Aaron Schubert on 23/04/2016.
//  Copyright © 2016 Aaron Schubert. All rights reserved.
//

#import "ViewController.h"
#import "RCTRootView.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
  // For production use, this `NSURL` could instead point to a pre-bundled file on disk:
  //
  //   NSURL *jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
  //
  // To generate that file, run the curl command and add the output to your main Xcode build target:
  //
  //   curl http://localhost:8081/index.ios.bundle -o main.jsbundle
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName: @"SimpleApp"
                                               initialProperties:nil
                                                   launchOptions:nil];
  
  [self.view addSubnode:rootView];
  rootView.frame = self.view.bounds;
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillLayoutSubviews
{
  [super viewWillLayoutSubviews];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
