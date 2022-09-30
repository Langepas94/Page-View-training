//
//  ContentViewController.swift
//  Page View training
//
//  Created by Артём Тюрморезов on 30.09.2022.
//

import UIKit
// MARK: - Этот класс является шаблоном
class ContentViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var presentText: UILabel!
    var presentTexts = ""
    var emoji = ""
    var currentPage = 0 // номер текущей страницы
    var numberOfPages = 0 // количество страниц
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentText.text = presentTexts
        emojiLabel.text = emoji
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
        
    }
    



}
