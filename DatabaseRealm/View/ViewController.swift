//
//  ViewController.swift
//  DatabaseRealm
//
//  Created by Owner on 2021/12/27.
//

import UIKit
import RealmSwift


class ViewController: UIViewController {
    
    
    
    @IBOutlet var titleTextField:UITextField!
    @IBOutlet var contentTextField:UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    let mainViewModel = MainViewModelImpl()
    
    private var tableData : List<Memo> = List<Memo>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 一番最初のDB読み込み
        tableData = mainViewModel.loadData()
        
        // <tableview初期設定>
        tableView.frame = view.frame
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
   
    
    @IBAction func save(){
        // データの取得
        let title:String = titleTextField.text!
        let content:String = contentTextField.text!
        
        let newMemo = Memo()
        newMemo.title = title
        newMemo.content = content
        
        // DBに保存する
        mainViewModel.create(
            memo: newMemo ,
            sucsess:{ text in
                //成功した時
                let alert:UIAlertController = UIAlertController(title:"成功",message:text,preferredStyle: .alert)
                alert.addAction(
                    UIAlertAction(title:"OK",style:.default,handler: nil)
                )
                
                present(alert,animated:true,completion:nil)
            },
            failed:{ text in
                //失敗した時
                let alert:UIAlertController = UIAlertController(title:"失敗",message:text,preferredStyle: .alert)
                alert.addAction(
                    UIAlertAction(title:"OK",style:.default,handler: nil)
                )
                
                present(alert,animated:true,completion:nil)
            }
        )
        
        // データをリロードする
        tableData = mainViewModel.loadData()
        // リストを再表示させる。
        tableView.reloadData()
    }
}

// セクションやセル値を管理する
extension ViewController: UITableViewDataSource {

    // セクション毎の行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

    // 各行に表示するセルを返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // StoryBoradで定義したTableViewCellを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
        cell.textLabel?.text = tableData[indexPath.row].title
        return cell
    }
}

// テーブルのイベントを管理する
extension ViewController: UITableViewDelegate {

}

