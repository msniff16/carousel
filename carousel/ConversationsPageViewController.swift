//
//  ConversationsPageViewController.swift
//  carousel
//
//  Created by Matthew Sniff on 9/24/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class ConversationsPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // go back to feed page
    @IBAction func onBack(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }


}
