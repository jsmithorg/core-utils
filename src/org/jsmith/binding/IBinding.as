package org.jsmith.binding
{
	public interface IBinding
	{
		function get source():*;
		function set source(value:*):void;
		
		function get sourceProperty():String;
		function set sourceProperty(value:String):void;
		
		function get target():*;
		function set target(value:*):void;
		
		function get targetProperty():String;
		function set targetProperty(value:String):void;
	
		function unBind():void;
		
	}//end interface
	
}//end namespace