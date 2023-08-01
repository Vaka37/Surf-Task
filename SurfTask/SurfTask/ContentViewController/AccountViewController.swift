//
//  ViewController.swift
//  SurfTask
//
//  Created by Kalandarov Vakil on 01.08.2023.
//

import UIKit

final class AccountViewController: UIViewController {
    
    lazy var accountTableView: UITableView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.delegate = self
        $0.dataSource = self
        $0.separatorStyle = .none
        $0.indicatorStyle = .white
        $0.register(AccountViewCell.self, forCellReuseIdentifier:  AccountViewCell().identefire)
        $0.register(SkillsCell.self, forCellReuseIdentifier: SkillsCell().identefire)
        $0.register(AboutCell.self, forCellReuseIdentifier: AboutCell().identefire)
        
        return $0
    }(UITableView())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createNavBar()
        createAccountTableView()
        createConstraint()
    }
    
    private func createNavBar(){
        title = "Профиль"
    }
    
    private func createAccountTableView(){
        accountTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(accountTableView)
    }
    
    
}

extension AccountViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: AccountViewCell().identefire, for: indexPath) as? AccountViewCell {
                cell.createCell()
                return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier:  SkillsCell().identefire, for: indexPath) as? SkillsCell {
                cell.createCell()
                cell.handler = {
                    self.showAlert()
                }
                return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier:  AboutCell().identefire, for: indexPath) as? AboutCell {
                cell.createCell()
                return cell
            }
        default:
            return UITableViewCell()
            
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row{
        case 0:
            return UIScreen.main.bounds.height/3
        case 1:
            return  UIScreen.main.bounds.height/3
        case 2:
            return  UIScreen.main.bounds.height/2
        default:
            return 100
        }
    }
}

extension AccountViewController{
    
    private func createConstraint(){
        NSLayoutConstraint.activate([
            accountTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            accountTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            accountTableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            accountTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
        ])
    }
}

