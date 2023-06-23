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
        
        
    print("Hello from Feature Branch")
        
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
        present (navVC, animated: true)
    }
    
    

}


class secondViewController: UIViewController, UITableViewDataSource{
    
    
    let fruits = [
    
        Fruit(name:"Apple", Image: "fruit_apple", Price: "5"),
        Fruit(name:"Cherry", Image: "fruit_cherry", Price: "5"),
        Fruit(name:"Grape", Image: "fruit_grapes", Price: "5"),
        Fruit(name:"Melon", Image: "fruit_melon", Price: "5"),
        Fruit(name:"Orange", Image: "fruit_orange", Price: "5"),
        Fruit(name:"Pear", Image: "fruit_pear", Price: "5"),
        Fruit(name:"Pomegranate", Image: "fruit_pomegranate", Price: "5"),
        ]
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.register(CustomCell.self, forCellReuseIdentifier:"cell")
        tableView.rowHeight = 130
        
        
        view.backgroundColor = .systemGray6
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissSelf))
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
   //for custom cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
        let fruit = fruits[indexPath.row]
        cell.fruitImage.image = UIImage(named: fruit.Image)
        cell.fruitName.text = fruit.name
        cell.fruitPrice.text = "Rs \(fruit.Price)"
    
        return cell
    }
    
    struct Fruit{
        
        var name:String
        var Image:String
        var Price:String
    }
    
    class CustomCell: UITableViewCell {
        
        let fruitImage = UIImageView()
        let fruitName = UILabel()
        let fruitPrice = UILabel()
        
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            addSubview(fruitName)
            addSubview(fruitImage)
            addSubview(fruitPrice)
            
            fruitImage.frame = CGRect(x: 20, y: 20, width: 100, height: 100)
            fruitName.frame = CGRect(x: 120, y: 20, width: 120, height: 30)
            fruitPrice.frame = CGRect(x: 120, y: 60, width: 120, height: 30)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
        
    
    
    @objc private func dismissSelf(){
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
        
        
    }
    

