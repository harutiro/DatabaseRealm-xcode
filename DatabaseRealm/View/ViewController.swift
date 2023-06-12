//
//  ViewController.swift
//  DatabaseRealm
//
//  Created by Owner on 2021/12/27.
//

import UIKit


class ViewController: UIViewController {
    
    
    
    @IBOutlet var titleTextField:UITextField!
    @IBOutlet var contentTextField:UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    let mainViewModel = MainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 一番最初のDB読み込み
        mainViewModel.loadData()
        
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
        
        // DBに保存する
        mainViewModel.create(
            title:title,
            content:content ,
            sucsess:{
                //成功した時
                let alert:UIAlertController = UIAlertController(title:"成功",message:"保存しました",preferredStyle: .alert)
                alert.addAction(
                    UIAlertAction(title:"OK",style:.default,handler: nil)
                )
                
                present(alert,animated:true,completion:nil)
            },
            failed:{
                //失敗した時
                let alert:UIAlertController = UIAlertController(title:"失敗",message:"しばらくしてから保存してください。",preferredStyle: .alert)
                alert.addAction(
                    UIAlertAction(title:"OK",style:.default,handler: nil)
                )
                
                present(alert,animated:true,completion:nil)
            }
        )
        
        // データをリロードする
        mainViewModel.loadData()
        // リストを再表示させる。
        tableView.reloadData()
    }
}

// セクションやセル値を管理する
extension ViewController: UITableViewDataSource {

    // セクション毎の行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainViewModel.tableData?.count ?? 0
    }

    // 各行に表示するセルを返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // StoryBoradで定義したTableViewCellを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
        cell.textLabel?.text = mainViewModel.tableData?[indexPath.row].title
        return cell
    }
}

// テーブルのイベントを管理する
extension ViewController: UITableViewDelegate {

}

