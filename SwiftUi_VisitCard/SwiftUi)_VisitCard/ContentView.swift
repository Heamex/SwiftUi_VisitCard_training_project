//
//  ContentView.swift
//  SwiftUi)_VisitCard
//
//  Created by Nikita Belov on 02.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.22, green: 0.68, blue: 0.66), Color(red: 0.04, green: 0.24, blue: 0.38)]), startPoint: .top, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).ignoresSafeArea()
            //Color(red: 0.22, green: 0.68, blue: 0.66).ignoresSafeArea()
            VStack {
                Image("ava").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 5))
                Text("Никита Белов")
                    .font(.title)
                    .fontWeight(.bold)
                Text("iOS Developer / Data Scientist")
                    .font(.title2)
                Divider()
                Card(image: "phone.fill", message: "+995 593 749 798")
                Card(image: "envelope.fill", message: "1909.belov@gmail.com")
                Card(image: "location.fill", message: "t.me:belov_nv")
            }.foregroundColor(.white)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25
        )
        .padding(.horizontal)
        .frame(height: 60.0)
        .overlay(HStack {
            Image(systemName: image)
            Text(message)
                .font(.title2)
                .fontWeight(.medium)
        }.foregroundColor(Color(red: 0.03, green: 0.60, blue: 0.57)))
    }
}
