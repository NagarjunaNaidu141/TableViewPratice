//
//  SearchableTable5ViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 23/03/25.
//

import UIKit

class SearchableTable5ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate{
    
    @IBOutlet var table:UITableView!
    @IBOutlet var textfield:UITextField!
    var data = [String]()
    var filterData = [String]()
    var filtered = false

    override func viewDidLoad() {
        super.viewDidLoad()
        dataEntry()
        textfield.delegate = self
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view.
    }
    private func dataEntry(){
        data.append("Nagarjuna")
        data.append("prathap")
        data.append("venkat")
        data.append("sri ramya")
        data.append("chandra")
        data.append("malli")
        data.append("maheshwari")
        data.append("agarjuna")
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Code runs if both 'text' and 'textRange' are not nil
        if let text = textField.text, let textRange = Range(range, in: text) {
               // Correctly handle backspacing or text replacement
               let updatedText = text.replacingCharacters(in: textRange, with: string)
               filterText(query: updatedText)
           }
           return true
       }
    func filterText(query:String){
            print(query)
            filtered = true
            filterData.removeAll()
            // filterData = data.filter { $0.lowercased().starts(with: query.lowercased())
            for string in data{
                if string.lowercased().starts(with: query.lowercased()){
                    filterData.append(string)
                  
                }
        }
        table.reloadData()
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if filtered {
            return filterData.count
        }
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if filtered && !filterData.isEmpty {
                cell.textLabel?.text = filterData[indexPath.row]
            } else {
                cell.textLabel?.text = data[indexPath.row]
            }
            
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
}
