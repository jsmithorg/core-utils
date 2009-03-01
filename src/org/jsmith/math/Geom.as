package org.jsmith.math
{
	/**
	 * 	Frequently used geometry tools that aren't included in the base
	 * 	<code>Math</code> class that Flash provides.
	 * 
	 * 	@author Justin Smith [justin@jsmith.org]
	 */
	public class Geom
	{
		/**
		 * 	The mathematical constant Phi used to calculate the golden ratio.
		 * 	<p><a href="">Phi on Wikipedia</a></p>
		 */
		public static const PHI:Number = (Math.sqrt(5) - 1) / 2;
		
		/**
		 * 	Converts degrees to radians.
		 * 
		 * 	@param degrees The degrees to convert into radians.
		 * 	@returns A number representing radians.
		 */
		public static function degreesToRadians(degrees:Number):Number
		{
			return degrees * Math.PI / 180;
		
		}//end method
		
		/**
		 * 	Converts radians to degrees.
		 * 
		 * 	@param radians The radians to convert into degrees.
		 * 	@returns A number representing degrees.
		 */
		public static function radiansToDegrees(radians:Number):Number
		{
			return radians * 180 / Math.PI;
			
		}//end method
		
	}//end method
	
}//end namespace