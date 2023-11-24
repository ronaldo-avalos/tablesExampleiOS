//
//  ViewController.swift
//  TablesExample
//
//  Created by ronaldo avalos on 24/11/23.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK; Referencia a la tabla
    @IBOutlet weak var tableView: UITableView!
    
    var tweets = Tweet.buildTweetList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell_Custom", bundle: nil), forCellReuseIdentifier: "TableViewCell_Custom" )
        //        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
        // Do any additional setup after loading the view.
        // Para interactuar implmentar el delegate
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        if let detailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            self.present(detailViewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell_Custom",for: indexPath)
        
        if let customCell = cell as? TableViewCell_Custom, indexPath.row < tweets.count {
            let tweet = tweets[indexPath.row]
            customCell.setupCell(userName: tweet.userName, userMessage: tweet.message,imageURL: tweet.url)
        }
        
        return cell
    }
    
}


