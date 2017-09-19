//
//  ViewController.swift
//  WebTest
//
//  Created by Robert McBryde on 17/09/2017.
//  Copyright © 2017 Robert McBryde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameButton: UIButton!
    @IBOutlet weak var injectionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func styleViews() {
        gameButton.layer.cornerRadius = 5;
        gameButton.contentEdgeInsets = UIEdgeInsetsMake(5,5,5,5)
        injectionButton.layer.cornerRadius = 5;
        injectionButton.contentEdgeInsets = UIEdgeInsetsMake(5,5,5,5)
    }
}

