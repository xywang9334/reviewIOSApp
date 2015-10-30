//
//  problemDetailViewController.swift
//  leetCode-Review
//
//  Created by Xinyi Wang on 10/28/15.
//  Copyright © 2015 Xinyi Wang. All rights reserved.
//

import UIKit

class problemDetailViewController: UIViewController, UIScrollViewDelegate {
    var name: String?
    var difficulties: String?
    var explanation: String?
    var companies: [String] = [""]
    var solution: UIImage?
    var descript: String?
    
    
    @IBOutlet var difficulty: UILabel!
    @IBOutlet var des: UILabel!
    @IBOutlet var imageView: UIImageView!


    @IBOutlet var tapText: UILabel!
    @IBOutlet var explan: UILabel!
    @IBOutlet var company: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = name
        difficulty.text = "difficulty: " + difficulties!
        des.text = "description: " + descript!
        company.text = companies.joinWithSeparator(", ")
        explan.text = explanation
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        imageView.userInteractionEnabled = true
        imageView.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    func imageTapped(img: AnyObject)
    {
        imageView.image = solution
        tapText.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return view
    }
    
//    func setZoomScale() {
//        let imageViewSize = view.bounds.size
//        let scrollViewSize = scrollView.bounds.size
//        let widthScale = scrollViewSize.width / imageViewSize.width
//        let heightScale = scrollViewSize.height / imageViewSize.height
//        
//        scrollView.minimumZoomScale = min(widthScale, heightScale)
//        scrollView.zoomScale = 1.0
//    }
    
    
//    func setupGestureRecognizer() {
//        let doubleTap = UITapGestureRecognizer(target: self, action: "handleDoubleTap:")
//        doubleTap.numberOfTapsRequired = 2
//        scrollView.addGestureRecognizer(doubleTap)
//    }
    
//    func handleDoubleTap(recognizer: UITapGestureRecognizer) {
//        
//        if (scrollView.zoomScale > scrollView.minimumZoomScale) {
//            scrollView.setZoomScale(scrollView.minimumZoomScale, animated: true)
//        } else {
//            scrollView.setZoomScale(scrollView.maximumZoomScale, animated: true)
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
