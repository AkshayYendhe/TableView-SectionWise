//
//  ViewController.swift
//  TableView
//
//  Created by Akshay Yendhe on 06/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let names = [["John Smith", "1111111"],
                 ["Nik Fury","2222222"],
                 ["Paul Walkaer","3333333"],
                 ["James Bond","44444444"]]
    
    let names2 = ["a","b","c","d", "e"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You Tapped me!")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return names.count
        }
        return names2.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var text = ""
        if indexPath.section == 0 {
        let name = names[indexPath.row]
            text = "\(name[0]) \(name[1])"
        } else {
            text = names2[indexPath.row]
        }
        cell.textLabel?.text = text
        return cell
    }
    
}


