//
//  SettingsPageViewController.swift
//  carousel
//
//  Created by Matthew Sniff on 9/24/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class SettingsPageViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = settingsImage.image!.size
    }
    
    @IBAction func onExit(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    // pop all the way back to the bottom
    @IBAction func onSignOut(sender: AnyObject) {
        performSegueWithIdentifier("backToFront", sender: nil)
    }

}
