import com.haxepunk.Scene;
import Button;

class MainScene extends Scene
{
	public override function begin()
	{
        var btn = new Button(30, 30);
        add(btn);
	}
}
