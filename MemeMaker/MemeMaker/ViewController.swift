//
//  ViewController.swift
//  MemeMaker
//
//  Created by Jan Andrzejewski on 27/04/2022.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            topLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            bottomLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        setupCaptionLabels()
    }
    
   
    // Data
    let topChoices = [CaptionOption(emoji: "🙂", caption: "(mfw) my face when"), CaptionOption(emoji: "🤓", caption: "uh actually"), CaptionOption(emoji: "👩", caption: "women be like")]
    let bottomChoices = [CaptionOption(emoji: "😁", caption: "good ending"), CaptionOption(emoji: "💀", caption: "i forgor"), CaptionOption(emoji: "🧐", caption: "enjoy the next 45 seconds")]
    

    func setupCaptionLabels() {
        // Get the index.
        let topCaptionIndex = topSegmentedControl.selectedSegmentIndex
        let bottomCaptionIndex = bottomSegmentedControl.selectedSegmentIndex
        
        // Get the option at the index.
        let topCaption = topChoices[topCaptionIndex].caption
        let bottomCaption = bottomChoices[bottomCaptionIndex].caption
        
        // Assign the option to the label.
        topLabel.text = topCaption
        bottomLabel.text = bottomCaption
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Remove default segmented control options.
        topSegmentedControl.selectedSegmentIndex = 0
        bottomSegmentedControl.selectedSegmentIndex = 0
}
}
