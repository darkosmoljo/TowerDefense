// ---------------------------------------
// Sprite definitions for 'Guardian'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Guardian {

    // sprite names
    let GUARDIAN_DEATH1     = "guardian_death1"
    let GUARDIAN_DEATH2     = "guardian_death2"
    let GUARDIAN_DEATH3     = "guardian_death3"
    let GUARDIAN_DEATH4     = "guardian_death4"
    let GUARDIAN_DEATH5     = "guardian_death5"
    let GUARDIAN_DEATH6     = "guardian_death6"
    let GUARDIAN_DEATH7     = "guardian_death7"
    let GUARDIAN_DEATH8     = "guardian_death8"
    let GUARDIAN_WALK_DOWN1 = "guardian_walk_down1"
    let GUARDIAN_WALK_DOWN2 = "guardian_walk_down2"
    let GUARDIAN_WALK_DOWN3 = "guardian_walk_down3"
    let GUARDIAN_WALK_DOWN4 = "guardian_walk_down4"
    let GUARDIAN_WALK_DOWN5 = "guardian_walk_down5"
    let GUARDIAN_WALK_DOWN6 = "guardian_walk_down6"
    let GUARDIAN_WALK_DOWN7 = "guardian_walk_down7"
    let GUARDIAN_WALK_SIDE1 = "guardian_walk_side1"
    let GUARDIAN_WALK_SIDE2 = "guardian_walk_side2"
    let GUARDIAN_WALK_SIDE3 = "guardian_walk_side3"
    let GUARDIAN_WALK_SIDE4 = "guardian_walk_side4"
    let GUARDIAN_WALK_SIDE5 = "guardian_walk_side5"
    let GUARDIAN_WALK_SIDE6 = "guardian_walk_side6"
    let GUARDIAN_WALK_SIDE7 = "guardian_walk_side7"
    let GUARDIAN_WALK_UP1   = "guardian_walk_up1"
    let GUARDIAN_WALK_UP2   = "guardian_walk_up2"
    let GUARDIAN_WALK_UP3   = "guardian_walk_up3"
    let GUARDIAN_WALK_UP4   = "guardian_walk_up4"
    let GUARDIAN_WALK_UP5   = "guardian_walk_up5"
    let GUARDIAN_WALK_UP6   = "guardian_walk_up6"
    let GUARDIAN_WALK_UP7   = "guardian_walk_up7"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Guardian")


    // individual texture objects
    func guardian_death1() -> SKTexture     { return textureAtlas.textureNamed(GUARDIAN_DEATH1) }
    func guardian_death2() -> SKTexture     { return textureAtlas.textureNamed(GUARDIAN_DEATH2) }
    func guardian_death3() -> SKTexture     { return textureAtlas.textureNamed(GUARDIAN_DEATH3) }
    func guardian_death4() -> SKTexture     { return textureAtlas.textureNamed(GUARDIAN_DEATH4) }
    func guardian_death5() -> SKTexture     { return textureAtlas.textureNamed(GUARDIAN_DEATH5) }
    func guardian_death6() -> SKTexture     { return textureAtlas.textureNamed(GUARDIAN_DEATH6) }
    func guardian_death7() -> SKTexture     { return textureAtlas.textureNamed(GUARDIAN_DEATH7) }
    func guardian_death8() -> SKTexture     { return textureAtlas.textureNamed(GUARDIAN_DEATH8) }
    func guardian_walk_down1() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_DOWN1) }
    func guardian_walk_down2() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_DOWN2) }
    func guardian_walk_down3() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_DOWN3) }
    func guardian_walk_down4() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_DOWN4) }
    func guardian_walk_down5() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_DOWN5) }
    func guardian_walk_down6() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_DOWN6) }
    func guardian_walk_down7() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_DOWN7) }
    func guardian_walk_side1() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_SIDE1) }
    func guardian_walk_side2() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_SIDE2) }
    func guardian_walk_side3() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_SIDE3) }
    func guardian_walk_side4() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_SIDE4) }
    func guardian_walk_side5() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_SIDE5) }
    func guardian_walk_side6() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_SIDE6) }
    func guardian_walk_side7() -> SKTexture { return textureAtlas.textureNamed(GUARDIAN_WALK_SIDE7) }
    func guardian_walk_up1() -> SKTexture   { return textureAtlas.textureNamed(GUARDIAN_WALK_UP1) }
    func guardian_walk_up2() -> SKTexture   { return textureAtlas.textureNamed(GUARDIAN_WALK_UP2) }
    func guardian_walk_up3() -> SKTexture   { return textureAtlas.textureNamed(GUARDIAN_WALK_UP3) }
    func guardian_walk_up4() -> SKTexture   { return textureAtlas.textureNamed(GUARDIAN_WALK_UP4) }
    func guardian_walk_up5() -> SKTexture   { return textureAtlas.textureNamed(GUARDIAN_WALK_UP5) }
    func guardian_walk_up6() -> SKTexture   { return textureAtlas.textureNamed(GUARDIAN_WALK_UP6) }
    func guardian_walk_up7() -> SKTexture   { return textureAtlas.textureNamed(GUARDIAN_WALK_UP7) }


    // texture arrays for animations
    func guardian_death() -> [SKTexture] {
        return [
            guardian_death1(),
            guardian_death2(),
            guardian_death3(),
            guardian_death4(),
            guardian_death5(),
            guardian_death6(),
            guardian_death7(),
            guardian_death8()
        ]
    }

    func guardian_walk_down() -> [SKTexture] {
        return [
            guardian_walk_down1(),
            guardian_walk_down2(),
            guardian_walk_down3(),
            guardian_walk_down4(),
            guardian_walk_down5(),
            guardian_walk_down6(),
            guardian_walk_down7()
        ]
    }

    func guardian_walk_side() -> [SKTexture] {
        return [
            guardian_walk_side1(),
            guardian_walk_side2(),
            guardian_walk_side3(),
            guardian_walk_side4(),
            guardian_walk_side5(),
            guardian_walk_side6(),
            guardian_walk_side7()
        ]
    }

    func guardian_walk_up() -> [SKTexture] {
        return [
            guardian_walk_up1(),
            guardian_walk_up2(),
            guardian_walk_up3(),
            guardian_walk_up4(),
            guardian_walk_up5(),
            guardian_walk_up6(),
            guardian_walk_up7()
        ]
    }


}
