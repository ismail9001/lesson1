//
//  ViewController.swift
//  lesson1
//
//  Created by macbook on 09.09.2020.
//  Copyright © 2020 Iskander Nizamov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1 квадратное уравнение x2 − 8x + 12 = 0;
        
        let koef1 = 1.0;
        let koef2 = -8.0;
        let koef3 = 12.0;
        let d = koef2 * koef2 - 4 * koef1 * koef3;
        print ("discriminant = " + String(d));
        
        // дискриминант > 0, следовательно, имеем два корня
        let x1 = koef2 * -1 + sqrt(d) / 2 * koef1;
        let x2 = koef2 * -1 - sqrt(d) / 2 * koef1;
        
        print ("root 1 = " + String(x1));
        print ("root 2 = " + String(x2));
        
        //2 найти параметры треугольника
        
        let a = 3.0;
        let b = 4.0;
        
        //гипотенуза
        let c = sqrt(a * a + b * b);
        print("hypotenuse = " + String(c));
        
        //периметр
        let perimeter = a + b + c;
        print("perimeter = " + String(perimeter));
        
        // площадь по формуле Герона
        let half = perimeter / 2;
        let square = sqrt(half * (half - a) * (half - b) * (half - c));
        print("square = " + String(square));
        
        //3 найти сумму вклада через 5 лет
        
        var depo = 1000.0;
        let percent = 10.0;
        for _ in 1...5 {
            depo = depo + depo / 100 * percent;
        }
        print ("depo after 5 years = " + String(format: "%.2f", depo));
    }


}

