
import UIKit

class selectedViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var flavour = String()
    var head = String()
    @IBOutlet var header: UILabel!
    
    
    let icecreams = ["vanilla","butterscotch","strawberry","coconut","blueberry"]
    let cakes = ["black_forest","red_velvet","Chocolate_cake","carrot_cake","orange_cake"]
    let sweets = ["BananaHalwa","Neyyappam","Unniyapam","Rava Laddoos","palpayasam"]
    let icecream_details = ["Vanilla has long been the best-selling ice cream flavor not only because it is creamy and delicious, but also because of its ability to enhance so many other desserts and treats,” said Cary Frye, IDFA vice president of regulatory and scientific affairs and nationally respected expert on ice cream and frozen desserts","Butterscotch ice cream is one of the popular and tasty Indian ice cream varieties. ... The ice cream recipe is made only with 3 ingredients. Praline is also made and added to the ice cream. Addition of praline gives that crispy bite when eating butterscotch ice cream","Image result for about strawberry ice creamImage result about strawberry ice creamImage result  about strawberry ice creamView allStrawberry ice cream a flavor of ice cream made with strawberry or strawberry flavoring. It made by blending fresh strawberries or strawberry flavoring with the eggs, cream, vanilla and sugar used to make ice cream","One of their most popular ice creams is the tender coconut ice cream. It's really one of its kind. There are no artificial flavors and you actually feel like eating a tender coconut while eating that ice cream"," Instantly satisfy an ice cream craving with this quick, easy, and healthy recipe for a delicious Blueberry Banana “Ice Cream”, also known as “nice cream”."]
    
    let cakes_details = ["Black Forest cake has multiple (usually 4) layers of chocolate sponge cake, cherries, and whipped cream. It is frosted with whipped cream and covered with chocolate shavings and a few cherries for decoration. Kirschwasser (cherry schnapps) is used to flavor the whipped cream","Red velvet cake is much more than vanilla cake tinted red. This recipe produces the best red velvet cake with superior buttery, vanilla, and cocoa flavors, as well as a delicious tang from buttermilk. My trick is to whip the egg whites, which guarantees a smooth velvet crumb","A chocolate cake is a cake made with chocolate or cocoa. The ingredients are put into a bowl and mixed together; then the mixed ingredients are put into a cake tin and put in an oven until it is fully cooked. Then the cake is taken out of the oven and placed on a cooling stand","Carrot cake is cake that contains carrots mixed into the batter. Most modern carrot cake recipes have a white cream cheese frosting. Sometimes nuts such as walnuts or pecans are added into the cake batter, as well as spices such as cinnamon, ginger and ground mixed spice. Fruit including pineapple, raisins and shredded coconut can also be used to add a natural sweetness","Carrot cake is cake that contains carrots mixed into the batter. Most modern carrot cake recipes have a white cream cheese frosting. Sometimes nuts such as walnuts or pecans are added into the cake batter, as well as spices such as cinnamon, ginger and ground mixed spice. Fruit including pineapple, raisins and shredded coconut can also be used to add a natural sweetness"]
    let sweets_details = ["Here's a traditional dessert recipe from the Kerala cuisine, which is cooked on special occasions and festivals and will make your mouth water. Mildly sweet and chewy, this sweet dish is prepared using banana, ghee, green cardamom powder, and last but not the least sugar. You will be surprised to know that this Banana Halwa does not uses much sugar, as bananas are already too sweet, it is just added to enhance the flavour of the dish. You can just use jaggery powder instead of sugar for a delicious taste. You must try this dessert recipe at home, it will be loved by kids and adults alike.","The neyyappam is prepared from mixing flour with jaggery and spices. The fine spices tease the flour and when cooked in hot ghee, the neyyappam becomes a fine reddish brown, which can then be had along with tea or coffee","Unniyappam is a small round snack made from rice, jaggery, banana, roasted coconut pieces, roasted sesame seeds and cardamom powder fried in oil. It is Kerala's version of Sweet Kuzhi Paniyaram. In Malayalam, 'unni' means small and 'appam' means rice cake","Rava laddu is a South Indian Sweet made with semolina, sugar, ghee, cashews and raisins. Rava is the Indian term for semolina & laddu are sweet balls. Also known as suji ladoo in other parts of India, these are usually made during festivals & are great to gift","Sweet, creamy, south indian kheer or pudding made with milk and rice. Payasam or kheer is akin to a rice pudding. This is the simplest payasam recipe."]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let scell = tableView.dequeueReusableCell(withIdentifier: "selected") as! selection
        
        let selector = head
        
        if selector == "Icecream"{
            scell.selected_img.image = UIImage(named: icecreams[indexPath.row])
            scell.select.text = icecreams[indexPath.row]
        }
        
        else if selector == "Cake" {
            
            scell.selected_img.image = UIImage(named: cakes[indexPath.row])
            scell.select.text = cakes[indexPath.row]
        }
        
        else if selector == "sweets"{
            scell.selected_img.image = UIImage(named: sweets[indexPath.row])
            scell.select.text = sweets[indexPath.row]
            
        }
        
        scell.selected_img.layer.cornerRadius = scell.selected_img.frame.height/2
        return scell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var itemselector = head
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let pagethree = storybord.instantiateViewController(withIdentifier: "details") as! detailsViewController
        
        if itemselector == "Icecream"{
            
        pagethree.itemhead = icecreams[indexPath.row]
        pagethree.Details = icecream_details[indexPath.row]
        pagethree.selectedimage = icecreams[indexPath.row]
      
            
    }
        else if itemselector == "Cake" {
        
            pagethree.itemhead = cakes[indexPath.row]
            pagethree.Details = cakes_details[indexPath.row]
            pagethree.selectedimage = cakes[indexPath.row]
           
        }
        
        else if itemselector == "sweets" {
            
            pagethree.itemhead = sweets[indexPath.row]
            pagethree.Details = sweets_details[indexPath.row]
            pagethree.selectedimage =  sweets[indexPath.row]
        }
        
        self.navigationController?.pushViewController(pagethree, animated: true)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        header.text = head
        
    }
}

