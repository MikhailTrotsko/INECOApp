//
//  INFViewController.swift
//  INECOApp
//
//  Created by Таня on 25.05.18.
//  Copyright © 2018 Mikhail. All rights reserved.
//

import UIKit

class INFViewController: UIViewController {

    @IBAction func urlIn(_ sender: Any) {
    
        openUrl(urlStr: "http://inecotour.ru")
    }
    
    func openUrl(urlStr:String!) {
        
        if let url = NSURL(string:urlStr) {
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
    }
}

class INECOApp: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

