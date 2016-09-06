// ---------------------------------------
// Sprite definitions for 'Hydra'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Hydra {

    // sprite names
    let HYDRA_DEATH1     = "hydra_death1"
    let HYDRA_DEATH2     = "hydra_death2"
    let HYDRA_DEATH3     = "hydra_death3"
    let HYDRA_DEATH4     = "hydra_death4"
    let HYDRA_DEATH5     = "hydra_death5"
    let HYDRA_DEATH6     = "hydra_death6"
    let HYDRA_DEATH7     = "hydra_death7"
    let HYDRA_DEATH8     = "hydra_death8"
    let HYDRA_WALK_DOWN1 = "hydra_walk_down1"
    let HYDRA_WALK_DOWN2 = "hydra_walk_down2"
    let HYDRA_WALK_DOWN3 = "hydra_walk_down3"
    let HYDRA_WALK_DOWN4 = "hydra_walk_down4"
    let HYDRA_WALK_DOWN5 = "hydra_walk_down5"
    let HYDRA_WALK_DOWN6 = "hydra_walk_down6"
    let HYDRA_WALK_DOWN7 = "hydra_walk_down7"
    let HYDRA_WALK_SIDE1 = "hydra_walk_side1"
    let HYDRA_WALK_SIDE2 = "hydra_walk_side2"
    let HYDRA_WALK_SIDE3 = "hydra_walk_side3"
    let HYDRA_WALK_SIDE4 = "hydra_walk_side4"
    let HYDRA_WALK_SIDE5 = "hydra_walk_side5"
    let HYDRA_WALK_SIDE6 = "hydra_walk_side6"
    let HYDRA_WALK_UP1   = "hydra_walk_up1"
    let HYDRA_WALK_UP2   = "hydra_walk_up2"
    let HYDRA_WALK_UP3   = "hydra_walk_up3"
    let HYDRA_WALK_UP4   = "hydra_walk_up4"
    let HYDRA_WALK_UP5   = "hydra_walk_up5"
    let HYDRA_WALK_UP6   = "hydra_walk_up6"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Hydra")


    // individual texture objects
    func hydra_death1() -> SKTexture     { return textureAtlas.textureNamed(HYDRA_DEATH1) }
    func hydra_death2() -> SKTexture     { return textureAtlas.textureNamed(HYDRA_DEATH2) }
    func hydra_death3() -> SKTexture     { return textureAtlas.textureNamed(HYDRA_DEATH3) }
    func hydra_death4() -> SKTexture     { return textureAtlas.textureNamed(HYDRA_DEATH4) }
    func hydra_death5() -> SKTexture     { return textureAtlas.textureNamed(HYDRA_DEATH5) }
    func hydra_death6() -> SKTexture     { return textureAtlas.textureNamed(HYDRA_DEATH6) }
    func hydra_death7() -> SKTexture     { return textureAtlas.textureNamed(HYDRA_DEATH7) }
    func hydra_death8() -> SKTexture     { return textureAtlas.textureNamed(HYDRA_DEATH8) }
    func hydra_walk_down1() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_DOWN1) }
    func hydra_walk_down2() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_DOWN2) }
    func hydra_walk_down3() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_DOWN3) }
    func hydra_walk_down4() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_DOWN4) }
    func hydra_walk_down5() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_DOWN5) }
    func hydra_walk_down6() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_DOWN6) }
    func hydra_walk_down7() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_DOWN7) }
    func hydra_walk_side1() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_SIDE1) }
    func hydra_walk_side2() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_SIDE2) }
    func hydra_walk_side3() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_SIDE3) }
    func hydra_walk_side4() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_SIDE4) }
    func hydra_walk_side5() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_SIDE5) }
    func hydra_walk_side6() -> SKTexture { return textureAtlas.textureNamed(HYDRA_WALK_SIDE6) }
    func hydra_walk_up1() -> SKTexture   { return textureAtlas.textureNamed(HYDRA_WALK_UP1) }
    func hydra_walk_up2() -> SKTexture   { return textureAtlas.textureNamed(HYDRA_WALK_UP2) }
    func hydra_walk_up3() -> SKTexture   { return textureAtlas.textureNamed(HYDRA_WALK_UP3) }
    func hydra_walk_up4() -> SKTexture   { return textureAtlas.textureNamed(HYDRA_WALK_UP4) }
    func hydra_walk_up5() -> SKTexture   { return textureAtlas.textureNamed(HYDRA_WALK_UP5) }
    func hydra_walk_up6() -> SKTexture   { return textureAtlas.textureNamed(HYDRA_WALK_UP6) }


    // texture arrays for animations
    func hydra_death() -> [SKTexture] {
        return [
            hydra_death1(),
            hydra_death2(),
            hydra_death3(),
            hydra_death4(),
            hydra_death5(),
            hydra_death6(),
            hydra_death7(),
            hydra_death8()
        ]
    }

    func hydra_walk_down() -> [SKTexture] {
        return [
            hydra_walk_down1(),
            hydra_walk_down2(),
            hydra_walk_down3(),
            hydra_walk_down4(),
            hydra_walk_down5(),
            hydra_walk_down6(),
            hydra_walk_down7()
        ]
    }

    func hydra_walk_side() -> [SKTexture] {
        return [
            hydra_walk_side1(),
            hydra_walk_side2(),
            hydra_walk_side3(),
            hydra_walk_side4(),
            hydra_walk_side5(),
            hydra_walk_side6()
        ]
    }

    func hydra_walk_up() -> [SKTexture] {
        return [
            hydra_walk_up1(),
            hydra_walk_up2(),
            hydra_walk_up3(),
            hydra_walk_up4(),
            hydra_walk_up5(),
            hydra_walk_up6()
        ]
    }


}
