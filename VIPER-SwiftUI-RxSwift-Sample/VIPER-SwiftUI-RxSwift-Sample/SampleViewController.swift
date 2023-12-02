//
//  ViewController.swift
//  VIPER-SwiftUI-RxSwift-Sample
//
//  Created by home on 2023/11/29.
//

import UIKit
import SwiftUI
import RxSwift
import RxCocoa

class SampleViewController: UIViewController {
    private var dataSource: SampleView.DataSource = .init()
    
    private var presenter = Presenter()
    
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let rootView = SampleView(delegate: self, dataSource: dataSource)
        let hostingVC = UIHostingController(rootView: rootView)
        addChild(hostingVC)
        hostingVC.didMove(toParent: self)
        view.addSubview(hostingVC.view)
        hostingVC.view.translatesAutoresizingMaskIntoConstraints = false
        hostingVC.view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        hostingVC.view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        presenter.cartProducts
            .bind(to: dataSource.rx.cartProducts)
            .disposed(by: disposeBag)
    }
}

extension SampleViewController: SampleViewDelegate {
    func SampleViewDidTapOrderButton() {
        print("SampleViewDidTapOrderButton")
    }
}

