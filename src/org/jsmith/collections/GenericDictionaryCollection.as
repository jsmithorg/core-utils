package org.jsmith.collections
{
	public class GenericDictionaryCollection extends DictionaryCollection
	{
		public function GenericDictionaryCollection(keyType:Class, valueType:Class)
		{
			super(keyType, valueType);
				
		}//end constructor
		
		public function add(key:*, value:*):void
		{
			super.addItem(key, value);
		
		}//end method
		
		public function remove(key:*):Boolean
		{
			return super.removeItem(key);
			
		}//end method
		
		public function containsKey(key:*):Boolean
		{
			return super.containsKeyItem(key);
			
		}//end method
		
		public function containsValue(value:*):Boolean
		{
			return super.containsValueItem(value);
			
		}//end method
	
		public function getValue(key:*):*
		{
			return super.toDictionary()[key];
			
		}//end method
		
	}//end class
	
}//end namespace