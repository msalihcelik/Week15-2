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

// MARK: - SubViews
extension ViewController {
    
    private func addSubViews() {
        view.addSubview(numbersStackView)
        numbersStackView.addArrangedSubview(firstTextField)
        numbersStackView.addArrangedSubview(secondTextField)
        numbersStackView.edgesToSuperview(excluding: .bottom, insets: .init(top: 100, left: 100, bottom: 0, right: 100), usingSafeArea: true)
        
        view.addSubview(multiplyButton)
        multiplyButton.topToBottom(of: numbersStackView, offset: 100)
        multiplyButton.leftToSuperview().constant = 50
        multiplyButton.height((view.frame.width - (50 * 3)) / 2)
        multiplyButton.aspectRatio(1)
        
        view.addSubview(divideButton)
        divideButton.topToBottom(of: numbersStackView, offset: 100)
        divideButton.leadingToTrailing(of: multiplyButton, offset: 50)
        divideButton.size(to: multiplyButton)
        
        view.addSubview(addButton)
        addButton.topToBottom(of: multiplyButton, offset: 50)
        addButton.leading(to: multiplyButton)
        addButton.size(to: multiplyButton)
        
        view.addSubview(subButton)
        subButton.topToBottom(of: divideButton, offset: 50)
        subButton.leadingToTrailing(of: addButton, offset: 50)
        subButton.size(to: multiplyButton)
        
        view.addSubview(outputLabel)
        outputLabel.topToBottom(of: multiplyButton)
        outputLabel.bottomToTop(of: addButton)
        outputLabel.trailing(to: divideButton)
        outputLabel.leading(to: multiplyButton)
        
    }
}
