package org.jsmith.collections
{
	import flash.utils.*;
	
	public class Collection
	{
		private var _type:Class;
		private var _collection:Array;
		
		public function Collection(type:Class)
		{
			_type = type;
			_collection = new Array();
			
		}//end constructor
		
		protected function addItem(item:*):void
		{
			checkType(item, _type);
			
			_collection.push(item);
			
		}//end method
	
		protected function removeItem(item:*):Boolean
		{
			checkType(item, _type);
			
			var index:int = _collection.indexOf(item);
			if(index < 0)
				return false;
				
			_collection.splice(index, 1);
			
			return true;
			
		}//end method
		
		protected function containsItem(item:*):Boolean
		{
			checkType(item, _type);
			
			return (_collection.indexOf(item) >= 0);
			
		}//end method
	
		protected function getItemAtIndex(index:Number):*
		{
			return _collection[index];
			
		}//end method
	
		public function getIterator():IIterator
		{
			return new CollectionIterator(this);
			
		}//end method

		public function get count():int
		{
			return _collection.length;
				
		}//end method
		
		public function toArray():Array
		{
			return _collection;
				
		}//end method
		
		private function checkType(item:*, type:Class):void
		{
			//check if the item is of the correct type
			if(!(item is type))
				throw new Error("Collection item: " + item + " is not of type: " + type);
		
		}//end method
		
	}//end class
	
}//end namespace