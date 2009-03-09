package org.jsmith.reflection
{
	import flash.utils.*;
	
	public class ReflectedType
	{
		public var interfaces:Array;
		public var classes:Array;
		public var methods:Dictionary;
		
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
			parseMethods(members);
			
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
		
		private function parseMethods(members:XML):void
		{
			methods = new Dictionary();
			
			var methodList:XMLList = members.factory..method;
			for(var i:int=0;i<methodList.length();i++)
			{
				var m:ReflectedMethod = createReflectedMethod(methodList[i]);
				methods[m.name] = m;
				
			}//end for
				
		}//end method
		
		private function createReflectedMethod(methodDefinition:XML):ReflectedMethod
		{
			var m:ReflectedMethod = new ReflectedMethod(methodDefinition.@name, methodDefinition.@declaredBy, methodDefinition.@returnType);
			var params:XMLList = methodDefinition..parameter;
			
			for(var i:int=0;i<params.length();i++)
			{
				var p:ReflectedParameter = new ReflectedParameter(params[i].@index, getDefinitionByName(params[i].@type) as Class, params[i].@optional);
				m.parameters[p.index] = p;
				
			}//end method
			
			return m;
			
		}//end method
		
		public function extendsClass(c:Class):Boolean
		{
			return (classes.indexOf(c) >= 0);
			
		}//end method
		
		public function implementsInterface(i:Class):Boolean
		{
			return (interfaces.indexOf(i) >= 0);
			
		}//end method
		
		public function createInstance():ReflectedInstance
		{
			return new ReflectedInstance(classType);
			
		}//end method
		
		public function getMethod(methodName:String):ReflectedMethod
		{
			return methods[methodName];
			
		}//end method
		
	}//end class
	
}//end namespace