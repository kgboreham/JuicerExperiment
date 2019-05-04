//
//  JuicerCell.swift
//  JuicerExperiment
//
//  Created by Ken Boreham on 5/3/19.
//  Copyright © 2019 Ken Boreham. All rights reserved.
//

import UIKit

class JuicerCell: UITableViewCell {
    @IBOutlet private var postImage: UIImageView!
    @IBOutlet private var postLabel: UILabel!

    var task: URLSessionTask?
    
    override func prepareForReuse() {
        if let task = task {
            task.cancel()
        }
        
        task = nil
        postImage.image = nil
        postLabel.text = nil
    }
    
    func configure(with post: JuicerPost) {
        postLabel.text = post.unformattedMessage.replacingOccurrences(of: "<br />", with: "\n")
        
        guard let url = URL(string: post.image) else { return }
        task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self, let data = data else { return }
            DispatchQueue.main.async {
                self.postImage.image = UIImage(data: data)
            }
        }
        task?.resume()
    }
}
