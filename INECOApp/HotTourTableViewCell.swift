//
//  HotTourTableViewCell.swift
//  INECOApp
//
//  Created by Таня on 24.05.18.
//  Copyright © 2018 Mikhail. All rights reserved.
//

import UIKit

class HotTourTableViewCell: UITableViewCell {

    @IBOutlet weak var newPrice: UILabel!
    @IBOutlet weak var oldPrice: UILabel!
    @IBOutlet weak var imageHot: UIImageView!
    @IBOutlet weak var textHot: UILabel!
    @IBOutlet weak var dateHot: UILabel!
    @IBOutlet weak var nambOfDays: UILabel!
    @IBOutlet weak var placeHot: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
