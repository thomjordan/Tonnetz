//
//  ContentView.swift
//  Tonnetz
//
//  Created by Thom Jordan on 8/8/19.
//  Copyright © 2019 Thom Jordan. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
