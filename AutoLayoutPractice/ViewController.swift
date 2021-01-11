//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by Neil on 09/01/21.
//

import UIKit

class ViewController: UIViewController {

    
    let vcc = NewViewController()
    weak var testView: UIView!

    @IBAction func popBtn(_ sender: Any) {
        navigationController?.pushViewController(vcc, animated: true)
    }
    override func loadView() {
        super.loadView()

        let testView = UIView(frame: .zero)
        testView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(testView)
        NSLayoutConstraint.activate([
            testView.widthAnchor.constraint(equalToConstant: 80),
            testView.widthAnchor.constraint(equalTo: testView.heightAnchor),
            testView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            testView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
        self.testView = testView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.testView.backgroundColor = .red
    }
}
