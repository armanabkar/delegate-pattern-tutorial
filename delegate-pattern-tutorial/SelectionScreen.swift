//
//  SelectionScreen.swift
//  delegate-pattern-tutorial
//
//  Created by Arman Abkar on 11/11/21.
//

import UIKit

protocol AlbumSelectionDelegate {
    func didTapChoice(image: UIImage, name: String)
}

class SelectionScreen: UIViewController {

    var albumSelectionDelegate: AlbumSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func blueBanistersTapped(_ sender: Any) {
        albumSelectionDelegate.didTapChoice(image: UIImage(named: "ultraviolence")!, name: "Ultraviolence")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func bornToDieTapped(_ sender: Any) {
        albumSelectionDelegate.didTapChoice(image: UIImage(named: "borntodie")!, name: "Born To Die")
        dismiss(animated: true, completion: nil)
    }

}
