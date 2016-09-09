// ---------------------------------------
// Sprite definitions for 'Storm'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Storm {

    // sprite names
    let STORM1 = "storm1"
    let STORM2 = "storm2"
    let STORM3 = "storm3"
    let STORM4 = "storm4"
    let STORM5 = "storm5"
    let STORM6 = "storm6"
    let STORM7 = "storm7"
    let STORM8 = "storm8"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Storm")


    // individual texture objects
    func storm1() -> SKTexture { return textureAtlas.textureNamed(STORM1) }
    func storm2() -> SKTexture { return textureAtlas.textureNamed(STORM2) }
    func storm3() -> SKTexture { return textureAtlas.textureNamed(STORM3) }
    func storm4() -> SKTexture { return textureAtlas.textureNamed(STORM4) }
    func storm5() -> SKTexture { return textureAtlas.textureNamed(STORM5) }
    func storm6() -> SKTexture { return textureAtlas.textureNamed(STORM6) }
    func storm7() -> SKTexture { return textureAtlas.textureNamed(STORM7) }
    func storm8() -> SKTexture { return textureAtlas.textureNamed(STORM8) }


    // texture arrays for animations
    func storm() -> [SKTexture] {
        return [
            storm1(),
            storm2(),
            storm3(),
            storm4(),
            storm5(),
            storm6(),
            storm7(),
            storm8()
        ]
    }


}
