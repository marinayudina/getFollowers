//
//  SearchVC.swift
//  getFollowers
//
//  Created by Марина on 06.01.2024.
//

import UIKit

class SearchVC: UIViewController {

    let logoImageView = UIImageView()
    let usernameTF = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get followers")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        addConstraints()
        createKeyboardGesture()
        view.backgroundColor = .systemBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func setUpView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
        logoImageView.contentMode = .scaleAspectFit
        
        
        view.addSubview(usernameTF)
        
        view.addSubview(callToActionButton)
        
    }
    
    func createKeyboardGesture() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }
}

extension SearchVC {
    func addConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            
            usernameTF.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            usernameTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTF.heightAnchor.constraint(equalTo: logoImageView.heightAnchor, multiplier: 1 / 4),
            
            
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalTo: logoImageView.heightAnchor, multiplier: 1 / 4)
        ])
    }
}
