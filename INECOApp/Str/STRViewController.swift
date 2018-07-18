import UIKit

class STRViewController: UIViewController {
    
    @IBOutlet weak var tbl: UITableView!
    var arr = ["Med ctraxovanie", "Ctraxovoy cluchay", "Ctraxovanie ot heviezda", "Pekomendacii"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
}
extension STRViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DataTableViewCell
        cell?.img.image = UIImage(named: arr[indexPath.row])
        cell?.lbl.text = arr[indexPath.row]
        return cell!
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.str = arr[indexPath.row]
        navigationController?.pushViewController(vc!, animated: true)
        
        
        
    }
    
    
}
