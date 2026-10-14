package nain;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import gfshow.StartMenu;

class MainMenu extends FlxState
{
    var text:FlxText;
    var pushed:Bool = false;

    override public function create():Void
    {
        FlxG.camera.bgColor = FlxColor.BLACK;
        super.create();

        text = new FlxText(0, 0, FlxG.width, "");
        text.setFormat("fonts/Funkin.ttf", 32, FlxColor.WHITE, CENTER);
        text.screenCenter(Y);
        add(text);

        showMSG("Hello! I made this engine", 2);
        showMSG("The original engine was created by Ninjamuffin99", 4);
        showMSG("And this engine was made by SelvenaDev", 6);
        showMSG("")
        showMSG("Friday", 8);
        showMSG("Friday Night", 8.5);
        showMSG("Friday Night Funkin", 9);
    }

    function showMSG(msg:String, seconds:Float):Void
    {
        new FlxTimer().start(seconds, function(_)
        {
            text.text = msg;
        });
    }

    function goto():Void
    {
        if (!pushed)
        {
            pushed = true;
            FlxG.switchState(() -> new StartMenu());
        }
    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ENTER)
        {
            goto();
        }
    }
}