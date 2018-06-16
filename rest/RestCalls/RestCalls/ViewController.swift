//
//  ViewController.swift
//  RestCalls
//
//  Created by Michael Vieth on 6/15/18.
//  Copyright © 2018 Michael Vieth. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    private func restCall()
    {
        let url = "https://jsonplaceholder.typicode.com/posts"
        
        Alamofire.request(url).responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let json = JSON(responseData.result.value!)
                print(json)
                for item in json.array!
                {
                    print("---------------")
                    print(item)
                    print(item["title"])
                }
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        restCall()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

