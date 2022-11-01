//
//  ViewController.swift
//  Bull's Eye
//
//  Created by Azizbek Asadov on 02/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hitMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "Hello, World",
            message: "This is my first app!",
            preferredStyle: .alert)

          let action = UIAlertAction(
            title: "Awesome",
            style: .default,
            handler: nil)

          alert.addAction(action)
          present(alert, animated: true, completion: nil)
    }

}

