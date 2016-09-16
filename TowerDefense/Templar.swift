// ---------------------------------------
// Sprite definitions for 'Templar'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Templar {

    // sprite names
    let TEMPLAR_ATTACK_DOWN1 = "templar_attack_down1"
    let TEMPLAR_ATTACK_DOWN2 = "templar_attack_down2"
    let TEMPLAR_ATTACK_DOWN3 = "templar_attack_down3"
    let TEMPLAR_ATTACK_DOWN4 = "templar_attack_down4"
    let TEMPLAR_ATTACK_DOWN5 = "templar_attack_down5"
    let TEMPLAR_ATTACK_DOWN6 = "templar_attack_down6"
    let TEMPLAR_ATTACK_DOWN7 = "templar_attack_down7"
    let TEMPLAR_ATTACK_DOWN8 = "templar_attack_down8"
    let TEMPLAR_ATTACK_UP1   = "templar_attack_up1"
    let TEMPLAR_ATTACK_UP2   = "templar_attack_up2"
    let TEMPLAR_ATTACK_UP3   = "templar_attack_up3"
    let TEMPLAR_ATTACK_UP4   = "templar_attack_up4"
    let TEMPLAR_ATTACK_UP5   = "templar_attack_up5"
    let TEMPLAR_ATTACK_UP6   = "templar_attack_up6"
    let TEMPLAR_ATTACK_UP7   = "templar_attack_up7"
    let TEMPLAR_ATTACK_UP8   = "templar_attack_up8"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Templar")


    // individual texture objects
    func templar_attack_down1() -> SKTexture { return textureAtlas.textureNamed(TEMPLAR_ATTACK_DOWN1) }
    func templar_attack_down2() -> SKTexture { return textureAtlas.textureNamed(TEMPLAR_ATTACK_DOWN2) }
    func templar_attack_down3() -> SKTexture { return textureAtlas.textureNamed(TEMPLAR_ATTACK_DOWN3) }
    func templar_attack_down4() -> SKTexture { return textureAtlas.textureNamed(TEMPLAR_ATTACK_DOWN4) }
    func templar_attack_down5() -> SKTexture { return textureAtlas.textureNamed(TEMPLAR_ATTACK_DOWN5) }
    func templar_attack_down6() -> SKTexture { return textureAtlas.textureNamed(TEMPLAR_ATTACK_DOWN6) }
    func templar_attack_down7() -> SKTexture { return textureAtlas.textureNamed(TEMPLAR_ATTACK_DOWN7) }
    func templar_attack_down8() -> SKTexture { return textureAtlas.textureNamed(TEMPLAR_ATTACK_DOWN8) }
    func templar_attack_up1() -> SKTexture   { return textureAtlas.textureNamed(TEMPLAR_ATTACK_UP1) }
    func templar_attack_up2() -> SKTexture   { return textureAtlas.textureNamed(TEMPLAR_ATTACK_UP2) }
    func templar_attack_up3() -> SKTexture   { return textureAtlas.textureNamed(TEMPLAR_ATTACK_UP3) }
    func templar_attack_up4() -> SKTexture   { return textureAtlas.textureNamed(TEMPLAR_ATTACK_UP4) }
    func templar_attack_up5() -> SKTexture   { return textureAtlas.textureNamed(TEMPLAR_ATTACK_UP5) }
    func templar_attack_up6() -> SKTexture   { return textureAtlas.textureNamed(TEMPLAR_ATTACK_UP6) }
    func templar_attack_up7() -> SKTexture   { return textureAtlas.textureNamed(TEMPLAR_ATTACK_UP7) }
    func templar_attack_up8() -> SKTexture   { return textureAtlas.textureNamed(TEMPLAR_ATTACK_UP8) }


    // texture arrays for animations
    func templar_attack_down() -> [SKTexture] {
        return [
            templar_attack_down1(),
            templar_attack_down2(),
            templar_attack_down3(),
            templar_attack_down4(),
            templar_attack_down5(),
            templar_attack_down6(),
            templar_attack_down7(),
            templar_attack_down8()
        ]
    }

    func templar_attack_up() -> [SKTexture] {
        return [
            templar_attack_up1(),
            templar_attack_up2(),
            templar_attack_up3(),
            templar_attack_up4(),
            templar_attack_up5(),
            templar_attack_up6(),
            templar_attack_up7(),
            templar_attack_up8()
        ]
    }


}
