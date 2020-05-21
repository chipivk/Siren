//
//  CustomAlertViewController.swift
//  Example
//
//  Created by Carlos López Fernández on 21/05/2020.
//  Copyright © 2020 Sabintsev iOS Projects. All rights reserved.
//

import UIKit
import Siren

class CustomAlertViewController: UIViewController {

    var alertMessage: String = ""
    var alertTitle: String = ""
    var nextTimeButtonTitle: String = ""
    var skipButtonTitle: String = ""
    var updateButtonTitle: String = ""

    var updateHandler: (() -> Void)?
    var nextTimeHandler: (() -> Void)?
    var skipHandler: (() -> Void)?

    @IBOutlet fileprivate weak var alertTitleLabel: UILabel!
    @IBOutlet fileprivate weak var alertMessageLabel: UILabel!
    @IBOutlet fileprivate weak var updateButton: UIButton!
    @IBOutlet fileprivate weak var nextTimeButton: UIButton!
    @IBOutlet fileprivate weak var skipButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }

    func configureView() {
        alertTitleLabel.text = alertTitle
        alertMessageLabel.text = alertMessage
        updateButton.setTitle(updateButtonTitle, for: .normal)
        nextTimeButton.setTitle(nextTimeButtonTitle, for: .normal)
        skipButton.setTitle(skipButtonTitle, for: .normal)

        updateButton.isHidden = updateHandler == nil
        nextTimeButton.isHidden = nextTimeHandler == nil
        skipButton.isHidden = skipHandler == nil
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func updateButtonEvent(_ sender: UIButton) {
        updateHandler?()
    }

    @IBAction func nextTimeButtonEvent(_ sender: UIButton) {
        nextTimeHandler?()
    }

    @IBAction func skipButtonEvent(_ sender: UIButton) {
        skipHandler?()
    }
}

extension CustomAlertViewController: SirenCustomViewControllerInterface {

}
