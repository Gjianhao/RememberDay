//
//  MainTableViewController.swift
//  记忆日
//
//  Created by gjh on 2017/9/20.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var bgImageView: UIImageView!
    var navView: UIView!
    var stretchableView: JYRStretchableHeaderView!
    
    var headerHeight: CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bgImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_WIDTH * 0.75))
        bgImageView.image = UIImage(named: "123")
        view.addSubview(bgImageView)
        
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.showsVerticalScrollIndicator = false
        tableView.backgroundColor = UIColor.clear
        view.addSubview(tableView)
        /* 对背景图片进行一部分的遮盖，可选 */
        let headerView = UIView(frame: bgImageView.bounds)
        headerView.height -= 80
        headerHeight = headerView.height
        tableView.tableHeaderView = headerView
        
        let nameLabel = UILabel(frame: CGRect(x: 0, y: 150, width: bgImageView.width, height: 40))
        nameLabel.text = "哈哈😆"
        nameLabel.textAlignment = .center
        nameLabel.textColor = UIColor.white
        headerView.addSubview(nameLabel)
        
        makeNavView()
        
        stretchableView = JYRStretchableHeaderView(stretchableView: bgImageView)
    }

    // 设置导航栏
    func makeNavView() {
        navView = UIView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64))
        view.addSubview(navView)
        
        let titleLabel = UILabel(frame: navView.bounds)
        titleLabel.text = "导航栏标题"
        titleLabel.textColor = UIColor.white
        titleLabel.textAlignment = .center
        navView.addSubview(titleLabel)
    }
    
    // 行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "001"
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        /* 导航栏设置 */
        let yOffset = scrollView.contentOffset.y
        if yOffset < (headerHeight - navView.height) {
            // 导航栏背景色的透明度
            let alpha = yOffset / (headerHeight - navView.height)
            navView.backgroundColor = UIColor.RGB_COLOR(r: 74, g: 163, b: 243, alpha: alpha)
        } else {
            navView.backgroundColor = UIColor.RGB_COLOR(r: 74, g: 163, b: 243, alpha: 1)
        }
        
        stretchableView.scrollViewDidScroll(scrollView)
    }

}
