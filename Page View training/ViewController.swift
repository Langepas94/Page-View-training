//
//  ViewController.swift
//  Page View training
//
//  Created by Артём Тюрморезов on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startPresentation()
    }
    func startPresentation() {
        if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController {
            present(pageViewController, animated: true, completion: nil)
        }
}

}
