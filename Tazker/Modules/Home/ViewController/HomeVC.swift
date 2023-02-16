//
//  HomeVC.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import UIKit

class HomeVC: BaseVC {

    var homeVM : HomeVM!
    
    override
    func viewDidLoad() {
        super.viewDidLoad()
        self.homeVM = HomeVM()
    }

}
