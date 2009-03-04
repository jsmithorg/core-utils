package org.jsmith.binding
{
	import flash.events.*;
	import mx.binding.utils.*;
	import flash.text.TextField;
	import mx.controls.TextArea;
	import flash.display.DisplayObject;
	
	public class TwoWayBinding extends Binding implements IBinding
	{
		private var _bindingWatcher:ChangeWatcher;
		
		private var _sourceToTargetBinding:OneWayBinding;
		//private var _targetToSourceBinding:OneWayBinding;
		
		public function TwoWayBinding(source:* = null, sourceProperty:String = null, target:* = null, targetProperty:String = null)
		{
			super(source, sourceProperty, target, targetProperty);
			
			//_sourceToTargetBinding = new OneWayBinding(source, sourceProperty, target, targetProperty);
			//_targetToSourceBinding = new OneWayBinding(target, targetProperty, source, sourceProperty);
			
			BindingUtils.bindProperty(target, targetProperty, source, sourceProperty);
			BindingUtils.bindProperty(source, sourceProperty, target, targetProperty);
			//BindingUtils.bindSetter(onChange, source, sourceProperty);
			
			//if(source is TextField)
				//(source as TextField).addEventListener(TextEvent.TEXT_INPUT, onTextInput);
				
			//if(target is TextField)
				//(target as TextField).addEventListener(TextEvent.TEXT_INPUT, onTextInput);
			
		}//end constructor
		
		private function onTextInput(e:TextEvent):void
		{
			var event:Event = new Event("propertyChange", true);
			e.target.dispatchEvent(event);
			
			//target[targetProperty] = source[sourceProperty];
			
		}//end method
		/*
		private function onChange(value:*):void
		{
			source[sourceProperty.toString()] = value;
			
		}//end method
		*/
		
		public override function unBind():void
		{
			_bindingWatcher.unwatch();
				
			_sourceToTargetBinding.unBind();
			//_targetToSourceBinding.unBind();
			
		}//end method
		
	}//end class
	
}//end namespace