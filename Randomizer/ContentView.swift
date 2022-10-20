//
//  ContentView.swift
//  RGBApp
//
//  Created by Evgenii Mikhailov on 13.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var redComponent: Double = 0.5
    @State var greenComponent: Double = 0.5
    @State var blueComponent: Double = 0.5
    
    
    var body: some View {
        VStack(alignment: .center) {
            Slider(value: $redComponent)
            Slider(value: $greenComponent)
            Slider(value: $blueComponent)
            ZStack(alignment: .center){
                Color(red: redComponent, green: greenComponent, blue: blueComponent).cornerRadius(50)
                VStack(alignment: .center) {
                    Text("R\(UInt(255 * redComponent))")
                    Text("G\(UInt(255 * greenComponent))")
                    Text("B\(UInt(255 * blueComponent))")
                    Button(action: {
                        redComponent = Double.random(in: 0...1)
                        greenComponent = Double.random(in: 0...1)
                        blueComponent = Double.random(in: 0...1)
                    })
                    { Text("New color")
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(.black)
                            .cornerRadius(45)
                    }
                    Text("\(String(format: "%02X",(UInt(255 * redComponent))))\(String(format: "%02X",(UInt(255 * greenComponent))))\(String(format: "%02X",(UInt(255 * blueComponent))))")
                }
            }.padding(20).padding(.bottom, 100)
            Button(action: {
            })
            {Text("Back")}
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
