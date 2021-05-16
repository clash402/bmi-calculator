//
//  ViewController.swift
//  bmi-calculator
//
//  Created by Josh Courtney on 4/26/21.
//

import UIKit

class CalculateVC: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightSlider.value = 1.5
        weightSlider.value = 150
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToResultVC" {
            let destinationVC = segue.destination as! ResultVC
            
            let height = heightSlider.value
            let weight = weightSlider.value
            let bmi = calculator.getBMI(height: height, weight: weight)
            
            destinationVC.bmiValue = bmi.value
            destinationVC.advice = bmi.advice
            destinationVC.color = bmi.color
        }
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg"
    }
    
    @IBAction func calculateBtnTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueToResultVC", sender: self)
    }
    
}
