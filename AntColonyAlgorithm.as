package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class AntColonyAlgorithm extends MovieClip {
		
		private var ants:Vector.<Ant>;
		const SIZE:int = 20;
		
		public function AntColonyAlgorithm() {
			
			ants = new Vector.<Ant>();
			var offset:int = 13;
			//var n:int = 3;
			for(var i:int=0; i<SIZE; i++)  {
				var ant:Ant = new Ant();
				ant.x =  stage.stageWidth/2;
				ant.y =  stage.stageHeight/2;
				ant.rotation += offset;
				offset += offset;
				offset %= 360;
				ants.push(ant);
				stage.addChild(ant);
				ant.gotoAndPlay("walk");
				//trace("i, ant, offset, x "+offset+" "+ant.y+" "+ant.x);
			}
			
			stage.addEventListener(Event.ENTER_FRAME, enterFrame);

		}//end
		
		public function enterFrame(e:Event):void {
			for each(var anty in ants)  {
				anty.moveAhead();
				if(anty.x < 0 || anty.x > stage.stageWidth || anty.y < 0 || anty.y > stage.stageHeight)  {
					//go back to the middle and rotate a little bit so you have a different path
					anty.x =  stage.stageWidth/2+10;
					anty.y =  stage.stageHeight/2+10;
				}
					
				var degrees = Math.atan2(anty.y,anty.x)*(180/Math.PI) + 90;

				//trace(degrees);
			}
		}//end
	}
	
}
