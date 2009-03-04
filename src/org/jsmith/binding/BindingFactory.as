package org.jsmith.binding
{
	import mx.binding.utils.*;
	import mx.events.PropertyChangeEvent;
	import mx.utils.ObjectProxy;
	
	public class BindingFactory
	{
		public static function create(mode:BindingMode, source:*, sourceProperty:String, target:*, targetProperty:String):IBinding
		{
			switch(mode)
			{
				case BindingMode.ONE_WAY:
					return new OneWayBinding(source, sourceProperty, target, targetProperty);
				
				case BindingMode.TWO_WAY:
					return new TwoWayBinding(source, sourceProperty, target, targetProperty);
					
			}//end switch
			
			//throw error
			return null;
			
		}//end method
		
		public static function createBindableItem(item:*):*
		{
			return new ObjectProxy(item);
			
		}//end method
		
	}//end class
	
}//end namespace