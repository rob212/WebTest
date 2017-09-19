//
//  WebViewController.swift
//  WebTest
//
//  Created by Robert McBryde on 17/09/2017.
//  Copyright © 2017 Robert McBryde. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    

    @IBOutlet var containerView: UIView!
    var webView: WKWebView?
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView()
        webView?.navigationDelegate = self
        self.view = webView
        let url = URL(string: "http://www.emanueleferonato.com/wp-content/uploads/2017/08/flipping/")!
        webView?.load(URLRequest(url: url))
        webView?.allowsBackForwardNavigationGestures = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

}
