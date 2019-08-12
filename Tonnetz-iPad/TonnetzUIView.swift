//
//  TonnetzUIView.swift
//  Tonnetz
//
//  Created by Thom Jordan on 8/8/19.
//  Copyright © 2019 Thom Jordan. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
import UIKit


public let theOrigin = CGPoint(x: 10, y: 30)

public final class UITonnetz: UIView {
    
    var cs: [CGFloat]
    
    init(initialState: [CGFloat]) {
        self.cs = initialState
        super.init(frame: CGRect(x: 0, y: 0, width: 1024, height: 748))
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
    
    override public func draw(_ rect: CGRect) {
        TriMode59cellTonnetzIOS.drawTonnetz(pcOS: 2, mode1: cs[0], mode2: cs[1], mode3: cs[2], mode4: cs[3], mode5: cs[4], mode6: cs[5], mode7: cs[6], mode8: cs[7], mode9: cs[8], mode10: cs[9], mode11: cs[10], mode12: cs[11], mode13: cs[12], mode14: cs[13], mode15: cs[14], mode16: cs[15], mode17: cs[16], mode18: cs[17], mode19: cs[18], mode20: cs[19], mode21: cs[20], mode22: cs[21], mode23: cs[22], mode24: cs[23], mode25: cs[24], mode26: cs[25], mode27: cs[26], mode28: cs[27], mode29: cs[28], mode30: cs[29], mode31: cs[30], mode32: cs[31], mode33: cs[32], mode34: cs[33], mode35: cs[34], mode36: cs[35], mode37: cs[36], mode38: cs[37], mode39: cs[38], mode40: cs[39], mode41: cs[40], mode42: cs[41], mode43: cs[42], mode44: cs[43], mode45: cs[44], mode46: cs[45], mode47: cs[46], mode48: cs[47], mode49: cs[48], mode50: cs[49], mode51: cs[50], mode52: cs[51], mode53: cs[52], mode54: cs[53], mode55: cs[54], mode56: cs[55], mode57: cs[56], mode58: cs[57], mode59: cs[58]
        )
    }
}

public struct TonnetzUIView: UIViewRepresentable {
    @Binding var cellStates: [CGFloat]
    
    public func makeUIView(context: Context) -> UITonnetz {
        let tonnetz = UITonnetz(initialState: self.cellStates)
        return tonnetz
    }
    public func updateUIView(_ tonnetz: UITonnetz, context: Context) {
        tonnetz.cs = self.cellStates
        tonnetz.setNeedsDisplay()
    }
}

public typealias TonnetzView = TonnetzUIView

