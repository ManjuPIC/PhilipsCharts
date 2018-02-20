//
//  ViewController.swift
//  Philips_Chart
//
//  Created by Manjunath Shivakumara on 12/02/18.
//  Copyright © 2018 Manjunath Shivakumara. All rights reserved.
//

import UIKit

private struct ItemDef {
    let title: String
    let subtitle: String
    let class1: AnyClass
}

class ViewController: UIViewController {

    @IBOutlet weak var chartBar: UITabBar!
    @IBOutlet weak var chartView: UIView!
    var itemDefs : NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        chartBar.delegate = self
        
        itemDefs = [ItemDef(title: "Line Chart",
                                        subtitle: "A simple demonstration of the linechart.",
                                        class1: LineChart1ViewController.self),
                                ItemDef(title: "Bar Chart",
                                        subtitle: "A simple demonstration of the bar chart.",
                                        class1: BarChartViewController.self)
                                
        ]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawBarChart()
    {
        let def : ItemDef = self.itemDefs.object(at: 1) as! ItemDef
        let vcClass = def.class1 as! UIViewController.Type
        let vc = vcClass.init()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func drawLineChart()
    {
        let def : ItemDef = self.itemDefs.object(at: 0) as! ItemDef
        let vcClass = def.class1 as! UIViewController.Type
        let vc = vcClass.init()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController : UITabBarDelegate
{
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch chartBar.selectedItem?.tag {
        case 0?:
            print ("Line Chart")
            self .drawLineChart()
            break
        case 1?:
            print ("Bar Chart")
            self .drawBarChart()
            break
        default:
            break
        }
    }
}



