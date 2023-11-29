//
//  SampleView.swift
//  VIPER-SwiftUI-RxSwift-Sample
//
//  Created by home on 2023/11/29.
//

import SwiftUI
import RxSwift

protocol SampleViewDelegate: AnyObject {
    func SampleViewDidTapOrderButton()
}

struct SampleView: View {
    class DataSource: ObservableObject, ReactiveCompatible {
        @Published var isOrderProcessing: Bool = false
        @Published var cartProducts: [String] = []
    }
    
    weak var delegate: SampleViewDelegate?
    @ObservedObject var dataSource: DataSource
    
    var body: some View {
    }
}

