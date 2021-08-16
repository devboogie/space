//
//  ModalData.swift
//  space
//
//  Created by goboogie on 2021/08/16.
//

import Foundation

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
var dialogue: [Dialogue] = load("dialogue.json")

var test :Dialogue = Dialogue.init(id: 1, content: "인생에 생명을 이상의 장식하는 바이며, 공자는 청춘을 곳이 뛰노는 것이다. 이상의 사랑의 두손을 하는 뿐이다. 실로 같은 찾아다녀도, 철환하였는가? 두손을 인간에 품고 방지하는 대고, 날카로우나 하는 동력은 싹이 철환하였는가? 장식하는 있는 실로 있다. 우리의 얼마나 두손을 위하여, 곳이 구하지 운다. 밥을 우리의 같이, 살았으며, 이상 가치를 보라. 소리다.이것은 위하여, 같이, 같은 청춘에서만 끝까지 사막이다. 우리 그들은 오아이스도 보라.현악이며, 않는 노년에게서 그들은 철환하였는가? 위하여 밝은 그림자는 만물은 것이다. 커다란 인도하겠다는 전인 아름답고 놀이 봄바람이다.인생에 생명을 이상의 장식하는 바이며, 공자는 청춘을 곳이 뛰노는 것이다. 이상의 사랑의 두손을 하는 뿐이다. 실로 같은 찾아다녀도, 철환하였는가? 두손을 인간에 품고 방지하는 대고, 날카로우나 하는 동력은 싹이 철환하였는가? 장식하는 있는 실로 있다. 우리의 얼마나 두손을 위하여, 곳이 구하지 운다. 밥을 우리의 같이, 살았으며, 이상 가치를 보라. 소리다.이것은 위하여, 같이, 같은 청춘에서만 끝까지 사막이다. 우리 그들은 오아이스도 보라.\n끓는 풍부하게 있으며, 보는 꽃이 얼마나 칼이다. 창공에 피가 새 가는 찾아 든 끓는 꽃이 뼈 끓는다. 눈이 바로 웅대한 찾아 만물은 예수는 인간이 때문이다. 안고, 내는 이상 가는 피다. 피어나기 것이다.보라, 것은 너의 보는 주며, 보라. 밝은 열매를 끓는 그들의 약동하다. 아니더면, 천자만홍이 이 있는 아름답고 튼튼하며, 봄날의 하였으며, 보라. 힘차게 않는 사람은 길을 우리 사막이다. 시들어 이상, 같은 인도하겠다는 끝까지 같이 뛰노는 실현에 그리하였는가?\n목숨이 얼마나 것은 곧 이것은 투명하되 철환하였는가? 목숨을 생명을 천자만홍이 없는 품었기 살 사는가 힘차게 안고, 봄바람이다. 있는 있는 용감하고 것이다. 열매를 청춘에서만 인생을 칼이다. 보이는 두손을 위하여서 얼마나 철환하였는가? 구하지 눈에 희망의 되려니와, 기관과 풀밭에 그들에게 사막이다. 과실이 시들어 별과 관현악이며, 않는 노년에게서 그들은 철환하였는가? 위하여 밝은 그림자는 만물은 것이다. 커다란 인도하겠다는 전인 아름답고 놀이 봄바람이다.", options: [1,2])
