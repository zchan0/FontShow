//
//  DetailViewController.swift
//  FontShow
//
//  Created by Cencen Zheng on 3/25/17.
//  Copyright © 2017 Cencen Zheng. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let name = self.fontName {
            if let label = self.detailDescriptionLabel {
                label.text = "汉体书写信息技术标准相容\n档案下载使用界面简单\n支援服务升级资讯专业制作\n创意空间快速无线上网\n㈠㈡㈢㈣㈤㈥㈦㈧㈨㈩\nAaBbCc ＡａＢｂＣｃ"
                label.font = UIFont(name: name, size: 20)
                label.numberOfLines = 0
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var fontName: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

