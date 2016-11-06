// ---------------------------------------
// Sprite definitions for 'scourge'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Scourge {

    // sprite names
    let SCOURGE_DEATH1     = "scourge_death1"
    let SCOURGE_DEATH2     = "scourge_death2"
    let SCOURGE_DEATH3     = "scourge_death3"
    let SCOURGE_DEATH4     = "scourge_death4"
    let SCOURGE_DEATH5     = "scourge_death5"
    let SCOURGE_DEATH6     = "scourge_death6"
    let SCOURGE_DEATH7     = "scourge_death7"
    let SCOURGE_DEATH8     = "scourge_death8"
    let SCOURGE_WALK_DOWN1 = "scourge_walk_down1"
    let SCOURGE_WALK_DOWN2 = "scourge_walk_down2"
    let SCOURGE_WALK_DOWN3 = "scourge_walk_down3"
    let SCOURGE_WALK_DOWN4 = "scourge_walk_down4"
    let SCOURGE_WALK_DOWN5 = "scourge_walk_down5"
    let SCOURGE_WALK_SIDE1 = "scourge_walk_side1"
    let SCOURGE_WALK_SIDE2 = "scourge_walk_side2"
    let SCOURGE_WALK_SIDE3 = "scourge_walk_side3"
    let SCOURGE_WALK_SIDE4 = "scourge_walk_side4"
    let SCOURGE_WALK_SIDE5 = "scourge_walk_side5"
    let SCOURGE_WALK_UP1   = "scourge_walk_up1"
    let SCOURGE_WALK_UP2   = "scourge_walk_up2"
    let SCOURGE_WALK_UP3   = "scourge_walk_up3"
    let SCOURGE_WALK_UP4   = "scourge_walk_up4"
    let SCOURGE_WALK_UP5   = "scourge_walk_up5"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "scourge")


    // individual texture objects
    func scourge_death1() -> SKTexture     { return textureAtlas.textureNamed(SCOURGE_DEATH1) }
    func scourge_death2() -> SKTexture     { return textureAtlas.textureNamed(SCOURGE_DEATH2) }
    func scourge_death3() -> SKTexture     { return textureAtlas.textureNamed(SCOURGE_DEATH3) }
    func scourge_death4() -> SKTexture     { return textureAtlas.textureNamed(SCOURGE_DEATH4) }
    func scourge_death5() -> SKTexture     { return textureAtlas.textureNamed(SCOURGE_DEATH5) }
    func scourge_death6() -> SKTexture     { return textureAtlas.textureNamed(SCOURGE_DEATH6) }
    func scourge_death7() -> SKTexture     { return textureAtlas.textureNamed(SCOURGE_DEATH7) }
    func scourge_death8() -> SKTexture     { return textureAtlas.textureNamed(SCOURGE_DEATH8) }
    func scourge_walk_down1() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_DOWN1) }
    func scourge_walk_down2() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_DOWN2) }
    func scourge_walk_down3() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_DOWN3) }
    func scourge_walk_down4() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_DOWN4) }
    func scourge_walk_down5() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_DOWN5) }
    func scourge_walk_side1() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_SIDE1) }
    func scourge_walk_side2() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_SIDE2) }
    func scourge_walk_side3() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_SIDE3) }
    func scourge_walk_side4() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_SIDE4) }
    func scourge_walk_side5() -> SKTexture { return textureAtlas.textureNamed(SCOURGE_WALK_SIDE5) }
    func scourge_walk_up1() -> SKTexture   { return textureAtlas.textureNamed(SCOURGE_WALK_UP1) }
    func scourge_walk_up2() -> SKTexture   { return textureAtlas.textureNamed(SCOURGE_WALK_UP2) }
    func scourge_walk_up3() -> SKTexture   { return textureAtlas.textureNamed(SCOURGE_WALK_UP3) }
    func scourge_walk_up4() -> SKTexture   { return textureAtlas.textureNamed(SCOURGE_WALK_UP4) }
    func scourge_walk_up5() -> SKTexture   { return textureAtlas.textureNamed(SCOURGE_WALK_UP5) }


    // texture arrays for animations
    func scourge_death() -> [SKTexture] {
        return [
            scourge_death1(),
            scourge_death2(),
            scourge_death3(),
            scourge_death4(),
            scourge_death5(),
            scourge_death6(),
            scourge_death7(),
            scourge_death8()
        ]
    }

    func scourge_walk_down() -> [SKTexture] {
        return [
            scourge_walk_down1(),
            scourge_walk_down2(),
            scourge_walk_down3(),
            scourge_walk_down4(),
            scourge_walk_down5()
        ]
    }

    func scourge_walk_side() -> [SKTexture] {
        return [
            scourge_walk_side1(),
            scourge_walk_side2(),
            scourge_walk_side3(),
            scourge_walk_side4(),
            scourge_walk_side5()
        ]
    }

    func scourge_walk_up() -> [SKTexture] {
        return [
            scourge_walk_up1(),
            scourge_walk_up2(),
            scourge_walk_up3(),
            scourge_walk_up4(),
            scourge_walk_up5()
        ]
    }


}
