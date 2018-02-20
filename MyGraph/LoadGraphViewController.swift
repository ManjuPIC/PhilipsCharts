//
//  LoadGraphViewController.swift
//  MyGraph
//
//  Created by Manjunath Shivakumara on 19/02/18.
//  Copyright © 2018 Manjunath Shivakumara. All rights reserved.
//

import Foundation

private struct ItemDef {
    let title: String
    let subtitle: String
    let class1: AnyClass
}

public class LoadGraphViewController : UIViewController
{
    
    public func loadBarChart() -> UIViewController
    {
        
        let itemDefs : NSMutableArray = [
                        ItemDef(title: "Bar Chart",
                                subtitle: "A simple demonstration of the bar chart.",
                                class1: BarChartViewController.self)
            
        ]
        
        let def : ItemDef = itemDefs.object(at: 0) as! ItemDef
        let vcClass = def.class1 as! UIViewController.Type
        let vc = vcClass.init()
        return vc
    }
    
    public func loadLineChart() -> UIViewController
    {
        let itemDefs : NSMutableArray = [ItemDef(title: "Line Chart",
                                                 subtitle: "A simple demonstration of the linechart.",
                                                 class1: LineChart1ViewController.self)
            
        ]
        
        let def : ItemDef = itemDefs.object(at: 0) as! ItemDef
        let vcClass = def.class1 as! UIViewController.Type
        let vc = vcClass.init()
        return vc
    }
    
}


