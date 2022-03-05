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
        
        redSliderFunction()
        greenSliderFunction()
        blueSliderAction()
    }
    
    @IBAction func redSliderAction() {
        redSliderView.text = String(round(redSlider.value * 100) / 100)
        
        resultColorView.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
                                    
    @IBAction func greenSliderAction() {
        greenSliderView.text = String(round(greenSlider.value * 100) / 100)
       
        resultColorView.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func blueSliderAction() {
        blueSliderView.text = String(round(blueSlider.value * 100) / 100)
       
        resultColorView.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
   }
    private func redSliderFunction() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0.5
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        redSliderView.text = String(redSlider.value)
    }
    
    private func greenSliderFunction() {
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0.5
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        greenSliderView.text = String(greenSlider.value)
    }
    
    private func blueSliderFunction() {
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0.5
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .gray
        blueSliderView.text = String(blueSlider.value)
    }
}


