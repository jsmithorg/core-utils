package org.jsmith.binding
{
	import org.jsmith.utils.Enum;
	
	public class BindingMode extends Enum
	{
		public static const ONE_WAY:BindingMode = create("oneWay", BindingMode);
		public static const TWO_WAY:BindingMode = create("twoWay", BindingMode);
		
	}//end class
	
}//end namespace