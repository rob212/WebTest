//
//  ModalViewController.swift
//  WebTest
//
//  Created by Robert McBryde on 18/09/2017.
//  Copyright © 2017 Robert McBryde. All rights reserved.
//

import UIKit
import WebKit

class ModalViewController: UIViewController, WKNavigationDelegate {

     var webView: WKWebView!
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       setupViews()
       styleViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func setupViews() {
        webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        let url = URL(string: "http://www.emanueleferonato.com/wp-content/uploads/2017/08/flipping/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        view.addSubview(webView)
    }
    
    fileprivate func styleViews() {
        
        webView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        webView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        webView.widthAnchor.constraint(equalToConstant: 300.0).isActive = true
        webView.heightAnchor.constraint(equalToConstant: 300.0).isActive = true
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
