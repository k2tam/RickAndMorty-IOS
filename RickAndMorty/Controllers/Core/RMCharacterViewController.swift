//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by k2 tam on 24/08/2023.
//

import UIKit

/// Controller to show and search for Characters
class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParamaters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        

        print(request.url)
        
       
    }
    
  

}
