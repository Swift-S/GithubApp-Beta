//
//  DetailUser.swift
//  GithubApp-Beta
//
//  Created by Amir Daliri on 11/10/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit

class DetailUser: UIViewController {
    @IBOutlet weak var NameLable: UILabel!

    @IBOutlet weak var SummaryTextLable: UITextView!
    var User = "Andrew Nesbitt"
    var summaryUsers = "University of York The United Kingdom Joined on Nov 19, 2012"

    override func viewDidLoad() {
        super.viewDidLoad()
        // I;m Here...
        self.NameLable.text = self.User
        self.SummaryTextLable.text = self.summaryUsers
    }
}
