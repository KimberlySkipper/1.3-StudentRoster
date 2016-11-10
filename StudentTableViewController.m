//
//  StudentsTableViewController.m
//  1.3-StudentRoster
//
//  Created by Kimberly Skipper on 11/9/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "StudentTableViewController.h"
#import "MobileStudent.h"

@interface StudentTableViewController ()

@property (nonatomic, strong) NSArray *emailGetsAge;



@end

@implementation StudentTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MobileStudent *aStudent = [MobileStudent emailGetsAgeWithDictionary:@{@"name": @"Heather", @"userName": @"HSummy", @"email": @"HSummy@gmail.com", @"age": [NSNumber numberWithInt:21]}];
    MobileStudent *bStudent = [MobileStudent emailGetsAgeWithDictionary:@{@"name": @"Jonathan", @"userName": @"jarchilles", @"email": @"jarchille@gmail.com", @"age": [NSNumber numberWithInt:22]}];
    MobileStudent *cStudent = [MobileStudent emailGetsAgeWithDictionary:@{@"name": @"Micheal", @"userName": @"thecrafykraut", @"email": @"ironmammaa", @"age": [NSNumber numberWithInt:22]}];
    MobileStudent *dStudent = [MobileStudent emailGetsAgeWithDictionary:@{@"name": @"Marco", @"userName": @"ironmammaa", @"email": @"thecraftykraut@gmail.com", @"age": [NSNumber numberWithInt:22]}];
    MobileStudent *eStudent = [MobileStudent emailGetsAgeWithDictionary:@{@"name": @"Kimmy", @"userName": @"KimberlySkipper", @"email": @"kimmy.skipper@gmail.com", @"age": [NSNumber numberWithInt:41]}];
    
    
    self.emailGetsAge = @[aStudent, bStudent, cStudent, dStudent, eStudent];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.emailGetsAge.count; // will run once for each section (counting begins with zero).  needs to mirror the number of emails
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCell" forIndexPath:indexPath];
    
    
    MobileStudent *aStudent = self.emailGetsAge[indexPath.row];
        cell.textLabel.text = aStudent.name;
        cell.detailTextLabel.text = aStudent.userName;
    
    //cell.textLabel.text = oneStudent.email;
    //cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld",(long)oneStudent.age];    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
