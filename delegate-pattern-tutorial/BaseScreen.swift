//
//  ViewController.swift
//  delegate-pattern-tutorial
//
//  Created by Arman Abkar on 11/11/21.
//

import UIKit

class BaseScreen: UIViewController, AlbumSelectionDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        selectionVC.albumSelectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
    
    func didTapChoice(image: UIImage, name: String) {
        mainImageView.image = image
        nameLabel.text = name
    }
    
}
