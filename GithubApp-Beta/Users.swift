//
//  Users.swift
//  GithubApp-Beta
//
//  Created by Amir Daliri on 11/10/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit

class Users: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var GithubUsersTableView: UITableView!
    var Users = [
        "Graham Campbell","Fabien Potencier","Matthew Weier O'Phinney","Konstantin Haase","Joshua Peek","Samy Pessé","Rico Sta. Cruz","Aman Gupta","Michał Budzyński","Andrew Nesbitt"
    ]
    var User = "Andrew Nesbitt"
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
        self.GithubUsersTableView.dataSource = self
        self.GithubUsersTableView.delegate = self
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.Users.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.Users[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.User = self.Users[indexPath.row]
        self.performSegueWithIdentifier("tableViewToImageUserSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailController = segue.destinationViewController as! DetailUser
        detailController.User = self.User
        
        if self.User == "Fabien Potencier" {
            detailController.summaryUsers = "SensioLabs/San Francisco/fabien@symfony.com/http://fabien.potencier.org/ Joined on Jan17, 2009"
        }
        if self.User == "Matthew Weier O'Phinney" {
            detailController.summaryUsers = "Zend Technologies   Sioux Falls, SD, USA   matthew@weierophinney.net    https://mwop.net/   Joined on Sep 23, 2008"
        }
        if self.User == "Konstantin Haase" {
            detailController.summaryUsers = "Travis CI Zurich         github@rkh.im           http://rkh.im                 Joined on Oct 22, 2008"
        }
        if self.User == "Joshua Peek" {
            detailController.summaryUsers = "GitHub Staff San Francisco, CA josh@joshpeek.com https://twitter.com/joshpeek Joined on Feb 4, 2008"
        }
        if self.User == "Samy Pessé" {
            detailController.summaryUsers = "GitBook Lyon, France samypesse@gmail.com https://twitter.com/SamyPesse Joined on Jun 12, 2011"
        }
        if self.User == "Rico Sta. Cruz" {
            detailController.summaryUsers = "Manila, Philippines hi@ricostacruz.com http://ricostacruz.com Joined on Apr 16, 2009"
        }
        if self.User == "Aman Gupta" {
            detailController.summaryUsers = "GitHub Staff San Francisco, CA aman@tmm1.net http://twitter.com/tmm1 Joined on Mar 8, 2008"
        }
        if self.User == "Michał Budzyński" {
            detailController.summaryUsers = "Warsaw, Poland michal@virtualdesign.pl http://michalbe.blogspot.com Joined on Jul 29, 2010"
        }
        if self.User == "Andrew Nesbitt" {
            detailController.summaryUsers = "@librariesio Somerset, UK andrewnez@gmail.com http://nesbitt.io Joined on Feb 27, 2008"
        }
    }

}
