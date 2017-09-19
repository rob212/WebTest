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
        setupView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    
    fileprivate func setupView() {
        let config = generateWebViewConfiguration()
        webView = WKWebView(frame: self.containerView.bounds, configuration: config)
        webView?.navigationDelegate = self
        self.view = webView
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "index", ofType: "html")!)
        webView?.load(URLRequest(url: url))
        webView?.allowsBackForwardNavigationGestures = false
    }
    
    fileprivate func generateWebViewConfiguration() -> WKWebViewConfiguration {
        let contentController = WKUserContentController()
        let userScript = WKUserScript(
            source: "redHeader()",
            injectionTime: WKUserScriptInjectionTime.atDocumentEnd,
            forMainFrameOnly: true
        )
        contentController.addUserScript(userScript)
        contentController.add(self, name: "callbackHandler")
        
        let config = WKWebViewConfiguration()
        config.userContentController = contentController
        return config
    }
}

extension WebViewController: WKScriptMessageHandler {
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "callbackHandler" {
            print("Javascript in the webView sent the message: \(message.body)")
        }
    }
}
