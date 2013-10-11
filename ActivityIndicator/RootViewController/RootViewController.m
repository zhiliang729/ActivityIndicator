//
//  RootViewController.m
//  ActivityIndicator
//
//  Created by zhangliang on 13-10-11.
//  Copyright (c) 2013年 com.gooagoo.Gooagoo. All rights reserved.
//

#import "RootViewController.h"
#import "DemoViewController.h"
#import "ViewController.h"
#import "TYViewController.h"
#import "MTViewController.h"
#import "TIRootViewController.h"
#import "CLViewController.h"
#import "LVViewController.h"

@interface RootViewController ()
@property (nonatomic, retain) NSArray *mdataArray;

@end

@implementation RootViewController
@synthesize mdataArray;

- (void)dealloc
{
    [mdataArray release];
    [super dealloc];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title = @"各种指示器";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.mdataArray = [[[NSArray alloc] initWithObjects:@"HZActivityIndicator", @"F3SwirlyDemo", @"TYProgressBar", @"Metro Style-WP7的效果", @"Spring loadedview", @"DDIndicator", @"LHLoadingView", nil]autorelease];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.mdataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.textLabel.text = [self.mdataArray objectAtIndex:indexPath.row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            DemoViewController *demo = [[DemoViewController alloc] initWithNibName:nil bundle:nil];
            [self.navigationController pushViewController:demo animated:YES];
            [demo release];
        }
            break;
        case 1:
        {
            ViewController *vc = [[ViewController alloc] initWithNibName:@"ViewController_iPhone" bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
            [vc release];
        }
            break;
        case 2:
        {
            TYViewController *vc = [[TYViewController alloc] initWithNibName:@"TYViewController" bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
            [vc release];
        }
            break;
        case 3:
        {
            MTViewController *vc = [[MTViewController alloc] initWithNibName:@"MTViewController" bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
            [vc release];
        }
            break;
        case 4:
        {
            TIRootViewController *vc = [[TIRootViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            [vc release];
        }
            break;
        case 5:
        {
            CLViewController *vc = [[CLViewController alloc] initWithNibName:nil bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
            [vc release];
        }
            break;
        case 6:
        {
            LVViewController *vc = [[LVViewController alloc] initWithNibName:nil bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
            [vc release];
        }
            break;
        default:
            break;
    }
}

@end
