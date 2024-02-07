//
//  ServicesPresenter.swift
//  Payme
//
//  Created by Ахмад Аброров on 25/01/24.
//

import UIKit

protocol ServicesViewPresenterable: AnyObject {
    func didSelectRowAt(tableView:UITableView, at indexPath: IndexPath)
    func cellForRowAt(tableView:UITableView, at indexPath: IndexPath) -> UITableViewCell
    func getNavigation(_ navigation: UINavigationController?)
}

final class ServicesPresenter: ServicesViewPresenterable {
    
    private let mainView = ServicesView()
    
    private var navigationController: UINavigationController?
    
    func getNavigation(_ navigation: UINavigationController?) {
        navigationController = navigation
    }
    
    func didSelectRowAt(tableView: UITableView, at indexPath: IndexPath) {
        let goals = PaymeGoalsVC()
        let state = StateServices()
        let reminders = RemindersVC()
        let cashFlow = CashFlowSettingsVC()
        let tickets = TicketsVC()
        
        switch indexPath.row {
        case 0:
            navigationController?.pushViewController(goals, animated: true)
        case 1:
            navigationController?.pushViewController(state, animated: true)
        case 2:
            navigationController?.pushViewController(cashFlow, animated: true)
        case 3:
            navigationController?.pushViewController(reminders, animated: true)
        case 4:
            break
        case 5:
            navigationController?.pushViewController(tickets, animated: true)
        default:
            break
        }
    }
    
    func cellForRowAt(tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ServicesCell
        cell.cellView.backgroundColor = .white
        cell.backgroundColor = .init(UIColor(red: 247/255, green: 248/255, blue: 249/255, alpha: 1))
        
        cell.selectionStyle = .none
        
        cell.titleLabel.text = mainView.dataArray[indexPath.row].title
        cell.descriptionLabel.text = mainView.dataArray[indexPath.row].description
        cell.titleLabel.frame = mainView.dataArray[indexPath.row].size
        cell.image.image = mainView.dataArray[indexPath.row].image
        
        return cell
    }
  
}
