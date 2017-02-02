//
//  ViewController.swift
//  scrollViews
//
//  Created by sabarish sridhar on 02/02/17.
//  Copyright © 2017 sabarish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth :CGFloat = 0.0
        
        for x in 0...2{
            
            var newX:CGFloat = 0.0
            let scrollWidth = scrollView.frame.size.width
            newX = scrollWidth/2 + scrollWidth * CGFloat(x)
            contentWidth+=newX
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
        scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX-75, y: (scrollView.frame.size.height/2) - 75 , width: 150, height: 150)
        }
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        scrollView.clipsToBounds = false
        print("count :\(images.count)")
        
        
    }

}

