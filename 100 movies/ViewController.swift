//
//  ViewController.swift
//  100 movies
//
//  Created by Jaroslav Bažant on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    var pole = PickANumber()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pole.LoadNumbers()
        print("----------------------------------------------------------")
        print(pole.movies)
        print("----------------------------------------------------------")
        pole.PickNumber()
        print("Picking movie number: \(pole.pickedMovie)")
        // Do any additional setup after loading the view.
    }


}

