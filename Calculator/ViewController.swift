//
//  ViewController.swift
//  Calculator
//
//  Created by Solomon Opoku on 4/13/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let resultLabel = ResultView()
        let inputAC = InputButton(buttonText: "C")
        let inputPosNeg = InputButton(buttonText: "+/-")
        let inputModulo = InputButton(buttonText: "%")
        let inputDiv = InputButton(buttonText: "÷",buttonColor: .white, backgroundColor: .orange)
        
    
        
        
        let resultContainerView = UIView()
        resultContainerView.backgroundColor = .clear
        resultContainerView.translatesAutoresizingMaskIntoConstraints = false
        resultContainerView.addSubview(resultLabel)
        
        let operatorContainer = UIStackView()
        operatorContainer.axis = .horizontal
        operatorContainer.distribution = .fillEqually
        operatorContainer.alignment = .fill
        operatorContainer.translatesAutoresizingMaskIntoConstraints = false
        operatorContainer.backgroundColor = .clear
        operatorContainer.spacing = 5
        operatorContainer.addArrangedSubview(inputAC)
        operatorContainer.addArrangedSubview(inputPosNeg)
        operatorContainer.addArrangedSubview(inputModulo)
        operatorContainer.addArrangedSubview(inputDiv)
        
        
        view.addSubview(resultContainerView)
        view.addSubview(operatorContainer)
        
    
        
        
        NSLayoutConstraint.activate([
            
            resultContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            resultContainerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            resultContainerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            resultContainerView.heightAnchor.constraint(equalToConstant: 100),
            
            // Constraints resultLabel
            
            resultLabel.topAnchor.constraint(equalTo: resultContainerView.topAnchor),
            resultLabel.bottomAnchor.constraint(equalTo: resultContainerView.bottomAnchor),
            resultLabel.trailingAnchor.constraint(equalTo: resultContainerView.trailingAnchor),
            
//             Constraints inputButtons
            inputAC.centerYAnchor.constraint(equalTo: operatorContainer.centerYAnchor),
            inputAC.topAnchor.constraint(greaterThanOrEqualTo: operatorContainer.topAnchor, constant: 5),
            inputAC.bottomAnchor.constraint(lessThanOrEqualTo: operatorContainer.bottomAnchor, constant: 10),
            
            
            //Constraints InputButton
            operatorContainer.topAnchor.constraint(equalTo: resultContainerView.bottomAnchor, constant: 20),
            operatorContainer.leadingAnchor.constraint(equalTo: resultContainerView.leadingAnchor),
            operatorContainer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            operatorContainer.heightAnchor.constraint(equalToConstant: 50 * 2)
            
           
            
            
        ])
        
        resultLabel.frame = resultContainerView.bounds
        resultLabel.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
    }

}








