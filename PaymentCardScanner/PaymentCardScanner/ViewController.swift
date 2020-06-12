//
//  ViewController.swift
//  PaymentCardScanner
//
//  Created by Anurag Ajwani on 12/06/2020.
//  Copyright © 2020 Anurag Ajwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!

    @IBAction func scanPaymentCard(_ sender: Any) {
        let paymentCardExtractionViewController = PaymentCardExtractionViewController(resultsHandler: { paymentCardNumber in
            self.resultsLabel.text = paymentCardNumber
            self.dismiss(animated: true, completion: nil)
        })
        paymentCardExtractionViewController.modalPresentationStyle = .fullScreen
        self.present(paymentCardExtractionViewController, animated: true, completion: nil)
    }
}

