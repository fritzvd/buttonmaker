import com.haxepunk.Entity;
import com.haxepunk.utils.Input;
import com.haxepunk.graphics.Image;
import com.haxepunk.graphics.Graphiclist;
import com.haxepunk.graphics.Spritemap;

class Button extends Entity {

    var magenta = 0xff00ff; 
    private var button:Graphiclist; 
    private var buttonPressed:Graphiclist; 
    private var size:Int = 50;
    private var clicker:Image;

    public override function new (x:Int, y:Int) {

        super(x, y);
        
        createButtonImage();
		graphic = button;
        this.setHitboxTo(graphic);
        this.type = 'button';
    }

    private function clickedButton() {
        var clicked:Bool = false;
        if (Input.mouseDown) {
			var mouseDist = this.distanceToPoint(Input.mouseX, Input.mouseY, true);
			trace(mouseDist);
			if (mouseDist == 0) {
			   clicked = true;

		   }
        }

        return clicked;
    }

    private function createButtonImage () {
		var background = new Image('graphics/outline.png');
		this.setHitboxTo(background);
		var foreground = new Image('graphics/red.png');
		var backgroundP = new Image('graphics/outline_pressed.png');
		var foregroundP = new Image('graphics/red_pressed.png');

		button = new Graphiclist();
		button.add(background);
		button.add(foreground);
        
		buttonPressed = new Graphiclist();
		buttonPressed.add(backgroundP);
		buttonPressed.add(backgroundP);
    }

    public override function update() {
        super.update();
        if (clickedButton()) {
			graphic = buttonPressed;
            trace('Hi I\'m being clicked');
        } else {
			graphic = button;
		}
    }
}
