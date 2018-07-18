//
//  INECOApp
//
//  Created by Таня on 25.05.18.
//  Copyright © 2018 Mikhail. All rights reserved.


import UIKit
import RealmSwift

class ViewController: UIViewController {
    
     var realm: Realm?
    
        override func prepare(for segue: UIStoryboardSegue,
                            sender: Any?)
    {
        super.prepare(for: segue,
                      sender: sender)
        
        if segue.destination.isKind(of: HotTourTableViewController.self)
        {
            let vc = segue.destination as! HotTourTableViewController
            vc.realm = self.realm
        }
    }
 
    @IBAction func call(_ sender: Any) {
        let url: NSURL = URL(string: "tel://+79139859799")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
    
       setupRealm()
    }
    
func setupRealm() {
    let username = "realm-admin"
    let password = "123"
    
    SyncUser.logIn(with: .usernamePassword(username: username, password: password, register: false), server: URL(string: "http://localhost:9080")!) { user, error in
        guard let user = user else {
            fatalError(String(describing: error))
        }
        
        DispatchQueue.main.async {
            // Open Realm
            let configuration = Realm.Configuration(syncConfiguration: SyncConfiguration(user: user, realmURL: URL(string: "realm://localhost:9080/6")!))
            self.realm = try! Realm(configuration: configuration)
        }
    }
}
}







