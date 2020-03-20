//
//  FirstVC.swift
//  Demo1
//
//  Created by TrungNV on 3/19/20.
//  Copyright © 2020 ttc-solutions. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var myTableView: UITableView!

    let listData = ["trungn1", "trungnasdfasdf", "adsfasdfasdfadsf", "adsfadsfadsfasdfasdfasdfsd adsfadsfadsfasdfasdfasdfsd adsfadsfadsfasdfasdfasdfsd adsfadsfadsfasdfasdfasdfsd", "giap thai .asd.fadsf"]
    let listData2 = ["aa", "bb", "cc"]

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        // Do any additional setup after loading the view.
        myTableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "mycell")
        myTableView.register(UINib(nibName: "MyCell2", bundle: nil), forCellReuseIdentifier: "mycell2")


    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listData.count
        }
        if section == 1 {
            return listData2.count
        }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as? MyCell
            cell?.configCell(data: listData[indexPath.row])
            cell?.delegate = self
//            cell?.didPres = { input in
//                print(indexPath.row)
//                print(indexPath.section)
//                print(input)
//            }
            return cell!
        }

        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mycell2", for: indexPath) as? MyCell2
            cell?.lblContent.text = listData2[indexPath.row]
            return cell!
        }

        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}

extension FirstVC: DidPressDelegate {
    func didPress(_ str: String) {
        print(str)
    }

}
