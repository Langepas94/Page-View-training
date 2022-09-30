//
//  PageViewController.swift
//  Page View training
//
//  Created by Артём Тюрморезов on 30.09.2022.
//

import UIKit

class PageViewController: UIPageViewController {
    let presentScrreonContent = [
    "Встречаем вас в нашем приложении!",
    "В котором вы познакомитесь с шикарными функциями",
    "Без которых вы не сможете дальше жить",
    "Приступим!"
    ]
    
    let emojiArray = ["👋", "🎃", "🤖","😺"]
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contentViewController = showViewContAtIndex(0) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }

    func showViewContAtIndex(_ index: Int) -> ContentViewController?{
        guard index >= 0 else {return nil}
        guard index < presentScrreonContent.count else { return nil}
        guard let contentViewController = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else { return nil}
        
        contentViewController.presentTexts = presentScrreonContent[index]
        contentViewController.numberOfPages = presentScrreonContent.count
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        
        return contentViewController
    }

}
