//
//  ViewController.swift
//  100 movies
//
//  Created by Jaroslav Bažant on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    var pole = PickANumber()
    
    @IBOutlet weak var pickedMovieLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pole.LoadNumbers()
    }

    @IBAction func movieSelected(_ sender: UIButton) {
        pole.PickNumber()
        pickedMovieLabel.text = pole.pickedMovie
        pickedMovieLabel.isHidden = false
    }
    
}

