//
//  PopVC.swift
//  pixel-city
//
//  Created by Asset Ryskul on 10/14/20.
//  Copyright © 2020 Asset Ryskul. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initImage(forImage image: UIImage) {
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = passedImage
        doubleTap()
    }
    
    func doubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(self.tapDismiss(_:)))
        doubleTap.delegate = self
        doubleTap.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(doubleTap)
    }
    
    @objc func tapDismiss(_ gesture: UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
