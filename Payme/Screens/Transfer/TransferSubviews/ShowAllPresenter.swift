//
//  ShowAllPresenter.swift
//  Payme
//
//  Created by Ахмад Аброров on 31/01/24.
//

import UIKit

protocol ShowAllPresenterable: AnyObject {
    func cellForRowAt(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell
}

var showAllData: [ShowAllData] = [
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "akfnkjhklfq qljjkqh", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
    ShowAllData(name: "Abrorov Ahmadbek", card: "5440 99** **** 9138"),
]

final class ShowAllPresenter: ShowAllPresenterable {
    func cellForRowAt(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ShowAllCell else { return UITableViewCell() }
        
        cell.nameLabel.text = showAllData[indexPath.row].name
        cell.cardLabel.text = showAllData[indexPath.row].card
        cell.selectionStyle = .none
        
        cell.backgroundColor = .clear
        return cell
    }
}
