//
//  OPSPController.swift
//  GithubApp-Beta
//
//  Created by Amir Daliri on 11/10/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit

class OPSPController: UIViewController {
    @IBOutlet weak var OpenSourceProjectView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
        let OspUrl = NSURL(string: "https://github.com/Swift-S/iosOpenSourceApp")
        let RequestOsp = NSURLRequest(URL: OspUrl!)
        OpenSourceProjectView.loadRequest(RequestOsp)
        
    }

}
