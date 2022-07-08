

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var firstImage: UIImageView! {
        didSet {
            firstImage.layer.cornerRadius = firstImage.frame.height / 2
            firstImage.layer.borderWidth = 3
            firstImage.layer.borderColor = UIColor.darkGray.cgColor
        }
    }
    @IBOutlet weak var secondImage: UIImageView! {
        didSet {
            secondImage.layer.cornerRadius = secondImage.frame.height / 2
            secondImage.layer.borderWidth = 3
            secondImage.layer.borderColor = UIColor.darkGray.cgColor
        }
    }
    @IBOutlet weak var thirdImage: UIImageView! {
        didSet {
            thirdImage.layer.cornerRadius = thirdImage.frame.height / 2
            thirdImage.layer.borderWidth = 3
            thirdImage.layer.borderColor = UIColor.darkGray.cgColor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
 
    
    @IBAction func changeBackground(_ sender: UIButton) {
        moviePoster.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        
    }
    
   
    
    }

