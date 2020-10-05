//
//  SettingsVC.swift
//  INAPPGame
//
//  Created by Алексей Пархоменко on 05.10.2020.
//

import UIKit

class SettingsVC: UIViewController {
    
    let subVCButton = UIButton(type: .system)
    let restoreButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        subVCButton.setTitle("Go to SubVC", for: .normal)
        restoreButton.setTitle("Restore", for: .normal)
        
        subVCButton.addTarget(self, action: #selector(subVCButtonTapped), for: .touchUpInside)
        restoreButton.addTarget(self, action: #selector(restoreButtonButtonTapped), for: .touchUpInside)
        
        subVCButton.translatesAutoresizingMaskIntoConstraints = false
        restoreButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subVCButton)
        view.addSubview(restoreButton)
        NSLayoutConstraint.activate([
            subVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            subVCButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            restoreButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            restoreButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            subVCButton.widthAnchor.constraint(equalToConstant: 100),
            subVCButton.heightAnchor.constraint(equalToConstant: 30),
            restoreButton.widthAnchor.constraint(equalToConstant: 100),
            restoreButton.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc func subVCButtonTapped() {
        let vc = SubscriptionVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @objc func restoreButtonButtonTapped() {
        
    }


}
