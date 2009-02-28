package org.jsmith.collections
{
	import flash.utils.Dictionary;
	
	public class DictionaryCollection
	{
		private var _keyType:Class;
		private var _valueType:Class;
		private var _collection:Dictionary;
		private var _count:int;
		
		public function DictionaryCollection(keyType:Class, valueType:Class)
		{
			_keyType = keyType;
			_valueType = valueType;
			_collection = new Dictionary();
			_count = 0;
			
		}//end constructor
		
		protected function addItem(key:*, value:*):void
		{
			checkType(key, _keyType);
			checkType(value, _valueType);
			
			_collection[key] = value;
			
			_count++;
			
		}//end method
	
		protected function removeItem(key:*):Boolean
		{
			checkType(key, _keyType);
			
			if(_collection[key] != null)
				delete _collection[key];
			
			_count--;
			
			return true;
			
		}//end method
		
		protected function containsKeyItem(key:*):Boolean
		{
			checkType(key, _keyType);
			
			return (_collection[key] != null);
			
		}//end method
	
		protected function containsValueItem(value:*):Boolean
		{
			checkType(value, _valueType);
			
			return (toArray().indexOf(value) >= 0);
			
		}//end method
		
		public function getIterator():IIterator
		{
			return new DictionaryCollectionIterator(this);
			
		}//end method

		public function get count():int
		{
			return _collection.length;
				
		}//end method
		
		public function toArray():Array
		{
			var a:Array = new Array();
			
			for(var e:* in _collection)
				a.push(_collection[e]);
				
			return a.reverse();
			
		}//end method
		
		public function toDictionary():Dictionary
		{
			return _collection;
				
		}//end method
		
		private function checkType(item:*, type:Class):void
		{
			//check if the item is of the correct type
			if(!(item is type))
				throw new Error("Collection item: " + item + " is not of type: " + type);
		
		}//end method
		
	}//end method
	
}//end namespace