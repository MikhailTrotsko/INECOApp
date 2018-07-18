//
//  REALM.swift
//  INECOApp
//
//  Created by Таня on 11.04.18.
//  Copyright © 2018 Mikhail. All rights reserved.
//

import Foundation
import RealmSwift

class Tours: Object {
    let idTours = RealmOptional<Int>()
    @objc dynamic var country: String = ""
    @objc dynamic var plaсe: String = ""
    @objc dynamic var date: String = ""
    let namberOfDays = RealmOptional<Int>()
    let namberOfPersons = RealmOptional<Int>()
    let price = RealmOptional<Int>()
    let tours = List<Tour>()
    @objc dynamic var picture: Data? = nil
}
class Tour: Object {
    let idTour = RealmOptional<Int>()
    @objc dynamic var country: String = ""
    let price = RealmOptional<Int>()
    @objc dynamic var descr: String = ""
    @objc dynamic var picture: Data? = nil
}
class HotTours: Object {
    let idHotTours = RealmOptional<Int>()
    let oldPrice = RealmOptional<Int>()
    let newPrice = RealmOptional<Int>()
    let namberOfDays = RealmOptional<Int>()
    @objc dynamic var country: String = ""
    @objc dynamic var plaсe: String = ""
    @objc dynamic var date: String = ""
    @objc dynamic var picture: Data? = nil
    let tours = List<HotTour>()
}
class HotTour: Object {
   let idHotTour = RealmOptional<Int>()
   @objc dynamic var country: String = ""
   let oldPrice = RealmOptional<Int>()
   let newPrice = RealmOptional<Int>()
   @objc dynamic var descr: String = ""
   @objc dynamic var picture: Data? = nil
}


    
  




