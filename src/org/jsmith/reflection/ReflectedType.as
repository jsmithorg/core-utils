package org.jsmith.reflection
{
	import flash.utils.*;
	
	public class ReflectedType
	{
		public var interfaces:Array;
		public var classes:Array;
		
		public var baseClassType:Class;
		public var classType:Class;
		
		private var _object:*;
		
		public function ReflectedType(object:*)
		{
			_object = object;
			
			reflect();
			
		}//end constructor
		
		private function reflect():void
		{
			var members:XML = describeType(_object);
			
			classType = getDefinitionByName(members.@name) as Class;
			baseClassType = getDefinitionByName(members.@base) as Class;
			
			parseInterfaces(members);
			parseClasses(members);
				
		}//end method
		
		private function parseInterfaces(members:XML):void
		{
			interfaces = new Array();
			
			var interfaceList:XMLList = members.factory..implementsInterface;
			for(var i:int=0;i<interfaceList.length();i++)
				interfaces.push(getDefinitionByName(interfaceList[i].@type));
		
		}//end method
		
		private function parseClasses(members:XML):void
		{
			classes = new Array();
			
			var classList:XMLList = members.factory..extendsClass;
			for(var i:int=0;i<classList.length();i++)
				classes.push(getDefinitionByName(classList[i].@type));
		
		}//end method
		
		public function extendsClass(c:Class):Boolean
		{
			return (classes.indexOf(c) >= 0);
			
		}//end method
		
		public function implementsInterface(i:Class):Boolean
		{
			return (interfaces.indexOf(i) >= 0);
			
		}//end method
		
	}//end class
	
}//end namespace