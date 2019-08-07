//
//  ViewController.swift
//  WorkingWithUISegmentedControl
//
//  Created by Ника Перепелкина on 06/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        label.numberOfLines = 2
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }

    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        label.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "Выбран первый сегмент"
            label.textColor = .red
        case 1:
            label.text = "Выбран второй сегмент"
            label.textColor = .yellow
        case 2:
            label.text = "Выбран третий сегмент"
            label.textColor = .blue
        default:
            print("Что-то пошло не так!")
        }
    }
}

