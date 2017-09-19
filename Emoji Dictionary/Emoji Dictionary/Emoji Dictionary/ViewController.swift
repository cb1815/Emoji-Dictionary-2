//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Charles Braham on 18/09/2017.
//  Copyright © 2017 cb1815. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    
    @IBOutlet weak var TableView: UITableView!
    
    var emojis = ["😅","🤡","💪"]
    
    override func viewDidLoad() { // anything in here runs any time the app first opens up
        TableView.dataSource = self
        TableView.delegate = self
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //how many rows
        return emojis.count //this gives us a number of rows equal to the number of items in list
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //what do you want in each row
    print(indexPath.row)
    let cell = UITableViewCell()
    cell.textLabel?.text = emojis[indexPath.row] //this puts in each consecutive item
    return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        TableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegway", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
    defVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

