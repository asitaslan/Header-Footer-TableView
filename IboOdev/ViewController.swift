//
//  ViewController.swift
//  IboOdev
//
//  Created by Asit Aslan on 12.02.2021.
//  Copyright © 2021 Asit Aslan. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    
    @IBOutlet weak var talepButton: UIButton!
    @IBOutlet weak var stack2: UIStackView!
    @IBOutlet weak var stack1: UIStackView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var stack1Image: UIImageView!
    
    @IBOutlet weak var stack1Lbl: UILabel!
    
    @IBOutlet weak var stack1View: UIView!
    
    @IBOutlet weak var stack2Image: UIImageView!
    @IBOutlet weak var stack2Lbl: UILabel!
    
    @IBOutlet weak var stack2View: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        talepButton.layer.cornerRadius = 8.0
        talepButton.clipsToBounds = true
        
      let gesture = UITapGestureRecognizer(target: self, action:  #selector (self.selectStack (_:)))
      self.stack1.addGestureRecognizer(gesture)
        let gestrue2 = UITapGestureRecognizer(target: self, action: #selector(self.selectStack2(_:)))
        self.stack2.addGestureRecognizer(gestrue2)
      
    }
   
    @objc func selectStack(_ sender: UIGestureRecognizer){
       
       stack1Lbl.textColor = .green
       stack1View.backgroundColor = .green
       stack1Image.tintColor = .green
       stack2Image.tintColor = .gray
       stack2Lbl.textColor = .gray
       stack2View.backgroundColor = .gray
    }
    @objc func selectStack2(_ sender: UIGestureRecognizer){
       
       stack1Lbl.textColor = .gray
       stack1View.backgroundColor = .gray
       stack1Image.tintColor = .gray
        stack2Image.tintColor = .green
        stack2Lbl.textColor = .green
        stack2View.backgroundColor = .green
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 10
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        return cell
      }
    
    

}

