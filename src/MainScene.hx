import com.haxepunk.Scene;
import Button;
import TextEntryField;
import com.haxepunk.gui.Label;
import com.haxepunk.gui.Control;
import com.haxepunk.gui.TextInput;
import com.haxepunk.gui.Button;

class MainScene extends Scene
{
    private var tx:TextInput;
	public override function begin()
	{

        Control.useSkin("gfx/ui/greyDefault.png");
        Label.defaultFont = openfl.Assets.getFont("font/pf_ronda_seven.ttf");
        // Label defaultColor. Tip inFlashDevelop : use ctrl + shift + k to pick a color.
        Label.defaultColor = 0x1E4E82;
        // Label default Size.
        Label.defaultSize = 18;

        add(new Button('234', 340, 340));

        tx = new TextInput('henk', 0, 0, 100, 100, false, false);
        tx.font = "font/pf_ronda_seven.ttf";
        tx.color = 0x000000;
        tx.size = 30;
        tx.visible = true;
        add(tx);
        trace(tx.graphic);
        var label = new Label('asdfasdfasdf', 400.0, 400.0, 30, 30);
        add(label);
        var btn = new Button(30, 30);
        //add(btn);
	}

    public override function update() {
        super.update();
        tx.updateBuffer();
        //trace(tx.text);
    }
}
