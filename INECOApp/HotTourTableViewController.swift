//
//  HotTourTableViewController.swift
//  INECOApp
//
//  Created by Таня on 24.05.18.
//  Copyright © 2018 Mikhail. All rights reserved.
//

import UIKit
import RealmSwift

class HotTourTableViewController: UITableViewController {
    
    var realm: Realm?
    var all_hotTour: Results<HotTours>?
    var searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController.searchResultsUpdater = self as? UISearchResultsUpdating
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Введите страну"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        
        
        all_hotTour = realm?.objects(HotTours.self)

           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination.isKind(of: HotTourDetailViewController.self)
        {
            let vc = segue.destination as! HotTourDetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            let tour = all_hotTour![(indexPath?.row)!]
            vc.hotTour = tour
        }
    }


   
        override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return all_hotTour!.count
        
    }
    func query_all_hotTour(){
        
    }
      
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HotTourTableViewCell", for: indexPath) as! HotTourTableViewCell
        let tour = all_hotTour! [indexPath.row]
        let picture = tour.picture
        if picture != nil
       
        {
            cell.imageHot.image = UIImage(data: picture!)
        }
          cell.textHot.text = tour.country
          cell.dateHot.text = tour.date
          cell.oldPrice.text = String(describing: tour.oldPrice.value as! Int)
          cell.newPrice.text = String(describing: tour.newPrice.value as! Int)
          cell.nambOfDays.text = String(describing: tour.namberOfDays.value as! Int)
          cell.placeHot.text = tour.plaсe
                
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        self.performSegue(withIdentifier: "showHotTourDetail",
                          sender: self)
        tableView.deselectRow(at: indexPath,
                              animated: true)
    }
    
}

