//
//  HomeScreen.swift
//  DepenDemo1
//
//  Created by Abduqaxxor on 10/3/22.
//

import SwiftUI


struct HomeScreen: View {
    
    @State var welcome = "str_welcome".localized()
    
    var body: some View {
        VStack{
            VStack{
        Text(LocalizedStringKey(welcome))
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
            HStack(spacing: 0){
                VStack{
                Button(action: {
                    Bundle.setLanguage(lang: "en")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("English")
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.red)
                })
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                VStack{
                Button(action: {
                    Bundle.setLanguage(lang: "ru")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("Russian")
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.blue)
                })
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                VStack{
                Button(action: {
                    Bundle.setLanguage(lang: "uz")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("Uzbek")
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.green)
                })
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                VStack{
                Button(action: {
                    Bundle.setLanguage(lang: "fr")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("French").foregroundColor(.white)
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .background(.orange)
                })
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 70)
        }
        .padding(.bottom)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
