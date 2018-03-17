//
//  ViewController.swift
//  Demo
//
//  Created by Pablo Guardiola on 10/03/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import UIKit
import SwiftBasics

class ViewController: UIViewController {
        
    let postUrl = "http://monohgamub.cluster011.ovh.net/englishApp/index.php/en/app_controller/getGMTTimeInterval"
    let getUrl = "https://jsonplaceholder.typicode.com/photos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkApi(url: postUrl).post(
            parameters: nil
        ) { result, error in
            
            guard
                error == nil,
                let result = result
            else {
                print(error ?? "")
                return
            }
            
            print(result)
        }
        
        NetworkApi(url: getUrl).get(
            parameters: nil
        ) { result, error in
            
            guard
                error == nil,
                let result = result
            else {
                print(error ?? "")
                return
            }
            
            print(result)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

