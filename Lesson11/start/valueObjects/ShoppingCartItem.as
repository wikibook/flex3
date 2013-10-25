package valueObjects
{
	public class ShoppingCartItem 
	{
		public var product:Product;
		public var quantity:uint;
		public var subtotal:Number;
		
		public function ShoppingCartItem(product:Product, quantity:uint=1)
		{
			this.product = product;
			this.quantity = quantity;
			this.subtotal = product.listPrice * quantity;
		}
		
		public function recalc():void{
			this.subtotal = product.listPrice * quantity;
		}
	}
}