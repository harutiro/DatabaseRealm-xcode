//
//  ViewController.swift
//  DatabaseRealm
//
//  Created by Owner on 2021/12/27.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    let realm = try! Realm()
    
    @IBOutlet var titleTextField:UITextField!
    @IBOutlet var contentTextField:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let memo: Memo? = read()
        
        
        titleTextField.text = memo?.title
        contentTextField.text = memo?.content
        
        
    }
    
    func read() -> Memo?{
        return realm.objects(Memo.self).first
    }
    
    @IBAction func save(){
        let title:String = titleTextField.text!
        let content:String = contentTextField.text!
        
        let memo:Memo? = read()
        
        if memo != nil{
            try! realm.write{
                memo!.title = title
                memo!.content = content
            }
        }else {
            let newMemo = Memo()
            
            newMemo.title = title
            newMemo.content = content
            
            try! realm.write{
                realm.add(newMemo)
            }
        }
        
        let alert:UIAlertController = UIAlertController(title:"成功",message:"保存しました",preferredStyle: .alert)
        alert.addAction(
            UIAlertAction(title:"OK",style:.default,handler: nil)
        )
        
        present(alert,animated:true,completion:nil)
    }
    
    
    


}

