//
//  MyCell.swift
//  Demo1
//
//  Created by TrungNV on 3/19/20.
//  Copyright © 2020 ttc-solutions. All rights reserved.
//

import UIKit

protocol DidPressDelegate {
    func didPress(_ str: String)
}

class MyCell: UITableViewCell {
    @IBOutlet weak var viewLeft: UIView!
    @IBOutlet weak var lblContent: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var tfInput: UITextField!

    var delegate: DidPressDelegate!

    func play(_ name: String) {
    }

    var didPres: ((_ str: String) -> ())?
    var myName: String?

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configCell(data: String) {
        lblContent.text = data
    }

    @IBAction func didPressAction(_ sender: Any) {
        tfInput.resignFirstResponder()
        delegate.didPress(tfInput.text ?? "")
    }

}
