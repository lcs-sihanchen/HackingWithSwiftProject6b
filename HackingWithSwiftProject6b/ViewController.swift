//
//  ViewController.swift
//  HackingWithSwiftProject6b
//
//  Created by Chen, Sihan on 2020-03-24.
//  Copyright © 2020 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let label1 = UILabel()
        // Auto layout constraints are based on the view's size and position.
        // Since we are doing it by code, we disable this feature
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = UIColor.red
        label1.text = "THESE"
        label1.sizeToFit()
        
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.green
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        let viewsDictionary = ["label1": label1, "label2": label2,
                               "label3": label3, "label4": label4, "label5": label5]
        // loops over each of the five labels
        //setting them to have the same width as our main view and to have a height of exactly 88 points
        
        var previous: UILabel?
        
        
        for label in [label1, label2, label3, label4, label5] {
            // Width equals the width of the view
           label.widthAnchor.constraint(equalTo:view.widthAnchor).isActive = true
           // height of the label is still 88
           label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            // Height constant to determine the vertical space between the labels
            if let previous = previous {
            // 10 points between two labels vertically
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                // if this is the first label, then:
                // set the anchor away from the top of the safe area
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            
            // Previous label eaual to the current one to allow loop iteration
            previous = label
            
        }
        
 /*      for label in viewsDictionary.keys {
            
           //  addConstraints: add an array of constraints in the view, it's an array because Visual format language can generate multiple constraints at a time
           //  NSLayoutConstraint.constraints(withVisualFormat:): auto layout converts visual format language into an array of constraints
            // metrics: customize the meaning of VFL
          //   "H:|[label1]|" --- VFL: H means horizontal, | means the edge of the view
          //   Visual formatt language can't be accessed with the name of the label, that's why we need a views dictionary
             Each of our labels should stretch edge-to-edge in our view
             However now the labels are still overlapped
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|",
                options: [], metrics: nil, views: viewsDictionary))


        }
        
         V means vetical
      //   - means space, one "-" is 10 points of space by default
         No longer overlapped
         Each label is 88 points high
         Use metrics to define the height of the label
      //   The method here can't work properly without priority when the screen is rotated
       //  Priority is a number between 1 - 1000, as long as it's not 1000(absoltely required), it will auto shrink the label for us
        let metrics = ["labelHeight": 88]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary)) */
        
        
    }
    
    
}

