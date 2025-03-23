//
//  MyTable06ViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 23/03/25.
//

import UIKit

class MyTable06ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTApButtonOne(){
        let vc = MyTable06TableViewController()
        vc.model = [
            ("apple",{
                print("apple")
            }),("mango",{
                print("mango")
            })
            ]
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func didTApButtonTwo(){
        let vc = MyTable06TableViewController()
        vc.model = [
            ("first",{
                print("first")
            }),("second",{
                print("second")
            })
            ]
        navigationController?.pushViewController(vc, animated: true)
    }

}
