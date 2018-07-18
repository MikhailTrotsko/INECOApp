//
//  webViewController.swift
//  INECOApp
//
//  Created by Таня on 27.05.18.
//  Copyright © 2018 Mikhail. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var web: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://inecotour.ru/mobile/mobile.html")
        web.loadRequest(URLRequest(url: url!))
        
    }

   

}

