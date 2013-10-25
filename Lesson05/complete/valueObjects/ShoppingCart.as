package valueObjects
{
	import flash.utils.*

	public class ShoppingCart
	{
		public function addItem(item:ShoppingCartItem):void{
			trace(item.product);
		}
	}
}
