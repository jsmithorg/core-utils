package org.jsmith.reflection
{
	public class ReflectedInstance
	{
		public var instance:*;
		
		public function ReflectedInstance(classType:Class)
		{
			instance = new classType();
			
		}//end constructor
		
	}//end class
	
}//end namespace