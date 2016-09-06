// ---------------------------------------
// Sprite definitions for 'Archon'
// Generated with TexturePacker 4.2.0
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Archon {

    // sprite names
    let ARCHON_ATTACK_UP_1  = "archon_attack_up_1"
    let ARCHON_ATTACK_UP_10 = "archon_attack_up_10"
    let ARCHON_ATTACK_UP_2  = "archon_attack_up_2"
    let ARCHON_ATTACK_UP_3  = "archon_attack_up_3"
    let ARCHON_ATTACK_UP_4  = "archon_attack_up_4"
    let ARCHON_ATTACK_UP_5  = "archon_attack_up_5"
    let ARCHON_ATTACK_UP_6  = "archon_attack_up_6"
    let ARCHON_ATTACK_UP_7  = "archon_attack_up_7"
    let ARCHON_ATTACK_UP_8  = "archon_attack_up_8"
    let ARCHON_ATTACK_UP_9  = "archon_attack_up_9"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Archon")


    // individual texture objects
    func archon_attack_up_1() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_1) }
    func archon_attack_up_10() -> SKTexture { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_10) }
    func archon_attack_up_2() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_2) }
    func archon_attack_up_3() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_3) }
    func archon_attack_up_4() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_4) }
    func archon_attack_up_5() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_5) }
    func archon_attack_up_6() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_6) }
    func archon_attack_up_7() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_7) }
    func archon_attack_up_8() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_8) }
    func archon_attack_up_9() -> SKTexture  { return textureAtlas.textureNamed(ARCHON_ATTACK_UP_9) }


    // texture arrays for animations
    func archon_attack_up_() -> [SKTexture] {
        return [
            archon_attack_up_1(),
            archon_attack_up_2(),
            archon_attack_up_3(),
            archon_attack_up_4(),
            archon_attack_up_5(),
            archon_attack_up_6(),
            archon_attack_up_7(),
            archon_attack_up_8(),
            archon_attack_up_9(),
            archon_attack_up_10()
        ]
    }


}
