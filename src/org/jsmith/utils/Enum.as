﻿package org.jsmith.utils{	/**	 * 	Base class for creating strongly-typed enumerations.	 * 	<p>The class should not be used by itself - it should 	 *  only be subclassed.</p>	 * 	 * 	@example To create a strongly typed enumeration, create a class 	 * 	that subclasses <code>Enum</code>	 * 	 * 	<listing version="3.0">	 * 			 * 		public class MyEnum extends Enum	 * 		{	 * 			...	 * 		}	 * 	 *  </listing>	 * 	 * 	Inside the class, create constants using the inherited <code>create</code> method:	 * 	 * 	<listing version="3.0">	 * 	 * 		public class MyEnum extends Enum	 * 		{	 * 			public static const MY_CONST_1:MyEnum = create("myConst1", MyEnum);	 * 			public static const MY_CONST_2:MyEnum = create(2, MyEnum);	 * 			public static const MY_CONST_3:MyEnum = create(MyObject, MyEnum);	 * 		}	 * 	 * 	</listing>	 * 	 * 	@author Justin Smith [justin.smith@glg.com]	 */	public class Enum	{		/**		 * 	The enumeration value.		 */		public var value:*;				/**		 * 	Factory method for creating the enumeration object 		 *  of type <code>classType</code>.		 * 		 * 	@param value The value of the enumeration - can be any object.		 * 	@param classType The object type of the enumeration.		 * 			 * 	@return An object of type <code>classType</code>.		 */		protected static function create(value:*, classType:Class):* 		{			var enum:* = new classType();			enum.value = value;						return enum;					}//end method				/**		 * 	Returns the string value of the enumeration.		 * 		 * 	@return The string value of the enumeration.		 */		public function toString():String 		{			return (value as Object).toString();					}//end method			}//end class	}//end package