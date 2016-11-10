//
//  ViewController.swift
//  GithubApp-Beta
//
//  Created by Amir Daliri on 11/10/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    @IBOutlet weak var User: UITextField!
    @IBOutlet weak var Pass: UITextField!
    
    let headers = [
        "Authorization": "Basic bmFkZXJkbDphc2QxMjN6eA==",
        "Content-Type": "application/x-www-form-urlencoded"
        //        "access tokens": "2df01b0b30ea86707741322ea924062956a84de3",
        //        "Client ID": "f9e93472dd7e2160f2f1",
        //        "Client Secret": "6fc59767a8b735ceeaa664bb60110773c6b3a983"
    ]
    
    let BaseURL = "http://api.github.com"
    let clientID: String = "1234567890"
    let clientSecret: String = "abcdefghijkl"
    static let ErrorDomain = "com.error.GitHubAPIManager"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
    }
    
    func loadgithub() {
        
        Alamofire.request(.GET, "https://api.github.com/user", headers: headers)
            .authenticate(user: User.text!, password: Pass.text!)
            .responseJSON { response in
                if let _ = response.result.value {
                    let json = JSON(data: response.data!)
                    
                    print("jsongithub:\(json)")
                }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoginTapped(sender: AnyObject) {
        _ = User.text! + ":" + Pass.text!
        print(User.text! + "  "+Pass.text!)
        loadgithub()
    }

}

