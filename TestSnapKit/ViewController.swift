//
//  ViewController.swift
//  TestSnapKit
//
//  Created by 영근 김 on 2020/04/17.
//  Copyright © 2020 영근 김. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy var tableView = UITableView()
    let ramenList = [Ramen(name: "신라면", kind: "국물"), Ramen(name: "진라면", kind: "국물"), Ramen(name: "안성탕면", kind: "국물"), Ramen(name: "열라면", kind: "국물"), Ramen(name: "비빔면", kind: "비빔"), Ramen(name: "짜파게티", kind: "비빔"), Ramen(name: "불닭볶음면", kind: "비빔"), Ramen(name: "꼬꼬면", kind: "국물")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    func setupUI() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(DoubleLabelTableViewCell.self, forCellReuseIdentifier: "ramenCell")
        self.view.addSubview(tableView)
        self.view.backgroundColor = .blue
        tableView.backgroundColor = .red
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(view)
            make.leading.equalTo(view)
            make.trailing.equalTo(view)
            make.bottom.equalTo(view)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ramenList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ramenCell", for: indexPath) as! DoubleLabelTableViewCell
        let ramen = ramenList[indexPath.row]
        cell.leftLabel.text = ramen.name
        cell.rightLabel.text = ramen.kind
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
}

struct Ramen{
    var name: String
    var kind: String
}
