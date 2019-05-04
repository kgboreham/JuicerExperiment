//
//  ViewController.swift
//  JuicerExperiment
//
//  Created by Ken Boreham on 5/3/19.
//  Copyright © 2019 Ken Boreham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let juicer = JuicerService()
    var feed: JuicerFeed?
    
    @IBOutlet private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        juicer.getFeed { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let feed):
                    self.update(feed: feed)
                case .failure(let error):
                    self.handle(error: error)
                }
            }
        }
    }

    private func update(feed: JuicerFeed) {
        self.title = feed.name
        self.feed = feed
        tableView.reloadData()
    }
    
    private func handle(error: JuicerServiceError) {
        let alert = UIAlertController(title: "You're holding it wrong", message: error.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "I'll do better", style: .default))
        present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feed?.posts.items.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JuicerCell", for: indexPath) as! JuicerCell
        cell.configure(with: feed!.posts.items[indexPath.row])
        return cell
    }
}
