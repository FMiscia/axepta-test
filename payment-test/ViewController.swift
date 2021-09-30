//
//  ViewController.swift
//  payment-test
//
//  Created by Francesco Miscia on 14/09/21.
//

import UIKit
import AxeptaSDKClient

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        Axepta.shared.createPaymentContext("payment-id", countryCode: "IT", present: true)
    }
}

extension ViewController: AxeptaSDKClient.PaymentDelegate {
  func enablePayButton(enabled: Bool) {
  }
  
  func onPaymentFinished() {
    print("iap: onPaymentFinished")
  }
  
  func onPaymentError(titolo: String?, messaggio: String?) {
    print("iap: onPaymentError")
  }
  
  func onPaymentCanceled() {
    print("iap: onPaymentCanceled")
  }
}

