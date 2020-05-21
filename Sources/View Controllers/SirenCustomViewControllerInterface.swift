//
//  SirenCustomViewControllerInterface.swift
//  Siren
//
//  Created by Carlos López Fernández on 18/05/2020.
//  Copyright © 2020 Sabintsev iOS Projects. All rights reserved.
//

import Foundation

public protocol SirenCustomViewControllerInterface: class {
    var alertMessage: String { get set }

    /// The main message of the `ViewController`.
    var alertTitle: String { get set }

    /// The "Next time" button text of the `ViewController`.
    var nextTimeButtonTitle: String { get set }

    /// The "Skip this version" button text of the `ViewController`.
    var skipButtonTitle: String { get set }

    /// The "Update" button text of the `ViewController`.
    var updateButtonTitle: String { get set }

    var updateHandler: (() -> Void)? { get set }
    var nextTimeHandler: (() -> Void)? { get set }
    var skipHandler: (() -> Void)? { get set }
}
