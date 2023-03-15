//
//  ViewController.swift
//  ZoomImage
//
//  Created by Kübra Cennet Yavaşoğlu on 15.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScrollView()
     }
//Kaydırma görünümünü ayarlamak için func oluştururum
    
    func setUpScrollView() {
//kaydırma görünümünü temsilciye uygun hale getiririm.
        scrollView.delegate = self
    }

}
extension ViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}

