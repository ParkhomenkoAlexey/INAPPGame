//
//  SubscriptionVC.swift
//  INAPPGame
//
//  Created by Алексей Пархоменко on 05.10.2020.
//

import UIKit

class SubscriptionVC: UIViewController {
    
    let backButton = UIButton(type: .system)
    let buyButton = UIButton(type: .system)
    let buyLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        buyLabel.text = "Купить подписку за.."
        
        buyButton.setTitle("Купить подписку", for: .normal)
        buyButton.addTarget(self, action: #selector(buyButtonTapped), for: .touchUpInside)
        
        backButton.setTitle("Назад", for: .normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        buyButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        buyLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buyButton)
        view.addSubview(buyLabel)
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
            buyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buyButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            buyButton.widthAnchor.constraint(equalToConstant: 200),
            buyButton.heightAnchor.constraint(equalToConstant: 30),
        ])
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            backButton.widthAnchor.constraint(equalToConstant: 100),
            backButton.heightAnchor.constraint(equalToConstant: 30),
        ])
        
        NSLayoutConstraint.activate([
            buyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buyLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
        ])
    }
    
    @objc func buyButtonTapped() {
        
    }
    
    @objc func backButtonTapped() {
        dismiss(animated: true, completion: nil)
    }


}
