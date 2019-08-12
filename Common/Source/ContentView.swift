//
//  ContentView.swift
//  Tonnetz
//
//  Created by Thom Jordan on 8/7/19.
//  Copyright © 2019 Thom Jordan. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

struct ContentView: View {
    @State var cellStates: [CGFloat]
    
    let hitRegions = CellHits(origin: theOrigin)
    
    var body: some View {
        ZStack {
            TonnetzView(cellStates: self.$cellStates)
                .frame(width: 1024, height: 748)
                .scaleEffect(x: 1.0, y: 1.0)
            
            ForEach(0..<self.cellStates.count) { i in
                self.hitRegions.hexagon(at: self.hitRegions[i])
                    .opacity(0.038)
                    .tapAction { self.updateState(for: i) }
            }
        }
    }
}

let tonnetzView59 = { ContentView(cellStates: Array(repeating: 0.0, count: 59)) }


extension ContentView {
    
    fileprivate func updateState(for index: Int) {
        getRelatedCells(for: index).forEach { resetCell(at: $0) }
        updateCell(at: index)
    }
    
    private func updateCell(at index: Int) {
        self.cellStates[index] = (self.cellStates[index] + 1).truncatingRemainder(dividingBy: 3)
        print("Cell \(index) was changed to mode \(self.cellStates[index])")
    }
    
    private func resetCell(at index: Int) { self.cellStates[index] = 0 }
    
    private func getRelatedCells(for cellnum: Int) -> [Int] {
        return Array(0..<59).filter { $0%12 == cellnum%12 && $0 != cellnum }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        tonnetzView59()
    }
}
#endif
