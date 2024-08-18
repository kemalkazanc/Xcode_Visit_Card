//
//  ContentView.swift
//  Visit Card
//
//  Created by Kemal Kazanc on 16/08/2024.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            // Fond dégradé couvrant tout l'écran
            LinearGradient(
                gradient: Gradient(colors: [Color.gray.opacity(0.1), Color.black.opacity(0.8)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 5) {
                // Image et Nom
                Image("Kemal-work")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                Text("Kemal Kazanc")
                    .padding(.top, 8)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                // Section avec deux textes alignés à gauche et droite
                HStack {
                    Text("Développeur IOS")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text("Open to work")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                .padding(.horizontal)
                
                // Section avec une description
                HStack {
                    Text("Développeur Front-End JavaScript React\nMon objectif ? Devenir un expert en Développement Front et IOS")
                        .padding()
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .padding()
                }
                
                // Icônes des réseaux sociaux
                HStack(spacing: 20) {
                    Link(destination: URL(string: "mailto:keemalkazanc@gmail.com")!) {
                        Image(systemName: "envelope")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.pink)
                            .clipShape(Circle())
                    }
                    
                    Link(destination: URL(string: "https://github.com/kemalkazanc")!) {
                        Image(systemName: "chevron.left.slash.chevron.right")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.black)
                            .clipShape(Circle())
                    }
                    
                    Link(destination: URL(string: "https://www.youtube.com/ton_chaine")!) {
                        Image(systemName: "play.rectangle")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    
                    Link(destination: URL(string: "https://www.linkedin.com/in/kemal-kazanc-a6611a22b/")!) {
                        Image(systemName: "person.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.blue)
                            .clipShape(Circle())
                    }
                    
                    Link(destination: URL(string: "https://kemalkazanc.com/")!) {
                        Image(systemName: "link")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.blue)
                            .clipShape(Circle())
                    }
                }
                .padding(.top, 8)
                
                // Espace contrôlé entre les sections
                Spacer().frame(height: 20)
                
                // Section des compétences avec étoiles
                VStack(spacing: 10) {
                    HStack {
                        Text("SwiftUI")
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Xcode")
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Github")
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    .padding(.horizontal)
                }
                
                // Bouton de partage
                Button(action: {
                    shareCard()
                }) {
                    HStack {
                    Text("Partager ma carte")
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                    Image(systemName: "arrow.up.right")
//                      .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.2))
                    .cornerRadius(20)
                    .shadow(radius: 20)
                }
                .padding(.top, 20) // Espacement au-dessus du bouton
            }
            .padding()
        }
    }
    
    // Fonction pour partager la carte via SMS
    func shareCard() {
        guard let messageAppURL = URL(string: "sms:&body=Bonjour,\nCliquez ici pour voir ma carte de visite : www.monsite.fr.\nA bientôt,\nKemal") else {
            return
        }
        
        if UIApplication.shared.canOpenURL(messageAppURL) {
            UIApplication.shared.open(messageAppURL)
        }
    }
}

#Preview {
    ContentView()
}


