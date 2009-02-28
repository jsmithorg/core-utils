package org.jsmith.math
{
	public class Fibonacci
	{
		public function get index():int { return _index; }
		public function set index(value:int):void { _index = value; }
		private var _index:int;
		
		public function get value():Number { return getValueForIndex(_index++); }
		public function set value(value:Number):void { index = getIndexForValue(value); }
		
		public function Fibonacci(index:int)
		{
			_index = index;
			
		}//end constructor
		
		//this toggles +- for some reason - check the equation
		public static function getValueForIndex(i:int):Number
		{
			return (Math.pow(Geom.PHI,i) - Math.pow(-Geom.PHI,-i)) / Math.sqrt(5);	
		
		}//end method
		
		//this needs work
		public static function getIndexForValue(value:Number):int
		{
			var i:int = 0;
			while(true)
			{
				var value2:Number = getValueForIndex(i);
				
				if(value2 > value)
					return --i;
					
				i++;
				
			}//end while
			
			return -1;
			
		}//end method
		
		public function get next():Number
		{
			return getValueForIndex(++_index);
				
		}//end method
		
		public function get previous():Number
		{
			return getValueForIndex(--_index);
				
		}//end method
		
		public function getRange(startIndex:int, endIndex:int):Array
		{
			var a:Array = new Array();
			var count:int = endIndex - startIndex;
			
			for(var i:int=0;i<=count;i++)
			{
				var n:Number = getValueForIndex(startIndex + i);
				a.push(n);
				
			}//end for
			
			return a;
			
		}//end method
		
	}//end class
	
}//end method