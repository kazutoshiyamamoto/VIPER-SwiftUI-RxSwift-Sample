//
//  SampleView.swift
//  VIPER-SwiftUI-RxSwift-Sample
//
//  Created by home on 2023/11/29.
//

import SwiftUI
import RxSwift


struct SampleView: View {
    class DataSource: ObservableObject, ReactiveCompatible {
        @Published var isOrderProcessing: Bool = false
        @Published var cartProducts: [String] = []
    }
    
    @ObservedObject var dataSource: DataSource
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SampleView()
}
