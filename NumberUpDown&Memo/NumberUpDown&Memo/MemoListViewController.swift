//
//  MemoListViewController.swift
//  NumberUpDown&Memo
//
//  Created by 조상호 on 2020/11/06.
//  Copyright © 2020 조상호. All rights reserved.
//

import UIKit

class MemoListViewController: UIViewController {
    
    var data = [Int]()
    var n = 0
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func add(_ sender: Any) {
        n += 1
        data.append(n)
        tableView.reloadData()
        
        
    }
    

}

extension MemoListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        return cell
        
    }
}

extension MemoListViewController: UITableViewDelegate {
    
}

extension MemoListViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("p")
        return true
    }
}
		
