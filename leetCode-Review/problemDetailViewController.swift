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
    
    @IBOutlet var desc: UILabel!
    
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var difficultTag: UILabel!
    @IBOutlet var companyTag: UILabel!
    
    @IBOutlet var imageSolution: UIImageView!
    
    @IBOutlet var explan: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 4.0
        scrollView.zoomScale = 1.0
        scrollView = UIScrollView(frame: view.bounds)
        difficultTag.text = difficulties
        explan.text = explanation
        imageSolution.image = solution
        self.title = name
        let stringRepresentation = companies.joinWithSeparator(" ")
        companyTag.text = stringRepresentation
        scrollView.addSubview(desc)
        scrollView.addSubview(difficultTag)
        scrollView.addSubview(companyTag)
        scrollView.addSubview(explan)
//        scrollView.addSubview(imageSolution)
        self.view.addSubview(scrollView)
        setZoomScale()
        setupGestureRecognizer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return view
    }
    
    func setZoomScale() {
        let imageViewSize = view.bounds.size
        let scrollViewSize = scrollView.bounds.size
        let widthScale = scrollViewSize.width / imageViewSize.width
        let heightScale = scrollViewSize.height / imageViewSize.height
        
        scrollView.minimumZoomScale = min(widthScale, heightScale)
        scrollView.zoomScale = 1.0
    }
    
    
    func setupGestureRecognizer() {
        let doubleTap = UITapGestureRecognizer(target: self, action: "handleDoubleTap:")
        doubleTap.numberOfTapsRequired = 2
        scrollView.addGestureRecognizer(doubleTap)
    }
    
    func handleDoubleTap(recognizer: UITapGestureRecognizer) {
        
        if (scrollView.zoomScale > scrollView.minimumZoomScale) {
            scrollView.setZoomScale(scrollView.minimumZoomScale, animated: true)
        } else {
            scrollView.setZoomScale(scrollView.maximumZoomScale, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
