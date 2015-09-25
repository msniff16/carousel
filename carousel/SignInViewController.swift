//
//  SignInViewController.swift
//  carousel
//
//  Created by Matthew Sniff on 9/23/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate, UIGestureRecognizerDelegate, UIAlertViewDelegate {

    // outletss
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginConsole: UIView!
    @IBOutlet var container: UIView!
    @IBOutlet var tap: UITapGestureRecognizer!
    @IBOutlet weak var loginForm: UIImageView!
    
    var isEditingText: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        email.delegate = self
        password.delegate = self
        
        // add a target to gesture, then add gesture to container
        tap.addTarget(self, action: "tappedView")
        self.container.addGestureRecognizer(tap)
        
        // scale down and hide login form
        loginConsole.alpha = 0
        email.alpha = 0
        loginForm.alpha = 0
        password.alpha = 0
        loginConsole.transform = CGAffineTransformMakeScale(0.2, 0.2)
        loginForm.transform = CGAffineTransformMakeScale(0.2, 0.2)
        email.transform = CGAffineTransformMakeScale(0.2, 0.2)
        password.transform = CGAffineTransformMakeScale(0.2, 0.2)
        
    }
    
    // view just appeared
    override func viewDidAppear(animated: Bool) {
        
        // face login console in and scale up
        UIView.animateWithDuration(0.5) { () -> Void in
            self.loginConsole.alpha = 1
            self.loginForm.alpha = 1
            self.email.alpha = 1
            self.password.alpha = 1
            self.loginConsole.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.loginForm.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.email.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.password.transform = CGAffineTransformMakeScale(1.0, 1.0)
        }
        
    }
    
    // tapped view
    func tappedView() {
        
        if isEditingText {
            UIView.animateWithDuration(0.3) { () -> Void in
                
                self.email.resignFirstResponder()
                self.password.resignFirstResponder()
                self.loginConsole.frame.origin.y += 50
                self.container.frame.origin.y += 100
                self.isEditingText = false
            }
        }
        
    }
    
    // began editing text field
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if !isEditingText {
            UIView.animateWithDuration(0.3) { () -> Void in
        
                self.loginConsole.frame.origin.y -= 50
                self.container.frame.origin.y -= 100
                self.isEditingText = true
            }
        }
        
    }
    

    // forgot password
    @IBAction func forgotPassword(sender: AnyObject) {
    
    }

    // logging in
    @IBAction func login(sender: AnyObject) {
    
        // must have an email
        if(email.text!.isEmpty) {
            
            let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                alertController.dismissViewControllerAnimated(true, completion: nil)
            }
            alertController.addAction(OKAction)
            presentViewController(alertController, animated: true, completion: nil)

        }
        // must have a password
        else if(password.text!.isEmpty) {
            
            let alertController = UIAlertController(title: "Password Required", message: "Please enter your password", preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                alertController.dismissViewControllerAnimated(true, completion: nil)
            }
            alertController.addAction(OKAction)
            presentViewController(alertController, animated: true, completion: nil)

        }
        // login info must be correct
        else if (email.text! != "msniff16@gmail.com" || password.text! != "password") {
            let alertController = UIAlertController(title: "Unable to login", message: "Please enter a correct email and password", preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                alertController.dismissViewControllerAnimated(true, completion: nil)
            }
            alertController.addAction(OKAction)
            presentViewController(alertController, animated: true, completion: nil)
        }
        // good! correct login info
        else {
            
            let alertController = UIAlertController(title: "Signing in...", message: "", preferredStyle: .Alert)
            presentViewController(alertController, animated: true, completion: nil)

            delay(2.0, closure: { () -> () in
                self.dismissViewControllerAnimated(true, completion: nil)
                self.performSegueWithIdentifier("signInToWelcome", sender: nil)

            })

        }
        
    }


}
