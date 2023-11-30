//
//  SamplePresenter.swift
//  VIPER-SwiftUI-RxSwift-Sample
//
//  Created by home on 2023/11/29.
//

import Foundation
import RxSwift
import RxCocoa

class Presenter {
    var isOrderProcessing = BehaviorRelay<Bool>(value: false)
    var cartProducts = BehaviorRelay<[String]>(value: [])
}
