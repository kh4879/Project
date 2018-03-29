//
//  EntryVC.swift
//  Entry
//
//  Created by User8 on 2017/12/21.
//  Copyright © 2017年 User8. All rights reserved.
//

import UIKit

enum ButtonKind:Int {
    case new = 0
    case edit = 1
}

class EntryVC: UIViewController {

    @IBAction func tapButtonClose(_ sender: Any) {
     closeScreen()
    }
    /*
    func pickerView(_ pikkerView:UIPickerView,
                    titleForRow row:Int,
                    forComponent component:Int)->String?{
        
    }
    */
    
    var kind:ButtonKind!
    private var sex:Int = 0
    private var sweet:Int = 0
    
    
    private func closeScreen(){
        self.view.endEditing(true)
        self.dismiss(animated:true,completion:nil)
    }
    
    
    
    
    
    
}
extension EntryVC : StoryboardInstantiable{}

