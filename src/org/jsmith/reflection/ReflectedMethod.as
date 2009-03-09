package org.jsmith.reflection
{
	public class ReflectedMethod
	{
		public var name:String;
		public var declaredBy:String;
		public var returnType:String;
		public var parameters:Array;
		
		public function ReflectedMethod(name:String, declaredBy:String = null, returnType:String = null, parameters:Array = null)
		{
			this.name = name;
			this.returnType = returnType;
			this.declaredBy = declaredBy;
			this.parameters = (parameters == null) ? new Array() : parameters;
			
		}//end constructor
		
		public function invoke(instance:ReflectedInstance, ...params):*
		{
			return instance.instance[name]();
			
		}//end method
		
		public function toString():String 
		{
			return "[ ReflectedMethod name=\"" + name + 
					"\" parameter count=\"" + parameters.length + "\" ]";
			
		}//end method
		
	}//end class
	
}//end namespace