//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Алмаз Атабаев on 9/2/23.
//

import UIKit


/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
         
        let request = RMRequest(
            endpoint: .character,
            queryParametres: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
    }

}
