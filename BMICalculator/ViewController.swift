//
//  ViewController.swift
//  BMICalculator
//
//  Created by DA MAC M1 137 on 2023/08/21.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    private var lottieanimationView: LottieAnimationView!

    
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lottieanimationView = .init(name: "bmi")
        // Replace with your animation file name

        // Set loop mode if needed
        lottieanimationView.loopMode = .loop

        // Set playback speed if needed
        lottieanimationView.animationSpeed = 1.0 // Default is 1.0 (normal speed)
        
        // Set the animation view's frame and add it to your view hierarchy
        lottieanimationView.frame = CGRect(x: 100, y: 200, width: 200, height: 200) // Adjust the frame as needed
        view.addSubview(lottieanimationView)

        // Play the animation
        lottieanimationView.play()
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {
        
        guard let weightText = weightField.text, let heightText = heightField.text,
                  let weight = Double(weightText), let height = Double(heightText) else {
                resultLabel.text = "Invalid input"
                return
            }
            
            // Calculate BMI
            let bmi = weight / (height * height)
            
            // Display the result
            resultLabel.text = "BMI: \(String(format: "%.2f", bmi))"
        }
    }
    
    




