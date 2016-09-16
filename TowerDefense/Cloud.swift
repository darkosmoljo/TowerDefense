// ---------------------------------------
// Sprite definitions for 'Cloud'
// Generated with TexturePacker 4.2.3
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Cloud {

    // sprite names
    let CLOUD01 = "cloud01"
    let CLOUD02 = "cloud02"
    let CLOUD03 = "cloud03"
    let CLOUD04 = "cloud04"
    let CLOUD05 = "cloud05"
    let CLOUD06 = "cloud06"
    let CLOUD07 = "cloud07"
    let CLOUD08 = "cloud08"
    let CLOUD09 = "cloud09"
    let CLOUD10 = "cloud10"
    let CLOUD11 = "cloud11"
    let CLOUD12 = "cloud12"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "Cloud")


    // individual texture objects
    func cloud01() -> SKTexture { return textureAtlas.textureNamed(CLOUD01) }
    func cloud02() -> SKTexture { return textureAtlas.textureNamed(CLOUD02) }
    func cloud03() -> SKTexture { return textureAtlas.textureNamed(CLOUD03) }
    func cloud04() -> SKTexture { return textureAtlas.textureNamed(CLOUD04) }
    func cloud05() -> SKTexture { return textureAtlas.textureNamed(CLOUD05) }
    func cloud06() -> SKTexture { return textureAtlas.textureNamed(CLOUD06) }
    func cloud07() -> SKTexture { return textureAtlas.textureNamed(CLOUD07) }
    func cloud08() -> SKTexture { return textureAtlas.textureNamed(CLOUD08) }
    func cloud09() -> SKTexture { return textureAtlas.textureNamed(CLOUD09) }
    func cloud10() -> SKTexture { return textureAtlas.textureNamed(CLOUD10) }
    func cloud11() -> SKTexture { return textureAtlas.textureNamed(CLOUD11) }
    func cloud12() -> SKTexture { return textureAtlas.textureNamed(CLOUD12) }


    // texture arrays for animations
    func cloud() -> [SKTexture] {
        return [
            cloud01(),
            cloud02(),
            cloud03(),
            cloud04(),
            cloud05(),
            cloud06(),
            cloud07(),
            cloud08(),
            cloud09(),
            cloud10(),
            cloud11(),
            cloud12()
        ]
    }


}
