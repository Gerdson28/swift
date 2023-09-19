//
//  ContentView.swift
//  Aplicacao
//
//  Created by User on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:35)
            {Text("STARDUST CRUSADERS")
                .font(.system(size:44))
                .foregroundColor(.white)
                .bold()
            }
            //LinearGradient(colors: [.yellow,.black], startPoint: .topLeading, endPoint: .bottomLeading)
            HStack{
                Image("jojo")
                    .resizable()
                    .frame(width:150, height: 150)
                    .cornerRadius(10)
               
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

