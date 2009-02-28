package org.jsmith.collections
{
	public class CollectionIterator implements IIterator
	{
		private var _index:int;
		private var _collection:Array;
		
		public function CollectionIterator(collection:Collection)
		{
			_index = 0;
			_collection = collection.toArray();
			
		}//end constructor
		
		public function hasNext():Boolean
		{
			return (_index < _collection.length);
				
		}//end method
		
		public function next():*
		{
			return _collection[_index++];
		
		}//end method
		
		public function previous():*
		{
			return _collection[--_index];
				
		}//end method
		
		public function reset():void
		{
			_index = 0;
				
		}//end method
		
	}//end class
	
}//end namespace