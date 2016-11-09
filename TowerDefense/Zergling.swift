// ---------------------------------------
// Sprite definitions for 'Zergling'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Zergling {

    // sprite names
    let ZERGLING_DEATH1     = "zergling_death1"
    let ZERGLING_DEATH2     = "zergling_death2"
    let ZERGLING_DEATH3     = "zergling_death3"
    let ZERGLING_DEATH4     = "zergling_death4"
    let ZERGLING_DEATH5     = "zergling_death5"
    let ZERGLING_DEATH6     = "zergling_death6"
    let ZERGLING_DEATH7     = "zergling_death7"
    let ZERGLING_WALK_DOWN1 = "zergling_walk_down1"
    let ZERGLING_WALK_DOWN2 = "zergling_walk_down2"
    let ZERGLING_WALK_DOWN3 = "zergling_walk_down3"
    let ZERGLING_WALK_DOWN4 = "zergling_walk_down4"
    let ZERGLING_WALK_DOWN5 = "zergling_walk_down5"
    let ZERGLING_WALK_DOWN6 = "zergling_walk_down6"
    let ZERGLING_WALK_DOWN7 = "zergling_walk_down7"
    let ZERGLING_WALK_SIDE1 = "zergling_walk_side1"
    let ZERGLING_WALK_SIDE2 = "zergling_walk_side2"
    let ZERGLING_WALK_SIDE3 = "zergling_walk_side3"
    let ZERGLING_WALK_SIDE4 = "zergling_walk_side4"
    let ZERGLING_WALK_SIDE5 = "zergling_walk_side5"
    let ZERGLING_WALK_SIDE6 = "zergling_walk_side6"
    let ZERGLING_WALK_SIDE7 = "zergling_walk_side7"
    let ZERGLING_WALK_UP1   = "zergling_walk_up1"
    let ZERGLING_WALK_UP2   = "zergling_walk_up2"
    let ZERGLING_WALK_UP3   = "zergling_walk_up3"
    let ZERGLING_WALK_UP4   = "zergling_walk_up4"
    let ZERGLING_WALK_UP5   = "zergling_walk_up5"
    let ZERGLING_WALK_UP6   = "zergling_walk_up6"
    let ZERGLING_WALK_UP7   = "zergling_walk_up7"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Zergling")


    // individual texture objects
    func zergling_death1() -> SKTexture     { return textureAtlas.textureNamed(ZERGLING_DEATH1) }
    func zergling_death2() -> SKTexture     { return textureAtlas.textureNamed(ZERGLING_DEATH2) }
    func zergling_death3() -> SKTexture     { return textureAtlas.textureNamed(ZERGLING_DEATH3) }
    func zergling_death4() -> SKTexture     { return textureAtlas.textureNamed(ZERGLING_DEATH4) }
    func zergling_death5() -> SKTexture     { return textureAtlas.textureNamed(ZERGLING_DEATH5) }
    func zergling_death6() -> SKTexture     { return textureAtlas.textureNamed(ZERGLING_DEATH6) }
    func zergling_death7() -> SKTexture     { return textureAtlas.textureNamed(ZERGLING_DEATH7) }
    func zergling_walk_down1() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_DOWN1) }
    func zergling_walk_down2() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_DOWN2) }
    func zergling_walk_down3() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_DOWN3) }
    func zergling_walk_down4() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_DOWN4) }
    func zergling_walk_down5() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_DOWN5) }
    func zergling_walk_down6() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_DOWN6) }
    func zergling_walk_down7() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_DOWN7) }
    func zergling_walk_side1() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_SIDE1) }
    func zergling_walk_side2() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_SIDE2) }
    func zergling_walk_side3() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_SIDE3) }
    func zergling_walk_side4() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_SIDE4) }
    func zergling_walk_side5() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_SIDE5) }
    func zergling_walk_side6() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_SIDE6) }
    func zergling_walk_side7() -> SKTexture { return textureAtlas.textureNamed(ZERGLING_WALK_SIDE7) }
    func zergling_walk_up1() -> SKTexture   { return textureAtlas.textureNamed(ZERGLING_WALK_UP1) }
    func zergling_walk_up2() -> SKTexture   { return textureAtlas.textureNamed(ZERGLING_WALK_UP2) }
    func zergling_walk_up3() -> SKTexture   { return textureAtlas.textureNamed(ZERGLING_WALK_UP3) }
    func zergling_walk_up4() -> SKTexture   { return textureAtlas.textureNamed(ZERGLING_WALK_UP4) }
    func zergling_walk_up5() -> SKTexture   { return textureAtlas.textureNamed(ZERGLING_WALK_UP5) }
    func zergling_walk_up6() -> SKTexture   { return textureAtlas.textureNamed(ZERGLING_WALK_UP6) }
    func zergling_walk_up7() -> SKTexture   { return textureAtlas.textureNamed(ZERGLING_WALK_UP7) }


    // texture arrays for animations
    func zergling_death() -> [SKTexture] {
        return [
            zergling_death1(),
            zergling_death2(),
            zergling_death3(),
            zergling_death4(),
            zergling_death5(),
            zergling_death6(),
            zergling_death7()
        ]
    }

    func zergling_walk_down() -> [SKTexture] {
        return [
            zergling_walk_down1(),
            zergling_walk_down2(),
            zergling_walk_down3(),
            zergling_walk_down4(),
            zergling_walk_down5(),
            zergling_walk_down6(),
            zergling_walk_down7()
        ]
    }

    func zergling_walk_side() -> [SKTexture] {
        return [
            zergling_walk_side1(),
            zergling_walk_side2(),
            zergling_walk_side3(),
            zergling_walk_side4(),
            zergling_walk_side5(),
            zergling_walk_side6(),
            zergling_walk_side7()
        ]
    }

    func zergling_walk_up() -> [SKTexture] {
        return [
            zergling_walk_up1(),
            zergling_walk_up2(),
            zergling_walk_up3(),
            zergling_walk_up4(),
            zergling_walk_up5(),
            zergling_walk_up6(),
            zergling_walk_up7()
        ]
    }


}
