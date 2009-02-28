package org.jsmith.collections
{
	public interface IIterator
	{
		function hasNext():Boolean;
		function next():*;
		function previous():*;
		function reset():void;
		
	}//end interface
	
}//end namespace