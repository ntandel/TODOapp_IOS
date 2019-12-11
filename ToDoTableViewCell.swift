//
//  ToDoTableViewCell.swift
//  TodoApp


// StudentID:301094688
// Assignment Name: ToDo Application
//
//  Created by Nisha Tandel on 2019-12-04
//  Copyright © 2019 Nisha Tandel. All rights reserved.
//

import UIKit


class ToDoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.contentView.backgroundColor = UIColor.white
    }

}
