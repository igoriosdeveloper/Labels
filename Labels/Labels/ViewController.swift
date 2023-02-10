//
//  ViewController.swift
//  Labels
//
//  Created by Igor Astsatryan on 30.04.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var fourSegmentsOfColor: UISegmentedControl!
    @IBOutlet weak var sliderControl: UISlider!
    @IBOutlet weak var switchIsHidden: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func setColor(_ sender: UISegmentedControl) {
        
//        switch sender.selectedSegmentIndex {
//        case 0: firstView.backgroundColor = .red
//        case 1: firstView.backgroundColor = .yellow
//        default: break
//        }
        
        switch sender.selectedSegmentIndex {
        case 0: firstView.layer.position = CGPoint(x: 24+75, y: 142)
        case 1: firstView.layer.position = CGPoint(x: 24+183+75, y: 142)
        default: break
        }

                
    }
    
    @IBAction func setOpacity(_ sender: UISlider) {
        
        sliderControl.maximumValue = 150
        sliderControl.maximumValue = 75

        firstView.layer.cornerRadius = CGFloat(sender.value) //with max-min-values

//        firstView.alpha = CGFloat(sender.value) //without giving max-min-values
        
        
//        sliderControl.maximumValue = 350
//        sliderControl.minimumValue = 150

//        firstView.frame.size.width = CGFloat(sender.value)
        
    }
    
    
    @IBAction func isHidden(_ sender: UISwitch) {
        
        firstView.isHidden = !switchIsHidden.isOn
        
    }
    
    
}

enum Colors {
    case red, yellow, blue, green
}

