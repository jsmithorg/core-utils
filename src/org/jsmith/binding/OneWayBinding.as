package org.jsmith.binding
{
	import flash.events.*;
	import flash.text.*;
	import mx.binding.utils.*;
	import mx.events.PropertyChangeEvent;
	import mx.utils.ObjectProxy;
	
	public class OneWayBinding extends Binding implements IBinding
	{
		private var _bindingWatcher:ChangeWatcher;
		
		private var _proxy:ObjectProxy;
		
		public function OneWayBinding(source:* = null, sourceProperty:String = null, target:* = null, targetProperty:String = null)
		{
			super(source, sourceProperty, target, targetProperty);
			
			_bindingWatcher = BindingUtils.bindProperty(target, targetProperty, source, sourceProperty);
			
			//_proxy = new ObjectProxy(source);
			//_proxy.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE, onPropertyChange);
			
			target[targetProperty] = source[sourceProperty];
			
			//BindingUtils.bindSetter(onChange, 
			
			if(source is TextField)
				(source as TextField).addEventListener(TextEvent.TEXT_INPUT, onTextInput);
				
		}//end constructor
		
		private function onPropertyChange(e:PropertyChangeEvent):void
		{
			//target[targetProperty.toString()] = e.newValue;
			target[targetProperty] = source[sourceProperty];
			
		}//end method
		
		private function onTextInput(e:TextEvent):void
		{
			var event:Event = new Event(PropertyChangeEvent.PROPERTY_CHANGE, true);
			e.target.dispatchEvent(event);
			
			//target[targetProperty] = source[sourceProperty] + e.text;
			
		}//end method
		
		public override function unBind():void
		{
			_bindingWatcher.unwatch();
				
		}//end method
		
	}//end class
	
}//end namespace