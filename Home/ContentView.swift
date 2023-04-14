//
//  WelcomeScreen.swift
//  SwiftUI-theming-poc
//
//  Created by Daniela Paola Beltran Saavedra on 29/03/23.
//

import SwiftUI
import Theme
import Commons

struct WelcomeScreen: View {
    var body: some View {
        NavigationView{
                VStack {
                    ZStack(alignment: .top){
                        Image("im_welcomeImage")
                            .resizable()
                    }.edgesIgnoringSafeArea(.all)
                        .overlay(Text("dse"))
                    Text(LocalizedStringKey("¡Vive bacán!"))
                        .font(AppTheme.typhography[.h2Bold])
                        .foregroundColor(AppTheme.colors.textPrimary)
                        .font(.body)
                        .overlay(Text("d"))
                    
                    Text(LocalizedStringKey("Aquí tu plata siempre está a la mano."))
                        .font(AppTheme.typhography[.h4])
                        .foregroundColor(AppTheme.colors.textPrimary)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                        .overlay(Text(""))
                    PrimaryButton(text: LocalizedStringKey("Regístrate"), action: ButtonAction(destination: EmptyView(), onClick: {}))
                        .overlay(Text("d"))
                    .padding([.leading, .trailing], 20)
                    SecondaryButton(text: LocalizedStringKey("Iniciar sesión"), action: ButtonAction(destination: EmptyView(), onClick: {}))
                        .overlay(Text("dse"))
                        .overlay(Text("dses"))
                    .padding([.leading, .trailing], 20)
                    .padding(.bottom, 10)
                    
                    Spacer()
                }
                
                .background(AppTheme.colors.screenBackground)
                .overlay(Text("asd"))
                .overlay(Text("asdd"))
        }
    }
}

struct Welcom_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
