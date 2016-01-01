import com.haxepunk.Entity;
import com.haxepunk.utils.Input;
import com.haxepunk.graphics.Image;
import com.haxepunk.graphics.Graphiclist;

class Button extends Entity {

    var magenta = 0xff00ff; 
    private var graphics:Graphiclist; 
    private var size:Int = 50;
    private var clicker:Image;

    public override function new (x:Int, y:Int) {

        super(x, y);
        
        graphic = createButtonImage(size);
        this.setHitboxTo(graphic);
        this.type = 'button';
    }

    private function clickedButton() {
        var clicked:Bool = false;
        
        if (Input.mouseDown &&
            this.distanceToPoint(Input.mouseX, Input.mouseY, true) == 0) {
            clicked = true;
        }

        return clicked;
    }

    private function createButtonImage (size) {
    /*    var background = Image.createCircle(size, 0xCDCDCD);*/
        //clicker = Image.createCircle(Std.int(size - size / 10), 0xd02a2a);
        //clicker.originY = 10;
        //clicker.originX = size / 10;

        //var graphics = new Graphiclist();
        //graphics.add(background);
        /*graphics.add(clicker);*/
        return graphics;
    }

    public override function update() {
        super.update();
        if (clickedButton()) {
            trace('Hi I\'m being clicked');
        }
    }
}
