//
//  CellHitsFlat.swift
//  iPadTonnetz
//
//  Created by Thom Jordan on 8/8/19.
//  Copyright © 2019 Thom Jordan. All rights reserved.
//

/*
import Foundation
import SwiftUI

public struct CellHitsFlat {
    
    static let sharedInstance = CellHitsFlat()
    
    let rects : [CGRect]
    
    init() { self.rects = CellHitsFlat.computedRects } // memoize
    
    static let origin = CGPoint(x: 48.5, y: 37.5)
    
    static let   w: CGFloat =  125 // cell width
    static let   h: CGFloat =  108 // cell height
    static let ofX: CGFloat =   98 // x-offset between cells
    static let ofY: CGFloat =   56 // y-offset between cells
    static let scl: CGFloat =  1.0 // scale factor
    
    static let xs = [ ofX*6, ofX*6, ofX*6, ofX*6, ofX*6, ofX*6, ofX*6, ofX*6,
                      ofX*5, ofX*5, ofX*5, ofX*5, ofX*5, ofX*5, ofX*5, ofX*5, ofX*5,
                      ofX*4, ofX*4, ofX*4, ofX*4, ofX*4, ofX*4, ofX*4, ofX*4,
                      ofX*3, ofX*3, ofX*3, ofX*3, ofX*3, ofX*3, ofX*3, ofX*3, ofX*3,
                      ofX*2, ofX*2, ofX*2, ofX*2, ofX*2, ofX*2, ofX*2, ofX*2,
                      ofX*1, ofX*1, ofX*1, ofX*1, ofX*1, ofX*1, ofX*1, ofX*1, ofX*1,
                      ofX*0, ofX*0, ofX*0, ofX*0, ofX*0, ofX*0, ofX*0, ofX*0 ]
    
    static let ys = [ ofY*1, ofY*3, ofY*5, ofY*7, ofY*9, ofY*11, ofY*13, ofY*15,
                      ofY*0, ofY*2, ofY*4, ofY*6, ofY*8, ofY*10, ofY*12, ofY*14, ofY*16,
                      ofY*1, ofY*3, ofY*5, ofY*7, ofY*9, ofY*11, ofY*13, ofY*15,
                      ofY*0, ofY*2, ofY*4, ofY*6, ofY*8, ofY*10, ofY*12, ofY*14, ofY*16,
                      ofY*1, ofY*3, ofY*5, ofY*7, ofY*9, ofY*11, ofY*13, ofY*15,
                      ofY*0, ofY*2, ofY*4, ofY*6, ofY*8, ofY*10, ofY*12, ofY*14, ofY*16,
                      ofY*1, ofY*3, ofY*5, ofY*7, ofY*9, ofY*11, ofY*13, ofY*15 ]
    
    public static var computedRects: [CGRect] {
        return zip(xs, ys).map {
            CGRect( x      : scl * ($0.0 + origin.x),
                    y      : scl * ($0.1 + origin.y),
                    width  : scl * w,
                    height : scl * h )
        }
    }
    
    public static subscript(k: Int) -> CGRect { return sharedInstance.rects[k % 59] }
    
    public static func hexagon(at rect: CGRect) -> Path {
        let w = rect.width, h = rect.height
        let xs = [   0, w/4, w*3/4,   w, w*3/4, w/4,   0 ]
        let ys = [ h/2,   h,     h, h/2,     0,   0, h/2 ]
        var ps = zip(xs, ys).map { CGPoint(x: rect.minX + $0.0, y: rect.minY + $0.1) }
        var hexagon = Path()
        hexagon.move(to: ps.removeFirst())
        hexagon.addLines(ps)
        return hexagon
    }
    
}
*/ 
