//
//  FirstViewController.swift
//  MyCoolAnimations
//
//  Created by Muhammad Umer on 03/10/2021.
//  Copyright © 2021 Muhammad Umer. All rights reserved.
//

import UIKit
import ViewAnimator

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemPurple
        
        myView.animate(animations: [AnimationType.rotate(angle: .pi/5)], delay: 2, duration: 2)
    }
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemPurple
        
        myView.animate(animations: [AnimationType.zoom(scale: 4)], delay: 2, duration: 2)
    }
}
class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemOrange
        
        let animations: [Animation] = [
            AnimationType.from(direction: .bottom, offset: 300),
            AnimationType.rotate(angle: .pi/4),
            AnimationType.zoom(scale: 3)
        ]
        
        myView.animate(animations: animations, delay: 2, duration: 2)
    }
}

class RandomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemGreen
        
        myView.animate(animations: [AnimationType.random()], delay: 2, duration: 2)
    }
}
