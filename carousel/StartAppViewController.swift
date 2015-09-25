//
//  StartAppViewController.swift
//  carousel
//
//  Created by Matthew Sniff on 9/23/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class StartAppViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var takeCarouselForSpin: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSizeMake(1280, 520)
        
    }
    
    // go to logged in page
    @IBAction func welcomeToLogin(sender: AnyObject) {
        performSegueWithIdentifier("welcomeToLogin", sender: nil)
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        // on 4th page, show take carousel spin button
        if(page == 3) {
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.takeCarouselForSpin.alpha = 1
            })
        }
        
    }


}
