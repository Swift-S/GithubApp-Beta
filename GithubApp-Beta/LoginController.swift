//
//  LoginController.swift
//  GithubApp-Beta
//
//  Created by Amir Daliri on 11/10/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    @IBOutlet weak var LoginWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
    }
    let url = NSURL(string: "https://github.com/login")
    let request = NSURLRequest(URL: url!)
    LoginWebView.loadRequest(request)
    

    
    
}
