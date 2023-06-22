//
//  ViewController.swift
//  ecommerce_UI
//
//  Created by Kavin Jha on 21/06/23.
//

import UIKit

class ViewController: UIViewController {
    private let loginButton = UIButton()
    private let createButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetupForLogin()
        initialSetupForCreateAccount()
        
        makeButtonRounded(loginButton)
        makeButtonRounded(createButton)
    }
    private func initialSetupForLogin(){
        
        
        // basic setup
              view.backgroundColor = .white
              navigationItem.title = "UIButton"
                
              // log in button customization
              loginButton.setTitle("Sign in", for: .normal)
              loginButton.setTitleColor(.red, for: .normal)
                
              // adding the constraints to the login button
              view.addSubview(loginButton)
        
              loginButton.translatesAutoresizingMaskIntoConstraints = false
        
            
              loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo:view.topAnchor, constant: 480).isActive = true
              loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
              loginButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        
        loginButton.addTarget(self, action:#selector (didTapButton), for: .touchUpInside)
        
        
    print("Hello from Develop")
        
    }
    
    private func initialSetupForCreateAccount(){
        
        
        // basic setup
              view.backgroundColor = .white
              navigationItem.title = "UIButton"
                
              // create account button customization
              createButton.setTitle("Create Account", for: .normal)
              createButton.setTitleColor(.red, for: .normal)
                
              // adding the constraints to the login button
              view.addSubview(createButton)
        
              createButton.translatesAutoresizingMaskIntoConstraints = false
        
            
              createButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        createButton.topAnchor.constraint(equalTo:view.topAnchor, constant: 570).isActive = true
              createButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
              createButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        createButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
    
        
    }
    
    private func makeButtonRounded(_ button: UIButton){
        
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 1.5
        button.layer.cornerRadius = 25.0
        button.layer.masksToBounds = true
    }
    
    @objc func didTapButton(){
     //tab bar controller
    
       
        let rootvc = secondViewController()
        let navVC = UINavigationController(rootViewController: rootvc)
        
       
        
        navVC.modalPresentationStyle = .fullScreen
        present (navVC, animated: false)
    }
    
    

}


class secondViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissSelf))
        
       
        
        
    }
    
        
    
    
    @objc private func dismissSelf(){
        
        dismiss(animated: true, completion: nil)
        
    }
    
    private func Background(){
        
    
        
        
           }
        
        
    }
    

