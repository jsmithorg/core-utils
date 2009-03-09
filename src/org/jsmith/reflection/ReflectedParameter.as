package org.jsmith.reflection
{
	public class ReflectedParameter
	{
		public var index:int;
		public var type:Class;
		public var optional:Boolean;
		
		public function ReflectedParameter(index:int = -1, type:Class = null, optional:Boolean = false)
		{
			this.index = index;
			this.type = type;
			this.optional = optional;
			
		}//end constructor
		
	}//end class
	
}//end namespace