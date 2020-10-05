//
//  GameVC.swift
//  INAPPGame
//
//  Created by Алексей Пархоменко on 05.10.2020.
//

import UIKit

class GameVC: UIViewController {
    
    let getResultButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        getResultButton.setTitle("Get Result", for: .normal)
        getResultButton.addTarget(self, action: #selector(getResultButtonTapped), for: .touchUpInside)
        
        getResultButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(getResultButton)
        
        NSLayoutConstraint.activate([
            getResultButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            getResultButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
           
            getResultButton.widthAnchor.constraint(equalToConstant: 100),
            getResultButton.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    @objc func getResultButtonTapped() {
        
    }


}
