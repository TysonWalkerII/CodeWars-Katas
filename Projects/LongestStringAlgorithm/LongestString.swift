//
//  LongestString.swift
//  Projects
//
//  Created by Tyson Laroyce Walker II on 4/13/23.
//

import SwiftUI

struct LongestString: View {
    @State var location: String = ""

    var body: some View {
        
        
        
        let binding = Binding<String>(get: {
            self.location
        }, set: {
            self.location = $0
            // do whatever you want here
            @State var strThing = String(location)
            longestRepetition(strThing)

        })
        NavigationView{
            //Text("test")
            
            VStack {
                Text("Longest String : \(ansrForView) \(ansrForView2)")
                TextField("Type String Here", text: binding)
            }
            .navigationBarTitle("Code Wars Challenge")
        }
        
       
        
    }
}



struct LongestString_Previews: PreviewProvider {
    static var previews: some View {
        LongestString()
    }
}
