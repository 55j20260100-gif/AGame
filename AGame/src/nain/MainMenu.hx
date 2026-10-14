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
    var Pushed:Bool = false;
    var texted:Int;
    override public function create():Void
    {
        FlxG.camera.bgColor = FlxColor.BLACK;
        super.create();

        text = new FlxText(0, 0, FlxG.width, "");
        text.setFormat("assets/fonts/Funkin.ttf", 32, FlxColor.WHITE, CENTER);
        text.screenCenter(Y); // 縦方向だけ中央に配置
        add(text);
        function showMSG(msg:String, seconds:Int) {
            new FlxTimer().start(seconds, function(_) {
                text.text = msg;
            });
        }
        showMSG("Heloo! I made this engine", 2);
        showMSG("This is Created Original Engine is Ninjamuffin99", 4);
        showMSG("And Made Engine is SelvenaDev", 6);
        showMSG("Friday             ", 8);
        showMSG("Friday Night       ", 10);
        showMSG("Friday Night Funkin", 12);
        FlxG.switchState(() -> new gfshow.StartMenu());
    }
}