//
//  ContentView.swift
//  RGBApp
//
//  Created by Evgenii Mikhailov on 13.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var hueValue: Double = 0.5
    @State var saturationValue: Double = 1
    @State var brightnesValue: Double = 1
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Hue")
            Slider(value: $hueValue)
            Text("Saturation")
            Slider(value: $saturationValue)
            Text("Brightness")
            Slider(value: $brightnesValue)
            HStack(alignment: .center) {
                Button(action: {hueValue = Double.random(in: 0...1)})
                { Text("")
                        .frame(width: 179, height: 180)
                        .background(Color(hue: hueValue, saturation: saturationValue, brightness: brightnesValue))
                        .cornerRadius(45)
                }
                Button(action: {hueValue = Double.random(in: 0...1)})
                { Text("")
                        .frame(width: 179, height: 180)
                        .background(Color(hue: hueValue, saturation: saturationValue, brightness: brightnesValue)).hueRotation(Angle(degrees: 180))
                        .cornerRadius(45)
                }
            }
            
            Rectangle()
                .frame(width: 368, height: 90, alignment: .center)
                .foregroundColor(Color(hue: hueValue, saturation: saturationValue, brightness: brightnesValue))
                .cornerRadius(45)
            Rectangle()
                .frame(width: 368, height: 90, alignment: .center)
                .foregroundColor(Color(hue: hueValue, saturation: saturationValue, brightness: brightnesValue)).hueRotation(Angle(degrees: 120))
                .cornerRadius(45)
            Rectangle()
                .frame(width: 368, height: 90, alignment: .center)
                .foregroundColor(Color(hue: hueValue, saturation: saturationValue, brightness: brightnesValue)).hueRotation(Angle(degrees: 240))
                .cornerRadius(45)
            
        }.padding(20)
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
