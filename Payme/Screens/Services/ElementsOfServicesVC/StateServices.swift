//
//  StateServices.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

struct TextData {
    let title: String
    let description: String
    let image: UIImage
}

class StateServices: UIViewController {
    
    let ordersButton = UIButton()
    let tableView = UITableView()
    
    private var dataArray: [TextData] = [
        TextData(title: "Справки", description: "Адресная справка, сведения о начислении зарплаты и др.",
                 image: UIImage(systemName: "doc")!),
        TextData(title: "Бизнес и финансы", description: "Данные организаций и др.",
                 image: UIImage(systemName: "case")!),
        TextData(title: "Для автомобилистов", description: "Проверка страхового полиса, информация об авто и др.",
                 image: UIImage(systemName: "car")!),
        TextData(title: "Семья и дети", description: "Проверка очереди в детский сад и др.",
                 image: UIImage(systemName: "person.3")!),
        TextData(title: "БПИ", description: "Данный сервис позволяет отслеживать задолженности по исполнительным документам.",
                 image: UIImage(systemName: "shield.lefthalf.fill")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Категории"
        
        let leftButton = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"),
            style: .plain, target: self, action:
                #selector(leftButtonTapped)
        )
        tabBarController?.tabBar.isHidden = true
        
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        
        view.backgroundColor = .rgb(245, 246, 248)
        
        view.addSubview(tableView)
        view.addSubview(ordersButton)
        
        tableView.frame = view.frame
        tableView.isScrollEnabled = false
        tableView.register(StateServicesCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        
        ordersButton.setTitle("Мои заявки", for: .normal)
        ordersButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
        ordersButton.titleLabel?.textAlignment = .right
        ordersButton.setTitleColor(.black, for: .normal)
        ordersButton.translatesAutoresizingMaskIntoConstraints = false
        ordersButton.layer.cornerRadius = 10
        ordersButton.backgroundColor = .white
        
        ordersButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        ordersButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        ordersButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 800).isActive = true
        ordersButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarController?.tabBar.isHidden = false
    }
    
    @objc func leftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}

extension StateServices: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! StateServicesCell
        
        cell.selectionStyle = .none
        cell.backgroundColor = .rgb(245, 246, 248)
        
        cell.titleLabel.text = dataArray[indexPath.row].title
        cell.descriptionLabel.text = dataArray[indexPath.row].description
        cell.image.image = dataArray[indexPath.row].image
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
