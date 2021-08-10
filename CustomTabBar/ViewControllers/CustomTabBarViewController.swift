//
//  CustomTabBarViewController.swift
//  CustomTabBar
//
//  Created by King Bileygr on 8/9/21.
//

import UIKit

class CustomTabBarViewController: UITabBarController, UITabBarControllerDelegate {
    var prev = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    
        let firstTabBar = FirstViewController()
        let secondTabBar = SecondViewController()
        let thirdTabBar = ThirdViewController()
        let fourthTabBar = FourthViewController()
        let fifthTabBar = FifthViewController()
        
        firstTabBar.navigationItem.largeTitleDisplayMode = .always
        secondTabBar.navigationItem.largeTitleDisplayMode = .always
        thirdTabBar.navigationItem.largeTitleDisplayMode = .always
        fourthTabBar.navigationItem.largeTitleDisplayMode = .always
        fifthTabBar.navigationItem.largeTitleDisplayMode = .always
        
        let firstNavBar = UINavigationController(rootViewController: firstTabBar)
        let secondNavBar = UINavigationController(rootViewController: secondTabBar)
        let thirdNavBar = UINavigationController(rootViewController: thirdTabBar)
        let fourthNavBar = UINavigationController(rootViewController: fourthTabBar)
        let fifthNavBar = UINavigationController(rootViewController: fifthTabBar)
        
//        firstNavBar.tabBarItem = UITabBarItem(title: "first", image: UIImage(systemName: "lightbulb"), tag: 1)
//        secondNavBar.tabBarItem = UITabBarItem(title: "second", image: UIImage(systemName: "magnifyingglass"), tag: 2)
//        fourthNavBar.tabBarItem = UITabBarItem(title: "fourth", image: UIImage(systemName: "lifepreserver"), tag: 3)
//        fifthNavBar.tabBarItem = UITabBarItem(title: "fifth", image: UIImage(systemName: "pencil.and.outline"), tag: 5)
        
        
        setViewControllers([firstNavBar, secondNavBar, thirdNavBar, fourthNavBar, fifthNavBar], animated: true)
        tabBar.backgroundColor = .gray
        tabBar.alpha = 0.9
        tabBar.isTranslucent = false
        self.selectedViewController = thirdNavBar
        setupMiddleTabBar()
        setupSecondTabBar()
        setupThirdTabBar()
        setupFirstTabBar()
        setupFifthTabBar()
        
        
    }
    
    private let tabButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.tintColor = .yellow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.layer.cornerRadius = 35
        button.layer.shadowOpacity = 0.3
        button.tag = 3
        return button
    }()
    
    private let tabButtons: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.tintColor = .yellow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.3
        button.tag = 4
        return button
    }()
    private let tabButtonss: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.tintColor = .yellow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.3
        return button
    }()
    
    private let tabButtonz: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.tintColor = .yellow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.3
        return button
    }()
    
    private let tabButtonzs: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.tintColor = .yellow
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.3
        return button
    }()
    
    
    
    func setupMiddleTabBar() {
        tabButton.frame = CGRect(x: (view.bounds.width-70)/2, y: -25, width: 70, height: 70)
        tabButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        let buttonImage = UIImage(systemName: "lock.fill")
        tabButton.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
        tabBar.addSubview(tabButton)
        view.layoutIfNeeded()
    }
    
    func setupSecondTabBar() {
        tabButtons.frame = CGRect(x: (view.bounds.width-50)/4, y: -10, width: 50, height: 50)
        tabButtons.addTarget(self, action: #selector(didTapButtons), for: .touchUpInside)
        let buttonImage = UIImage(systemName: "magnifyingglass")
        tabButtons.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
        tabBar.addSubview(tabButtons)
        view.layoutIfNeeded()
    }
    func setupThirdTabBar() {
        tabButtonss.frame = CGRect(x: (view.bounds.width-115), y: -10, width: 50, height: 50)
        tabButtonss.addTarget(self, action: #selector(didTapButtonss), for: .touchUpInside)
        let buttonImage = UIImage(systemName: "lifepreserver")
        tabButtonss.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
        tabBar.addSubview(tabButtonss)
        view.layoutIfNeeded()
    }
    func setupFirstTabBar() {
        tabButtonz.frame = CGRect(x: 10, y: 0, width: 50, height: 50)
        tabButtonz.addTarget(self, action: #selector(didTapButtonz), for: .touchUpInside)
        let buttonImage = UIImage(systemName: "lightbulb")
        tabButtonz.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
        tabBar.addSubview(tabButtonz)
        view.layoutIfNeeded()
    }
    func setupFifthTabBar() {
        tabButtonzs.frame = CGRect(x: (view.bounds.width - 60) , y: 0, width: 50, height: 50)
        tabButtonzs.addTarget(self, action: #selector(didTapButtonzs), for: .touchUpInside)
        let buttonImage = UIImage(systemName: "pencil.and.outline")
        tabButtonzs.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
        tabBar.addSubview(tabButtonzs)
        view.layoutIfNeeded()
    }
    
    
    @objc func didTapButton() {
        self.prev = 2
       animateTabSelected()
        self.selectedIndex = 2
    }
    @objc func didTapButtons() {
        self.prev = 1
       animateTabSelected()
        self.selectedIndex = 1
    }
    @objc func didTapButtonss() {
        self.prev = 0
        animateTabSelected()
        self.selectedIndex = 3
    }
    @objc func didTapButtonz() {
        self.prev = 0
        animateTabSelected()
        self.selectedIndex = 0
    }
    @objc func didTapButtonzs() {
        self.prev = 0
        animateTabSelected()
        self.selectedIndex = 4
    }
    
    internal func animateTabSelected() {
        tabButton.alpha = 1
        tabButton.titleLabel?.alpha = 0.5
        tabButton.imageView?.frame.origin.y = 18
        tabButton.frame = CGRect(x: (view.bounds.width-70 )/2 , y: -35, width:70 , height: 70)
        tabButtons.alpha = 1
        tabButtons.titleLabel?.alpha = 0.5
        tabButtons.imageView?.frame.origin.y = 25
        tabButtons.frame = CGRect(x: (view.bounds.width-50 )/4 , y: -15, width:50 , height: 50)
        tabButtonss.alpha = 1
        tabButtonss.titleLabel?.alpha = 0.5
        tabButtonss.imageView?.frame.origin.y = 25
        tabButtonss.frame = CGRect(x: (view.bounds.width-110), y: -15, width:50 , height: 50)
        UIView.animate(withDuration: 1.5) { [weak self] in
            self?.tabButton.titleLabel?.alpha = 0
            self?.tabButton.imageView?.frame.origin.y = 25
            self?.tabButton.imageView?.alpha = 1
            self?.tabButton.frame = CGRect(x: ((self?.view.bounds.width)!-70)/2, y: -25, width: 70, height: 70)
            self?.tabButtons.imageView?.frame.origin.y = 20
            self?.tabButtons.imageView?.alpha = 1
            self?.tabButtons.frame = CGRect(x: ((self?.view.bounds.width)!-50)/4, y: -10, width: 50, height: 50)
            self?.tabButtonss.imageView?.frame.origin.y = 20
            self?.tabButtonss.imageView?.alpha = 1
            self?.tabButtonss.frame = CGRect(x: ((self?.view.bounds.width)! - 115), y: -10, width: 50, height: 50)
         
         }
     }
    
}

