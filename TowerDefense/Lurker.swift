// ---------------------------------------
// Sprite definitions for 'Lurker'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Lurker {

    // sprite names
    let LURKER_DEATH1     = "lurker_death1"
    let LURKER_DEATH2     = "lurker_death2"
    let LURKER_DEATH3     = "lurker_death3"
    let LURKER_DEATH4     = "lurker_death4"
    let LURKER_DEATH5     = "lurker_death5"
    let LURKER_DEATH6     = "lurker_death6"
    let LURKER_DEATH7     = "lurker_death7"
    let LURKER_DEATH8     = "lurker_death8"
    let LURKER_DEATH9     = "lurker_death9"
    let LURKER_WALK_DOWN1 = "lurker_walk_down1"
    let LURKER_WALK_DOWN2 = "lurker_walk_down2"
    let LURKER_WALK_DOWN3 = "lurker_walk_down3"
    let LURKER_WALK_DOWN4 = "lurker_walk_down4"
    let LURKER_WALK_DOWN5 = "lurker_walk_down5"
    let LURKER_WALK_DOWN6 = "lurker_walk_down6"
    let LURKER_WALK_DOWN7 = "lurker_walk_down7"
    let LURKER_WALK_SIDE1 = "lurker_walk_side1"
    let LURKER_WALK_SIDE2 = "lurker_walk_side2"
    let LURKER_WALK_SIDE3 = "lurker_walk_side3"
    let LURKER_WALK_SIDE4 = "lurker_walk_side4"
    let LURKER_WALK_SIDE5 = "lurker_walk_side5"
    let LURKER_WALK_SIDE6 = "lurker_walk_side6"
    let LURKER_WALK_SIDE7 = "lurker_walk_side7"
    let LURKER_WALK_UP1   = "lurker_walk_up1"
    let LURKER_WALK_UP2   = "lurker_walk_up2"
    let LURKER_WALK_UP3   = "lurker_walk_up3"
    let LURKER_WALK_UP4   = "lurker_walk_up4"
    let LURKER_WALK_UP5   = "lurker_walk_up5"
    let LURKER_WALK_UP6   = "lurker_walk_up6"
    let LURKER_WALK_UP7   = "lurker_walk_up7"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Lurker")


    // individual texture objects
    func lurker_death1() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH1) }
    func lurker_death2() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH2) }
    func lurker_death3() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH3) }
    func lurker_death4() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH4) }
    func lurker_death5() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH5) }
    func lurker_death6() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH6) }
    func lurker_death7() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH7) }
    func lurker_death8() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH8) }
    func lurker_death9() -> SKTexture     { return textureAtlas.textureNamed(LURKER_DEATH9) }
    func lurker_walk_down1() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_DOWN1) }
    func lurker_walk_down2() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_DOWN2) }
    func lurker_walk_down3() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_DOWN3) }
    func lurker_walk_down4() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_DOWN4) }
    func lurker_walk_down5() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_DOWN5) }
    func lurker_walk_down6() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_DOWN6) }
    func lurker_walk_down7() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_DOWN7) }
    func lurker_walk_side1() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_SIDE1) }
    func lurker_walk_side2() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_SIDE2) }
    func lurker_walk_side3() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_SIDE3) }
    func lurker_walk_side4() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_SIDE4) }
    func lurker_walk_side5() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_SIDE5) }
    func lurker_walk_side6() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_SIDE6) }
    func lurker_walk_side7() -> SKTexture { return textureAtlas.textureNamed(LURKER_WALK_SIDE7) }
    func lurker_walk_up1() -> SKTexture   { return textureAtlas.textureNamed(LURKER_WALK_UP1) }
    func lurker_walk_up2() -> SKTexture   { return textureAtlas.textureNamed(LURKER_WALK_UP2) }
    func lurker_walk_up3() -> SKTexture   { return textureAtlas.textureNamed(LURKER_WALK_UP3) }
    func lurker_walk_up4() -> SKTexture   { return textureAtlas.textureNamed(LURKER_WALK_UP4) }
    func lurker_walk_up5() -> SKTexture   { return textureAtlas.textureNamed(LURKER_WALK_UP5) }
    func lurker_walk_up6() -> SKTexture   { return textureAtlas.textureNamed(LURKER_WALK_UP6) }
    func lurker_walk_up7() -> SKTexture   { return textureAtlas.textureNamed(LURKER_WALK_UP7) }


    // texture arrays for animations
    func lurker_death() -> [SKTexture] {
        return [
            lurker_death1(),
            lurker_death2(),
            lurker_death3(),
            lurker_death4(),
            lurker_death5(),
            lurker_death6(),
            lurker_death7(),
            lurker_death8(),
            lurker_death9()
        ]
    }

    func lurker_walk_down() -> [SKTexture] {
        return [
            lurker_walk_down1(),
            lurker_walk_down2(),
            lurker_walk_down3(),
            lurker_walk_down4(),
            lurker_walk_down5(),
            lurker_walk_down6(),
            lurker_walk_down7()
        ]
    }

    func lurker_walk_side() -> [SKTexture] {
        return [
            lurker_walk_side1(),
            lurker_walk_side2(),
            lurker_walk_side3(),
            lurker_walk_side4(),
            lurker_walk_side5(),
            lurker_walk_side6(),
            lurker_walk_side7()
        ]
    }

    func lurker_walk_up() -> [SKTexture] {
        return [
            lurker_walk_up1(),
            lurker_walk_up2(),
            lurker_walk_up3(),
            lurker_walk_up4(),
            lurker_walk_up5(),
            lurker_walk_up6(),
            lurker_walk_up7()
        ]
    }


}
