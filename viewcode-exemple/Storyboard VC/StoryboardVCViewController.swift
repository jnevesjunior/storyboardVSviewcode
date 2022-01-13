//
//  StoryboardVCViewController.swift
//  viewcode-exemple
//
//  Created by Jose Neves on 12/01/22.
//

import UIKit

class StoryboardVCViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textFieldLabel: UITextField!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        titleLabel.text = "Title title title"
        textFieldLabel.placeholder = "Placeholder"
        iconImageView.image = UIImage(systemName: "books.vertical.fill")
        
        applyStyles()
    }
    
    private func applyStyles() {
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.textAlignment = .center
        
        iconImageView.tintColor = .systemGreen
        iconImageView.contentMode = .scaleAspectFit
    }
}

extension StoryboardVCViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        cell.textLabel?.text = "cell \(indexPath.row)"
        cell.imageView?.image = UIImage(systemName: "square.and.arrow.up")
        
        return cell
    }
    
}
