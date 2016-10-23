//
//  ViewController.swift
//  sampleJSON002
//
//  Created by Eriko Ichinohe on 2016/02/02.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //-- json.txtファイルを読み込んで
        let path = Bundle.main.path(forResource: "json", ofType: "txt")
        let jsondata = try? Data(contentsOf: URL(fileURLWithPath: path!))
        //-- 配列データに変換して
        let jsonArray = (try! JSONSerialization.jsonObject(with: jsondata!, options: [])) as! NSArray
        //--  配列の個数だけ繰り返して表示する
        for dat in jsonArray {
            var d1 = dat["name"] as! String
            var d2 = dat["price"] as! Int
            
            print("name[\(d1)] price[\(d2)]")
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

