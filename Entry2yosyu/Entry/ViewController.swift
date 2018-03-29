//
//  ViewController.swift
//  Entry
//
//  Created by User8 on 2017/12/21.
//  Copyright © 2017年 User8. All rights reserved.
//
// github url https://github.com/syassi/NewEntry

import UIKit

class ViewController: UIViewController {

    private let userDefaults = UserDefaults.standard
    @IBOutlet weak var newBtnView: UIView!
    @IBOutlet weak var editBtnView: UIView!
    
    //MARK:life Cycle

    
    /**
    
     - parameter
     
    */
    
    //MARK:@IBAction
    @IBAction func tapButtonNew(_ sender: Any) {
    // print("-NewButton-")
        let vc = EntryVC.instantiate()
        vc.kind = .new
         print("-\(vc.kind)-")
        vc.modalPresentationStyle = .overCurrentContext //画面の表示方法下から出る
        present(vc,animated:true,completion:nil)
       
    }
    
    @IBAction func tapButtonEdit(_ sender: Any) {
    // print("-EditButton-")
        let vc = EntryVC.instantiate()
        vc.kind = .edit
        vc.modalPresentationStyle = .overCurrentContext
        present(vc,animated:true,completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:Private
    //https://qiita.com/roworks/items/cd5cb05bd83585325db7
    /**
      画面セットアップ用
     */
    private func setupUI() {
        guard let data = userDefaults.object(forKey: "entry") as? Data else {
            newBtnView.isHidden = false
            editBtnView.isHidden = true
            return
        }
        newBtnView.isHidden = false
        editBtnView.isHidden = false
        if let unarchiveEntry = NSKeyedUnarchiver.unarchiveObject(with:data) as? Entry {
            print("userName:\(unarchiveEntry.userName)")
        }
    }
    //TODO:テスト
    //FIXME:最終的に直す
}

