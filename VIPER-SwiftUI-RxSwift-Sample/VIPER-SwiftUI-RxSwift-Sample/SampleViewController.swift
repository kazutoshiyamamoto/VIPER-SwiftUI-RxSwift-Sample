//
//  ViewController.swift
//  VIPER-SwiftUI-RxSwift-Sample
//
//  Created by home on 2023/11/29.
//

import UIKit
import SwiftUI

class SampleViewController: UIViewController {
    private var dataSource: SampleView.DataSource = .init()
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
    }

extension SampleViewController: SampleViewDelegate {
    func SampleViewDidTapOrderButton() {
        print("SampleViewDidTapOrderButton")
    }
}

