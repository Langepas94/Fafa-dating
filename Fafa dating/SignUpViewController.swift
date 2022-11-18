//
//  SignUpViewController.swift
//  Fafa dating
//
//  Created by Артём Тюрморезов on 18.11.2022.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Good to see you", font: .avenir26())
    
    let emailLabel = UILabel(text: "Email", font: .avenir20())
    let passwordLabel = UILabel(text: "Password", font: .avenir20())
    let confirmLabel = UILabel(text: "Confirm password", font: .avenir20())
    let alreadyOnBoardLabel = UILabel(text: "Already onboard?", font: .avenir20())
    
    let emailTextField = OneLineTextField(font: .avenir20())
    let passwordTextField = OneLineTextField(font: .avenir20())
    let confirmTextField = OneLineTextField(font: .avenir20())
    
    let signUpButton = UIButton(title: "Sign up", backgroundColor: .buttonBlack(), titleColor: .white)
    let loginButton = UIButton()
    
    
    
                                         
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.buttonRed(), for: .normal)
        loginButton.titleLabel?.font = .avenir20()
        setupConstraints()
    }
    
}


import SwiftUI

struct SignUpViewControllerProvider: PreviewProvider {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    struct ContainerView: UIViewControllerRepresentable {
        
        let sighUpviewController = SignUpViewController()
        
        func makeUIViewController(context: Context) -> some SignUpViewController {
            return sighUpviewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
 // MARK: - Setup Constraints
extension SignUpViewController {
    private func setupConstraints() {
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField], axis: .vertical, spacing: 0)
        let confirmStackView = UIStackView(arrangedSubviews: [confirmLabel, confirmTextField], axis: .vertical, spacing: 0)
        
        signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true

        let stackView = UIStackView(arrangedSubviews: [emailStackView, passwordStackView, confirmStackView, signUpButton], axis: .vertical, spacing: 40)
        
        let bottomAlreadyLoginStackView = UIStackView(arrangedSubviews: [alreadyOnBoardLabel, loginButton], axis: .horizontal, spacing: -1)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomAlreadyLoginStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        view.addSubview(bottomAlreadyLoginStackView)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 160),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            bottomAlreadyLoginStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
            bottomAlreadyLoginStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            bottomAlreadyLoginStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -40)
            
        ])
       
    }
}
