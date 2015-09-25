//
//  IntroViewController.swift
//  carousel
//
//  Created by Matthew Sniff on 9/23/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    @IBOutlet weak var tile1: UIImageView!
    @IBOutlet weak var tile2: UIImageView!
    @IBOutlet weak var tile3: UIImageView!
    @IBOutlet weak var tile4: UIImageView!
    @IBOutlet weak var tile5: UIImageView!
    @IBOutlet weak var tile6: UIImageView!
    var didScroll: Bool = false
    
    @IBOutlet weak var imageContainer: UIView!
    @IBOutlet weak var tileView1: UIView!
    @IBOutlet weak var tileView4: UIView!
    @IBOutlet weak var tileView5: UIView!
    @IBOutlet weak var tileView6: UIView!
    @IBOutlet weak var tileView3: UIView!
    @IBOutlet weak var tileView2: UIView!
    
    // page loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = introImage.image!.size
        
        // rotate images initially
        tileView1.transform = CGAffineTransformMakeRotation(CGFloat(15 * M_PI / 180))
        tileView3.transform = CGAffineTransformMakeRotation(CGFloat(-15 * M_PI / 180))
        tileView2.transform = CGAffineTransformMakeRotation(CGFloat(15 * M_PI / 180))
        
        tileView6.transform = CGAffineTransformMakeRotation(CGFloat(-15 * M_PI / 180))
        tileView4.transform = CGAffineTransformMakeRotation(CGFloat(15 * M_PI / 180))
        tileView5.transform = CGAffineTransformMakeRotation(CGFloat(-15 * M_PI / 180))

        
    }
    
    // scroll view just scrolled
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        // amount scrolled
        // print(scrollView.contentOffset)
        
        // only animate if haven't scrolled yet
        if(didScroll == false) {
            didScroll = true
            UIView.animateWithDuration(1.0) { () -> Void in
                
                self.imageContainer.transform = CGAffineTransformMakeTranslation(0, 390)
                
                self.tileView1.transform = CGAffineTransformMakeScale(1.2, 1.2)
                self.tileView1.transform = CGAffineTransformMakeTranslation(30, 10)
                self.tile1.transform = CGAffineTransformRotate(self.view.transform, CGFloat(0 * M_PI / 180))
                
                self.tileView2.transform = CGAffineTransformMakeScale(0.6, 0.6)
                self.tileView2.transform = CGAffineTransformMakeTranslation(40, 12)
                self.tile2.transform = CGAffineTransformRotate(self.view.transform, CGFloat(0 * M_PI / 180))
                
                self.tileView3.transform = CGAffineTransformMakeScale(0.6, 0.6)
                self.tileView3.transform = CGAffineTransformMakeTranslation(20, 0)
                self.tile3.transform = CGAffineTransformRotate(self.view.transform, CGFloat(0 * M_PI / 180))
                
                self.tileView4.transform = CGAffineTransformMakeTranslation(55, 20)
                self.tileView4.transform = CGAffineTransformMakeScale(0.6, 0.6)
                self.tile4.transform = CGAffineTransformRotate(self.view.transform, CGFloat(0 * M_PI / 180))
                
                self.tileView5.transform = CGAffineTransformMakeTranslation(0, 20)
                self.tileView5.transform = CGAffineTransformMakeScale(0.6, 0.6)
                self.tile5.transform = CGAffineTransformRotate(self.view.transform, CGFloat(0 * M_PI / 180))
                
                self.tileView6.transform = CGAffineTransformMakeTranslation(50, 20)
                self.tileView6.transform = CGAffineTransformMakeScale(0.6, 0.6)
                self.tile6.transform = CGAffineTransformRotate(self.view.transform, CGFloat(0 * M_PI / 180))
                
            }
        }
        
       
    }
    

    
}
