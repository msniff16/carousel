//
//  CarouselPageViewController.swift
//  carousel
//
//  Created by Matthew Sniff on 9/24/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class CarouselPageViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = feedImage.image!.size
    }

}
