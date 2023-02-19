//
//  WebViewController.swift
//  Project16_100days
//
//  Created by user228564 on 2/16/23.
//

import UIKit
import WebKit

class WebViewController: ViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var url: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard url != nil else {
            print("Website not set")
            navigationController?.popViewController(animated: true)
            return
        }
        
        if let url = URL(string: url ?? "https://www.google.com/") {
            webView.load(URLRequest(url: url))
        }
    }
    
}
