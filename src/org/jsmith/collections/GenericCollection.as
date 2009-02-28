package org.jsmith.collections
{
	public class GenericCollection extends Collection
	{
		public function GenericCollection(type:Class)
		{
			super(type);
				
		}//end constructor
		
		public function add(item:*):void
		{
			super.addItem(item);
		
		}//end method
		
		public function remove(item:*):Boolean
		{
			return super.removeItem(item);
			
		}//end method
		
		public function contains(item:*):Boolean
		{
			return super.containsItem(item);
			
		}//end method
	
		public function getItemAt(index:Number):*
		{
			return super.getItemAtIndex(index);
			
		}//end method
		
	}//end class
	
}//end namespace