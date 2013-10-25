package skins
{
	import mx.skins.ProgrammaticSkin;
	
	public class OrangeOval extends ProgrammaticSkin
	{
		protected override function updateDisplayList(w:Number, h:Number):void
		{
			var lineThickness:int=4;
			var backgroundFillColor:Number;

			switch (name) {
				case "upSkin":
					backgroundFillColor = 0xEA800C;
					break;
				case "overSkin":
					backgroundFillColor = 0xF8B872;
					break;
				case "downSkin":
					backgroundFillColor = 0xB06109;
					break;
				case "disabledSkin":
					backgroundFillColor = 0xCCCCCC;
					break;
			}

			graphics.clear();
			graphics.beginFill(backgroundFillColor);
			graphics.drawEllipse(0, 0, w, h);
			graphics.endFill();
		}
	}
}