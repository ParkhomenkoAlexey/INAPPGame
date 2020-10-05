//
//  MainViewController.swift
//  INAPPGame
//
//  Created by Алексей Пархоменко on 05.10.2020.
//

import UIKit

class MainViewController: UIViewController {
    
    let gameButton = UIButton(type: .system)
    let settingsButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        showSub()
        
        // -----------------------
        gameButton.setTitle("Go to Game", for: .normal)
        settingsButton.setTitle("Go to Settings", for: .normal)
        
        gameButton.addTarget(self, action: #selector(gameButtonTapped), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(settingsButtonButtonTapped), for: .touchUpInside)
        
        gameButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gameButton)
        view.addSubview(settingsButton)
        NSLayoutConstraint.activate([
            gameButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            gameButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            settingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            settingsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            gameButton.widthAnchor.constraint(equalToConstant: 100),
            gameButton.heightAnchor.constraint(equalToConstant: 30),
            settingsButton.widthAnchor.constraint(equalToConstant: 100),
            settingsButton.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func showSub() {
        
        // если подписки нет
        if 5 == 5 {
            let vc = SubscriptionVC()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
        
    }
    
    @objc func gameButtonTapped() {
        navigationController?.pushViewController(GameVC(), animated: true)
    }
    
    @objc func settingsButtonButtonTapped() {
        navigationController?.pushViewController(SettingsVC(), animated: true)
    }


}

