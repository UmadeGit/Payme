//
//  TransferVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 16/01/24.
//

import UIKit

 class TransferVC: UIViewController {
    
    private let mainView = TransferView()
    
    private let presenter: TransferPresenterable
    
    init(presenter: TransferPresenterable) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Перевод средств"
        
        mainView.receiversCollectionView.delegate = self
        mainView.receiversCollectionView.dataSource = self
        mainView.tf.delegate = self
        mainView.receiversButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        mainView.exchangeCurrencyButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)

    }
    
    @objc func buttonTapped() {
        navigationController?.pushViewController(ShowAllReceiversVC(presenter: ShowAllPresenter()), animated: true)
    }
    
    @objc func tapped() {
        navigationController?.pushViewController(ExchangeCurrencyVC(), animated: true)
    }
    
}

extension TransferVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UITextFieldDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        presenter.numberOfItems(in: section)
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        presenter.cellForItem(collectionView: collectionView, at: indexPath)
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int
    ) -> UIEdgeInsets {
        .init(top: 52, left: 30, bottom: 22, right: 10)
    }
    
    func textField(_ tf: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        presenter.shouldChangeCharactersIn(mainView.tf, range: range, string: string)
    }
}
