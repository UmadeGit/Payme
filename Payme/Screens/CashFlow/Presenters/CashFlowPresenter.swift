//
//  CashFlowPresenter.swift
//  Payme
//
//  Created by Ахмад Аброров on 26/01/24.
//

import UIKit	      

protocol CashFlowViewPresenterable: AnyObject {
    var sections: [CashFlowHeaderData] { get }
    var payments: [Payment] { get }
    func cellForRowAt(tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell
    func numberOfRows(in section: Int) -> Int
}

final class CashFlowPresenter: CashFlowViewPresenterable {
    
    var sections: [CashFlowHeaderData] = [
        CashFlowHeaderData(title: "21 Январь 2024", cost: "- 2 000.00 сум"),
        CashFlowHeaderData(title: "20 Январь 2024", cost: "- 131.00 сум"),
        CashFlowHeaderData(title: "19 Январь 2024", cost: "+ 11 699.54 сум"),
        CashFlowHeaderData(title: "18 Январь 2024", cost: "- 15 830.90 сум"),
        CashFlowHeaderData(title: "17 Январь 2024", cost: "+ 133 927.00 сум"),
        CashFlowHeaderData(title: "17 Январь 2024", cost: "+ 133 927.00 сум"),
        CashFlowHeaderData(title: "16 Январь 2024", cost: "- 11 699.54 сум"),
    ]
    var payments: [Payment] = [
        Payment(title: "OOO UZPAYNET", sum: "-2 000", time: "23:09"),
        Payment(title: "OOO ATTO TOLOV", sum: "-1 700", time: "21:00"),
        Payment(title: "OOO MAXWAY FOOD", sum: "-46 000", time: "15:09"),
        Payment(title: "OOO UZPAYNET", sum: "-140 000", time: "13:09"),
        Payment(title: "ASAKABANK HUMO P2P", sum: "+230 000", time: "12:09"),
        Payment(title: "OOO ATTO TOLOV", sum: "-1 700", time: "11:09"),
        Payment(title: "KHALK BANK", sum: "+56 000", time: "10:35"),
        
    ]
    
    func numberOfRows(in section: Int) -> Int {
        payments.count
    }
        
    func cellForRowAt(tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CashFlowCell
        
        if payments[indexPath.row].sum.contains("+") {
            cell.sumLabel.textColor = .rgb(100, 203, 206)
            cell.currencyLabel.textColor = .rgb(100, 203, 206)
        } else {
            cell.sumLabel.textColor = .black
            cell.currencyLabel.textColor = .black
        }
        
        cell.selectionStyle = .none
        
        cell.backgroundColor = .white
        
        cell.organizationLabel.text = payments[indexPath.row].title
        cell.sumLabel.text = payments[indexPath.row].sum
        cell.timeLabel.text = payments[indexPath.row].time
        
        return cell
    }
}
