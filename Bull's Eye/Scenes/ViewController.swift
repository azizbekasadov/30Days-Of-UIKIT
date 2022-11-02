//
//  ViewController.swift
//  Bull's Eye
//
//  Created by Azizbek Asadov on 02/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hitMeButton: UIButton!
    
    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        let message = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(
            title: "Hello, World",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "Awesome",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of the slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
}
