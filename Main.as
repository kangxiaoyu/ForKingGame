package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import com.actionsnippet.qbox.*;
	
	/**
	 * ...
	 * @author Lucas Molina
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
		}
	
	var sim:QuickBox2D = new QuickBox2D(this);  


	}
	
}