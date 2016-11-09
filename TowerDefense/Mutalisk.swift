// ---------------------------------------
// Sprite definitions for 'Mutalisk'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Mutalisk {

    // sprite names
    let MUTALISK_DEATH1     = "mutalisk_death1"
    let MUTALISK_DEATH2     = "mutalisk_death2"
    let MUTALISK_DEATH3     = "mutalisk_death3"
    let MUTALISK_DEATH4     = "mutalisk_death4"
    let MUTALISK_DEATH5     = "mutalisk_death5"
    let MUTALISK_DEATH6     = "mutalisk_death6"
    let MUTALISK_DEATH7     = "mutalisk_death7"
    let MUTALISK_DEATH8     = "mutalisk_death8"
    let MUTALISK_WALK_DOWN1 = "mutalisk_walk_down1"
    let MUTALISK_WALK_DOWN2 = "mutalisk_walk_down2"
    let MUTALISK_WALK_DOWN3 = "mutalisk_walk_down3"
    let MUTALISK_WALK_DOWN4 = "mutalisk_walk_down4"
    let MUTALISK_WALK_DOWN5 = "mutalisk_walk_down5"
    let MUTALISK_WALK_SIDE1 = "mutalisk_walk_side1"
    let MUTALISK_WALK_SIDE2 = "mutalisk_walk_side2"
    let MUTALISK_WALK_SIDE3 = "mutalisk_walk_side3"
    let MUTALISK_WALK_SIDE4 = "mutalisk_walk_side4"
    let MUTALISK_WALK_SIDE5 = "mutalisk_walk_side5"
    let MUTALISK_WALK_UP1   = "mutalisk_walk_up1"
    let MUTALISK_WALK_UP2   = "mutalisk_walk_up2"
    let MUTALISK_WALK_UP3   = "mutalisk_walk_up3"
    let MUTALISK_WALK_UP4   = "mutalisk_walk_up4"
    let MUTALISK_WALK_UP5   = "mutalisk_walk_up5"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Mutalisk")


    // individual texture objects
    func mutalisk_death1() -> SKTexture     { return textureAtlas.textureNamed(MUTALISK_DEATH1) }
    func mutalisk_death2() -> SKTexture     { return textureAtlas.textureNamed(MUTALISK_DEATH2) }
    func mutalisk_death3() -> SKTexture     { return textureAtlas.textureNamed(MUTALISK_DEATH3) }
    func mutalisk_death4() -> SKTexture     { return textureAtlas.textureNamed(MUTALISK_DEATH4) }
    func mutalisk_death5() -> SKTexture     { return textureAtlas.textureNamed(MUTALISK_DEATH5) }
    func mutalisk_death6() -> SKTexture     { return textureAtlas.textureNamed(MUTALISK_DEATH6) }
    func mutalisk_death7() -> SKTexture     { return textureAtlas.textureNamed(MUTALISK_DEATH7) }
    func mutalisk_death8() -> SKTexture     { return textureAtlas.textureNamed(MUTALISK_DEATH8) }
    func mutalisk_walk_down1() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_DOWN1) }
    func mutalisk_walk_down2() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_DOWN2) }
    func mutalisk_walk_down3() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_DOWN3) }
    func mutalisk_walk_down4() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_DOWN4) }
    func mutalisk_walk_down5() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_DOWN5) }
    func mutalisk_walk_side1() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_SIDE1) }
    func mutalisk_walk_side2() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_SIDE2) }
    func mutalisk_walk_side3() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_SIDE3) }
    func mutalisk_walk_side4() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_SIDE4) }
    func mutalisk_walk_side5() -> SKTexture { return textureAtlas.textureNamed(MUTALISK_WALK_SIDE5) }
    func mutalisk_walk_up1() -> SKTexture   { return textureAtlas.textureNamed(MUTALISK_WALK_UP1) }
    func mutalisk_walk_up2() -> SKTexture   { return textureAtlas.textureNamed(MUTALISK_WALK_UP2) }
    func mutalisk_walk_up3() -> SKTexture   { return textureAtlas.textureNamed(MUTALISK_WALK_UP3) }
    func mutalisk_walk_up4() -> SKTexture   { return textureAtlas.textureNamed(MUTALISK_WALK_UP4) }
    func mutalisk_walk_up5() -> SKTexture   { return textureAtlas.textureNamed(MUTALISK_WALK_UP5) }


    // texture arrays for animations
    func mutalisk_death() -> [SKTexture] {
        return [
            mutalisk_death1(),
            mutalisk_death2(),
            mutalisk_death3(),
            mutalisk_death4(),
            mutalisk_death5(),
            mutalisk_death6(),
            mutalisk_death7(),
            mutalisk_death8()
        ]
    }

    func mutalisk_walk_down() -> [SKTexture] {
        return [
            mutalisk_walk_down1(),
            mutalisk_walk_down2(),
            mutalisk_walk_down3(),
            mutalisk_walk_down4(),
            mutalisk_walk_down5()
        ]
    }

    func mutalisk_walk_side() -> [SKTexture] {
        return [
            mutalisk_walk_side1(),
            mutalisk_walk_side2(),
            mutalisk_walk_side3(),
            mutalisk_walk_side4(),
            mutalisk_walk_side5()
        ]
    }

    func mutalisk_walk_up() -> [SKTexture] {
        return [
            mutalisk_walk_up1(),
            mutalisk_walk_up2(),
            mutalisk_walk_up3(),
            mutalisk_walk_up4(),
            mutalisk_walk_up5()
        ]
    }


}
