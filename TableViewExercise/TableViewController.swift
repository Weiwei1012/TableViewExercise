//
//  TableViewController.swift
//  TableViewExercise
//
//  Created by NDHU_CSIE on 2020/10/29.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var balls = [" Basketball", " Baseball", " Tennis", " Badminton", " Volleyball", " Soccer"]
    
    @IBOutlet var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

     override func numberOfSections(in tableView: UITableView) -> Int {
           // #warning Incomplete implementation, return the number of sections
           return 1
       }

       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
           return balls.count
       }

       
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath)

           // Configure the cell...
           cell.textLabel?.text = balls[indexPath.row]
           
           return cell
       }
       
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myLabel.text = "My favorite sport is" + balls[indexPath.row]
    }
}
