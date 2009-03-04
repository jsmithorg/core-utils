package org.jsmith.binding
{
	public class Binding implements IBinding
	{
		public function get source():* { return _source; }
		public function set source(value:*):void { _source = value; }
		private var _source:*;
		
		public function get sourceProperty():String { return _sourceProperty; }
		public function set sourceProperty(value:String):void { _sourceProperty = value; }
		private var _sourceProperty:String;
		
		public function get target():* { return _target; }
		public function set target(value:*):void { _target = value; }
		private var _target:*;
		
		public function get targetProperty():String { return _targetProperty; }
		public function set targetProperty(value:String):void { _targetProperty = value; }
		private var _targetProperty:String;
		
		public function Binding(source:* = null, sourceProperty:String = null, target:* = null, targetProperty:String = null)
		{
			_source = source;
			_sourceProperty = sourceProperty;
			_target = target;
			_targetProperty = targetProperty;
			
		}//end class
		
		public function unBind():void
		{
			//logic used to unbind the bindings
			
		}//end method
		
	}//end class
	
}//end namespace