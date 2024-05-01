//
//  DetailView.swift
//  Swift test App
//


import SwiftUI

struct DetailView: View {
    
    let topic: Topic
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("Ideen & Notizensammlung").font(.title2).bold().foregroundColor(.blue).padding(4)
                
                
                Text("Swiftnote+").font(.system(size: 54)).bold()
                
                Text("Halte deine Ideen und Notizen in einer App fest, damit Du sie nicht verlierst. Folge die folgenden Schritte für den Beginn:").bold().padding(4)
                
                Text("1.) ÖFFNE die Swiftnote-App und DRÜCKE auf «starten». Danach DRÜCKE auf «Neuer Beitrag» und FASSE deine Gedanken zusammen. Über das Hauptmenü kannst Du nun auf deine erstellten Beiträge zugreiffen.")
                    .font(.system(size: 14, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Text("Das Swiftnote+ Team wünscht Dir eine kreative Zeit auf Swiftnote!").bold().padding(4)
                Button(action: {
                    print("Ich wurde gedrückt")
                }, label: {
                    HStack {
                        Image(systemName: "person")
                        Text("Über uns")
                    }.frame(width: 100, height: 70)
                    
                })
                Button(action: {
                    print("Ich wurde gedrückt")
                }, label: {
                    HStack {
                        Image(systemName: "arrow")
                        Text("starten")
                    }.frame(width: 350, height: 320).bold().font(.title2).foregroundColor(.gray)
                    
                })
                
            }
        }
            .padding()
        }
        
    }


#Preview {
    DetailView(topic: Topic(title: "Konstante", explanation: "Speichert Daten", codeSnippet: "let variable: string"))
}
