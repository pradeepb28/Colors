//
//  ViewController.swift
//  Colors
//
//  Created by Pradeep Burugu on 3/6/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet private weak var tableView: UITableView!
    
    var materialColors: [UIColor] = [MaterialColor.red(), MaterialColor.pink(), MaterialColor.purple(), MaterialColor.deepPurple(), MaterialColor.indigo(), MaterialColor.blue(), MaterialColor.lightBlue(), MaterialColor.cyan(), MaterialColor.teal(), MaterialColor.green(), MaterialColor.lightGreen(), MaterialColor.lime(), MaterialColor.yellow(), MaterialColor.amber(), MaterialColor.orange(), MaterialColor.deepOrange(), MaterialColor.brown(), MaterialColor.grey(), MaterialColor.blueGrey()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(ColorCell.self, forCellReuseIdentifier: "ColorCell")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materialColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        cell.backgroundColor = materialColors[indexPath.item]
        return cell
    }

}

class ColorCell: UITableViewCell {}
