//
//  AppDelegate.m
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import "AppDelegate.h"
#import "CardsCollectionViewController.h"
#import "CardLayoutView.h"
#import "CardTransitionManager.h"

@interface AppDelegate ()<UINavigationControllerDelegate, CardTransitionManagerDelegate>
@property (nonatomic) CardTransitionManager *transitionManager;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
    
    // setup our layout and initial collection view
    CardLayoutView *stackLayout = [[CardLayoutView alloc] init];
    CardsCollectionViewController *collectionViewController = [[CardsCollectionViewController alloc] initWithCollectionViewLayout:stackLayout];
    [collectionViewController setCardLayoutView:stackLayout];
    collectionViewController.title = @"Life Wallet";
    navController.navigationBar.translucent = NO;
    navController.delegate = self;
    
    // add the single collection view to our navigation controller
    [navController setViewControllers:@[collectionViewController]];
    
    // we want a light gray for the navigation bar, otherwise it defaults to white
    navController.navigationBar.barTintColor = [UIColor whiteColor];
    
    // Override point for customization after application launch.
    return YES;
}

#pragma mark - APLTransitionControllerDelegate
- (void)interactionBeganAtPoint:(CGPoint)p
{
    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
    
    // Very basic communication between the transition controller and the top view controller
    // It would be easy to add more control, support pop, push or no-op.
    //
    UIViewController *viewController =
    [(CardsCollectionViewController *)navController.topViewController nextViewControllerAtPoint:p];
    if (viewController != nil)
    {
        [navController pushViewController:viewController animated:YES];
    }
    else
    {
        [navController popViewControllerAnimated:YES];
    }
}

#pragma mark - UINavigationControllerDelegate

- (id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController
                          interactionControllerForAnimationController:(id <UIViewControllerAnimatedTransitioning>) animationController
{
    // return our own transition manager if the incoming controller matches ours
    if (animationController == self.transitionManager)
    {
        return self.transitionManager;
    }
    return nil;
}

- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                   animationControllerForOperation:(UINavigationControllerOperation)operation
                                                fromViewController:(UIViewController *)fromVC
                                                  toViewController:(UIViewController *)toVC
{
    id transitionManager = nil;
    
    // make sure we are transitioning from or to a collection view controller, and that interaction is allowed
    if ([fromVC isKindOfClass:[UICollectionViewController class]] &&
        [toVC isKindOfClass:[UICollectionViewController class]] &&
        self.transitionManager.hasActiveInteraction)
    {
        self.transitionManager.navigationOperation = operation;
        transitionManager = self.transitionManager;
    }
    return transitionManager;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
