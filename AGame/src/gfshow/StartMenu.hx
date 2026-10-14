package gfshow;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.tweens.FlxTween;

class StartMenu extends FlxState {
    var gf:FlxSprite = new FlxSprite(200, 0);
    var title:FlxSprite = new FlxSprite(-200, 0);
    override public function create() {
        gf.frames = FlxAtlasFrames.fromSparrow("images/characters/gfDanceTitle.png", "assets/images/characters/gfDanceTitle.xml");
        gf.animation.addByPrefix("gfDance", "gfDance", 30, true);
        title.loadGraphic("preload/FNF_logo.png");
        title.scale.set(1, 1);

        FlxTween.tween(title.scale, {x: 2, y: 2}, 1, {
            type: FlxTweenType.LOOPING
        });
    }
}