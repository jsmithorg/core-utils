package org.jsmith.math
{
	public class Geom
	{
		public static const PHI:Number = (Math.sqrt(5) - 1) / 2;
		
		public static function degreesToRadians(degrees:Number):Number
		{
			return degrees * Math.PI / 180;
		
		}//end method
		
		public static function radiansToDegrees(radians:Number):Number
		{
			return radians * 180 / Math.PI;
			
		}//end method
		
	}//end method
	
}//end namespace