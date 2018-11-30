//
//  myViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by TingxinLi on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class myViewController: UIViewController {

    
    @IBOutlet weak var myTableView: UITableView!
    
    var crayons = Crayon.allTheCrayons
 
    override func viewDidLoad() {
        super.viewDidLoad()
myTableView.dataSource = self
        title = "Crayons"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = myTableView.indexPathForSelectedRow,
            let CrayonDetailViewController = segue.destination as? CrayonDetailViewController else {
                return }
        let myCrayon = crayons[indexPath.row]
        
        CrayonDetailViewController.myCrayons = myCrayon
    }
    
    
    
}



extension myViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath) //as? CrayonCell else { fatalError() } // tableview。dequeue这个是为了让我们把Crayon的一些内容给提出来。
        let crayon = crayons[indexPath.row] //重新设一个let 避免我们下面call 的时候 重复输入【indexpath。row】
        
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex //
       
        cell.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: 1)
        
        return cell
    }
}


