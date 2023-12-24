//
//  ContentView.swift
//  nc2
//
//  Created by lujain alrasheed on 07/06/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var degreesRotating = 0.0

    var body: some View {
        ZStack{
            VStack {
            
                Image("black")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                
            }
           
            
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 350,height: 330)
     
                .padding()
                .rotationEffect(.degrees(degreesRotating))

                .onAppear {
                              withAnimation(.linear(duration: 1)
                                  .speed(0.8).repeatForever(autoreverses: true)) {
                                      
                                      degreesRotating = 30
                                  }
                    DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                        withAnimation(.linear(duration: 0.8)
                            .speed(0.4).repeatForever(autoreverses: true)) {
                                //degreesRotating = 0

                                degreesRotating = -30
                            }
                    }
           
                          }
            
                
            Text("شعلة")
                .font(.system(size:70).bold())
               
                .foregroundColor(.white)
                .padding(.top,450)
            
            Text("لنتعلم الحروف مع ")
                .font(.system(size:70).bold())
               
                .foregroundColor(.white)
                .padding(.bottom,450)
        }
        Spacer()
        
   
    }
}

#Preview {
    ContentView()
}
