//
//  ViewController.swift
//  ColorMixing
//
//  Created by Сергей Иванов on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultColorView: UIView!
    
    @IBOutlet var redSliderView: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    
    @IBOutlet var greenSliderView: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    
    @IBOutlet var blueSliderView: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0.5
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        redSliderView.text = String(redSlider.value)
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0.5
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        greenSliderView.text = String(greenSlider.value)
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0.5
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .gray
        blueSliderView.text = String(blueSlider.value)
        
    }


    @IBAction func redSliderAction() {
        redSliderView.text = String(round(redSlider.value * 100) / 100)
    }
                                    
                                    
    @IBAction func greenSliderAction() {
        greenSliderView.text = String(round(greenSlider.value * 100) / 100)
    }
    
    
    @IBAction func blueSliderAction() {
        blueSliderView.text = String(round(blueSlider.value * 100) / 100)
        
    }
    
    
}

