//
//  VCViewController.swift
//  viewcode-exemple
//
//  Created by Jose Neves on 13/01/22.
//

import UIKit

class VCViewController: UIViewController {
    lazy var titleLabel: UILabel = {
        var label = UILabel()
        
        return label
    }()
    
    lazy var textFieldLabel: UITextField = {
        var textField = UITextField()
        
        return textField
    }()
    
    lazy var iconImageView: UIImageView = {
        var imageView = UIImageView()
        
        return imageView
    }()
    
    lazy var tableView: UITableView = {
        var tableView = UITableView()
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addViews()
        addConstraints()
        
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
    
    private func addViews() {
        [titleLabel,
         textFieldLabel,
         iconImageView,
         tableView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            textFieldLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            textFieldLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            textFieldLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            textFieldLabel.heightAnchor.constraint(equalToConstant: 40),
            
            iconImageView.topAnchor.constraint(equalTo: textFieldLabel.bottomAnchor, constant: 8),
            iconImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            iconImageView.heightAnchor.constraint(equalToConstant: 100),
            iconImageView.widthAnchor.constraint(equalToConstant: 100),
            
            tableView.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 8),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.heightAnchor.constraint(equalToConstant: 300),
        ])
    }
}

extension VCViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "cell \(indexPath.row)"
        cell.imageView?.image = UIImage(systemName: "square.and.arrow.up")
        
        return cell
    }
    
}
