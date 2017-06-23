//
//  CustomCellViewController.swift
//  MyApp08
//
//  Created by iii on 2017/6/22.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class CustomCellViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableview: UITableView!
    
    private let mydata = ["Item1", "Item2", "Item3", "Item4",
                          "Item1", "Item2", "Item3", "Item4",
                          "Item1", "Item2", "Item3", "Item4"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return mydata.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customecell")
            as! CustomTableViewCell //父轉子
        
        cell.img.image = UIImage(named: "apple.jpg")
        cell.title.text = mydata[indexPath.row]
        cell.content.text = "1234567"
        
        cell.img.layer.cornerRadius = 80
        cell.img.clipsToBounds = true
        
        return cell
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
