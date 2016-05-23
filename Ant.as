package  {
	
	import flash.display.MovieClip;
	
	
	public class Ant extends MovieClip {
		
		
		public function Ant() {
			// constructor code
		}
		
		public function moveAhead():void  {
			//this.x += 5;
			//this.y += 5;
			this.x+=5*Math.cos((this.rotation) * Math.PI/180);
			this.y+= 6 * Math.sin((this.rotation) * Math.PI/180);
	
		}
	}
	
}
