
import UIKit

class detailsViewController: UIViewController {

    @IBOutlet var heading: UILabel!
    @IBOutlet var fullimage: UIImageView!
    @IBOutlet var fulldetails: UITextView!
    var selectedimage = String()
    var Details = String()
    var itemhead = String()
    override func viewDidLoad() {
        super.viewDidLoad()

       heading.text = itemhead
       fulldetails.text = Details
       fullimage.image = UIImage(named:selectedimage)
        
        heading.layer.cornerRadius = 10
        fullimage.layer.cornerRadius = 15
        fulldetails.layer.cornerRadius = 15
       
    }

}
