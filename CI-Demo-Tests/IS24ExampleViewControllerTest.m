//
//  IS24ExampleViewControllerTest.m
//  CI-Demo
//
//  Created by Schulze, Felix on 01.10.2012.
//  Copyright (c) 2012 ImmobilienScout24. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <GHUnitIOS/GHUnit.h>

#import "IS24ExampleViewController.h"

@interface IS24ExampleViewControllerTest : GHViewTestCase
@end

@implementation IS24ExampleViewControllerTest

- (void) testShouldRenderView {
    IS24ExampleViewController *viewControllerUnderTest = [[IS24ExampleViewController alloc] init];
    GHVerifyView(viewControllerUnderTest.view);
}

- (void) testShouldCheckOrientationInfo {
    IS24ExampleViewController *viewControllerUnderTest = [[IS24ExampleViewController alloc] init];
    BOOL value = [viewControllerUnderTest shouldAutorotateToInterfaceOrientation:UIInterfaceOrientationLandscapeLeft];
    GHAssertFalse(value, nil);
}

@end


