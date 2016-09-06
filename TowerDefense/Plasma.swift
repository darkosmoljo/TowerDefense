// ---------------------------------------
// Sprite definitions for 'Plasma'
// Generated with TexturePacker 4.2.0
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Plasma {

    // sprite names
    let PLASMA_BULLET_1 = "plasma_bullet_1"
    let PLASMA_BULLET_2 = "plasma_bullet_2"
    let PLASMA_BULLET_3 = "plasma_bullet_3"
    let PLASMA_BULLET_4 = "plasma_bullet_4"
    let PLASMA_BULLET_5 = "plasma_bullet_5"
    let PLASMA_BULLET_6 = "plasma_bullet_6"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Plasma")


    // individual texture objects
    func plasma_bullet_1() -> SKTexture { return textureAtlas.textureNamed(PLASMA_BULLET_1) }
    func plasma_bullet_2() -> SKTexture { return textureAtlas.textureNamed(PLASMA_BULLET_2) }
    func plasma_bullet_3() -> SKTexture { return textureAtlas.textureNamed(PLASMA_BULLET_3) }
    func plasma_bullet_4() -> SKTexture { return textureAtlas.textureNamed(PLASMA_BULLET_4) }
    func plasma_bullet_5() -> SKTexture { return textureAtlas.textureNamed(PLASMA_BULLET_5) }
    func plasma_bullet_6() -> SKTexture { return textureAtlas.textureNamed(PLASMA_BULLET_6) }


    // texture arrays for animations
    func plasma_bullet_() -> [SKTexture] {
        return [
            plasma_bullet_1(),
            plasma_bullet_2(),
            plasma_bullet_3(),
            plasma_bullet_4(),
            plasma_bullet_5(),
            plasma_bullet_6()
        ]
    }


}
