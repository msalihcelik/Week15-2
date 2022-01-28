//
//  ViewController.swift
//  Week15-2
//
//  Created by Mehmet Salih ÇELİK on 28.01.2022.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

class ViewController: UIViewController {
    
    private let numbersStackView = UIStackViewBuilder()
        .distribution(.fillEqually)
        .axis(.vertical)
        .spacing(10)
        .build()
    private let firstTextField = UITextFieldBuilder()
        .placeholder("İlk sayıyı giriniz.")
        .textAlignment(.center)
        .borderWidth(1)
        .build()
    private let secondTextField = UITextFieldBuilder()
        .textAlignment(.center)
        .placeholder("İkinci sayıyı giriniz.")
        .borderWidth(1)
        .build()
    
    private let multiplyButton = UIButtonBuilder()
        .title("Çarpma")
        .borderWidth(1)
        .build()
    private let divideButton = UIButtonBuilder()
        .title("Bölme")
        .borderWidth(1)
        .build()
    private let addButton = UIButtonBuilder()
        .title("Toplama")
        .borderWidth(1)
        .build()
    private let subButton = UIButtonBuilder()
        .title("Çıkarma")
        .borderWidth(1)
        .build()
    
    private let outputLabel = UILabelBuilder()
        .text("Sonuç")
        .textAlignment(.center)
        .build()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
