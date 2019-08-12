//
//  CellHits.swift
//  Tonnetz
//
//  Created by Thom Jordan on 8/8/19.
//  Copyright © 2019 Thom Jordan. All rights reserved.
//

import Foundation
import SwiftUI

public struct CellHits {
    
    let   w: CGFloat = 108 // cell width
    let   h: CGFloat = 125 // cell height
    let ofX: CGFloat =  56 // x-offset between cells
    let ofY: CGFloat =  98 // y-offset between cells
    
    let origin: CGPoint  //(x: 10, y: 30)
    let scl: CGFloat     // scale factor
    let xs : [CGFloat]
    let ys : [CGFloat]
    var rects : [CGRect]!
    
    init(origin: CGPoint, scale: CGFloat = 1.0) {
        self.origin = origin
        self.scl    = scale
        
        self.xs = [ ofX*1, ofX*3, ofX*5, ofX*7, ofX*9, ofX*11, ofX*13, ofX*15,
               ofX*0, ofX*2, ofX*4, ofX*6, ofX*8, ofX*10, ofX*12, ofX*14, ofX*16,
               ofX*1, ofX*3, ofX*5, ofX*7, ofX*9, ofX*11, ofX*13, ofX*15,
               ofX*0, ofX*2, ofX*4, ofX*6, ofX*8, ofX*10, ofX*12, ofX*14, ofX*16,
               ofX*1, ofX*3, ofX*5, ofX*7, ofX*9, ofX*11, ofX*13, ofX*15,
               ofX*0, ofX*2, ofX*4, ofX*6, ofX*8, ofX*10, ofX*12, ofX*14, ofX*16,
               ofX*1, ofX*3, ofX*5, ofX*7, ofX*9, ofX*11, ofX*13, ofX*15 ]
        
        self.ys = [ ofY*0, ofY*0, ofY*0, ofY*0, ofY*0, ofY*0, ofY*0, ofY*0,
                    ofY*1, ofY*1, ofY*1, ofY*1, ofY*1, ofY*1, ofY*1, ofY*1, ofY*1,
                    ofY*2, ofY*2, ofY*2, ofY*2, ofY*2, ofY*2, ofY*2, ofY*2,
                    ofY*3, ofY*3, ofY*3, ofY*3, ofY*3, ofY*3, ofY*3, ofY*3, ofY*3,
                    ofY*4, ofY*4, ofY*4, ofY*4, ofY*4, ofY*4, ofY*4, ofY*4,
                    ofY*5, ofY*5, ofY*5, ofY*5, ofY*5, ofY*5, ofY*5, ofY*5, ofY*5,
                    ofY*6, ofY*6, ofY*6, ofY*6, ofY*6, ofY*6, ofY*6, ofY*6 ]
        
        self.rects = zip(xs, ys).map {
            CGRect( x      : scl * ($0.0 + origin.x),
                    y      : scl * ($0.1 + origin.y),
                    width  : scl * w,
                    height : scl * h )
        }
    }
    
    public subscript(k: Int) -> CGRect { return self.rects[k % 59] }
    
    public func hexagon(at rect: CGRect) -> Path {
        let w = rect.width, h = rect.height
        let xs = [   0, w/2,   w,     w, w/2,     0,   0 ]
        let ys = [ h/4,   0, h/4, h*3/4,   h, h*3/4, h/4 ]
        var ps = zip(xs, ys).map { CGPoint(x: rect.minX + $0.0, y: rect.minY + $0.1) }
        var hexagon = Path()
        hexagon.move(to: ps.removeFirst())
        hexagon.addLines(ps)
        return hexagon
    }
}
