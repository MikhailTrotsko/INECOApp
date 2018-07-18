//
//  DetailViewController.swift
///  INECOApp
//
//  Created by Таня on 25.05.18.
//  Copyright © 2018 Mikhail. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    var str = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = str
        img.image = UIImage(named: str)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}




