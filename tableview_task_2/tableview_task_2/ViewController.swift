
import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let products = ["Icecream", "Cake", "sweets"]
    let product_pic = [UIImage(named:"icecream"),UIImage(named:"cake"),UIImage(named:"sweets")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tcell = tableView.dequeueReusableCell(withIdentifier: "menuitem")as! items
        
        tcell.menu.text = products[indexPath.row]
        tcell.menu_img.image = product_pic[indexPath.row]
        
        tcell.menu_img.layer.cornerRadius = tcell.menu_img.frame.height/2
        
        
        return tcell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storybrd = UIStoryboard(name: "Main", bundle: nil)
        
        let pagetwo = storybrd.instantiateViewController(withIdentifier: "pageone") as! selectedViewController
        
        pagetwo.head = products[indexPath.row]
        
        self.navigationController?.pushViewController(pagetwo, animated: true)
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically /Users/iroid/Desktop/abbas/tableview_task_2/tableview_task_2/items.swiftfrom a nib.
    }
}

