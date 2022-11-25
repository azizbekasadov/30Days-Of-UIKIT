//
//  AboutViewController.swift
//  Bull's Eye
//
//  Created by Azizbek Asadov on 18/11/22.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.backgroundColor = .clear
        loadResource()
    }
    
    fileprivate func loadResource() {
        if let url = Bundle.main.url(
            forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true)
    }
}
