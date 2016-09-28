//
//  ViewController.swift
//  LoginViaSafariDemo
//
//  Created by Jonathan Engelsma on 9/28/16.
//  Copyright © 2016 Jonathan Engelsma. All rights reserved.
//

import UIKit
import SafariServices

let kSafariViewControllerCloseNotification = "kSafariViewControllerCloseNotification"

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    var safariVC: SFSafariViewController?
    
    @IBOutlet weak var loginName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.safariLogin(_:)), name: kSafariViewControllerCloseNotification, object: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func signUpButtonPressed(sender: AnyObject) {
        self.safariVC = SFSafariViewController(URL: NSURL(string: "http://www.cis.gvsu.edu/~engelsma/test.html")!)
        self.safariVC!.delegate = self
        self.presentViewController(self.safariVC!, animated: true, completion: nil)
        
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func safariLogin(notification: NSNotification) {
        let name = notification.object as! String
        print("\nnotifUrl: \(name)")
        self.loginName.text! = "Account created (\(name))"
        self.safariVC!.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}

