//
//  Tweet.swift
//  TablesExample
//
//  Created by ronaldo avalos on 24/11/23.
//

import Foundation

import Foundation

struct Tweet {
    var userName: String
    var message: String
    var url: URL?
    
    init(userName: String, message: String, url: URL? = nil) {
        self.userName = userName
        self.message = message
        self.url = url
    }
        
    static func buildTweetList() -> [Tweet] {
        return [
            Tweet(userName: "@romaldo-avalos", message: "Hola mundo 🌍 ", url: URL(string: "https://avatars.githubusercontent.com/u/139590146?v=4")),
            Tweet(userName: "@lauraperez_45", message: "¡Buenos días a todos!", url: URL(string: "https://avatars.githubusercontent.com/u/238590146?v=4")),
            Tweet(userName: "@mikejones_007", message: "Disfrutando del día soleado ☀️", url: URL(string: "https://avatars.githubusercontent.com/u/315590146?v=4")),
            Tweet(userName: "@emilybrown_22", message: "¡Feliz fin de semana! 🎉", url: URL(string: "https://avatars.githubusercontent.com/u/456590146?v=4")),
            Tweet(userName: "@alexwilson_23", message: "Nuevo día, nuevas oportunidades. 💪", url: URL(string: "https://avatars.githubusercontent.com/u/239890146?v=4")),
            Tweet(userName: "@samrodriguez_16", message: "Comenzando la semana con energía. ⚡️", url: URL(string: "https://avatars.githubusercontent.com/u/438590146?v=4")),
            Tweet(userName: "@chriswhite_78", message: "Descubriendo nuevas ideas para proyectos.", url: URL(string: "https://avatars.githubusercontent.com/u/239890146?v=4")),
            Tweet(userName: "@susanlee_44", message: "Agradecida por las pequeñas cosas. ✨", url: URL(string: "https://avatars.githubusercontent.com/u/789590146?v=4")),
            Tweet(userName: "@oliviagarcia_12", message: "¡Sonríe y contagia alegría! 😊", url: URL(string: "https://avatars.githubusercontent.com/u/987590146?v=4")),
            Tweet(userName: "@kevinclark_09", message: "Reflexionando sobre el progreso hecho hasta ahora.", url: URL(string: "https://avatars.githubusercontent.com/u/654590146?v=4")),
            Tweet(userName: "@nataliehill_75", message: "Tiempo para relajarse y recargar energías. 🌿", url: URL(string: "https://avatars.githubusercontent.com/u/753590146?v=4")),
            Tweet(userName: "@stephanieyoung_24", message: "Cada día es una oportunidad para aprender algo nuevo.", url: URL(string: "https://avatars.githubusercontent.com/u/324590146?v=4")),
            Tweet(userName: "@davidthomas_71", message: "Construyendo el futuro, paso a paso. 🔨", url: URL(string: "https://avatars.githubusercontent.com/u/125590146?v=4")),
            Tweet(userName: "@petermiller_27", message: "¡Qué gran día para hacer realidad nuestros sueños!", url: URL(string: "https://avatars.githubusercontent.com/u/842590146?v=4")),
            Tweet(userName: "@racheljohnson_63", message: "Agradeciendo las oportunidades que se presentan. 🙏", url: URL(string: "https://avatars.githubusercontent.com/u/276590146?v=4")),
            Tweet(userName: "@justinmartinez_81", message: "La creatividad fluye sin límites hoy. 🎨", url: URL(string: "https://avatars.githubusercontent.com/u/369590146?v=4")),
            Tweet(userName: "@romina_garcia_11", message: "Conectando con nuevas ideas e inspiración.", url: URL(string: "https://avatars.githubusercontent.com/u/453590146?v=4")),
            Tweet(userName: "@johndoe_45", message: "¡Listo para enfrentar nuevos desafíos esta semana!", url: URL(string: "https://avatars.githubusercontent.com/u/845590146?v=4")),
            Tweet(userName: "@sallysmith_22", message: "Disfrutando del momento y siendo agradecido. 🌟", url: URL(string: "https://avatars.githubusercontent.com/u/753590146?v=4")),
            Tweet(userName: "@ryanwright_37", message: "¡Vamos a hacer que hoy cuente!", url: URL(string: "https://avatars.githubusercontent.com/u/953590146?v=4"))
        ]
    }
}

