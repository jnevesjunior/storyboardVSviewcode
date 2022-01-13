//
//  ViewController.swift
//  viewcode-exemple
//
//  Created by Jose Neves on 12/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func firstButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "StoryboardID")
        
        navigationController?.present(controller,
                                      animated: true,
                                      completion: nil)
    }
    
    @IBAction func secondButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "StoryboardVC", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "StoryboardVCID")
        
        navigationController?.present(controller,
                                      animated: true,
                                      completion: nil)
    }
    
    @IBAction func thirdButtonAction(_ sender: Any) {
        let controller = VCViewController()
        
        navigationController?.present(controller,
                                      animated: true,
                                      completion: nil)
    }
}

