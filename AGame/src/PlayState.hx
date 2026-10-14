package;

import flixel.FlxG;
import flixel.FlxState;
import nain.MainMenu;

class PlayState extends FlxState
{
    override public function create():Void
    {
        super.create();
        FlxG.switchState(() -> new MainMenu()); // HaxeFlixel 5.x以降
        // FlxG.switchState(new MainMenu());    // HaxeFlixel 4.x以前
    }
}