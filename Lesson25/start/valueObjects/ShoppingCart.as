package valueObjects
{
	import flash.net.SharedObject;
	import flash.utils.*;
	
	import mx.collections.ArrayCollection;
	import mx.collections.IViewCursor;
	import mx.collections.Sort;
	import mx.collections.SortField;
	
	public class ShoppingCart 
	{
		[Bindable]
		public var soCart:SharedObject;

		public function saveCart():void{
			this.soCart = SharedObject.getLocal("cartInfo");
			this.soCart.data.aCart = new Array();
	
			var len:int = aItems.length;
			for (var i:int = 0;i < len;i++){
				this.soCart.data.aCart[i] = this.aItems.getItemAt(i);
			}
		}

		public function loadCart():void{
			this.soCart = SharedObject.getLocal("cartInfo");
			if ( this.soCart.data.aCart != undefined ){
				var len:int = this.soCart.data.aCart.length;
				for (var i:int=0;i<len;i++){
					var myProduct:Product = Product.buildProduct(this.soCart.data.aCart[i].product);
					var myQuantity:int = this.soCart.data.aCart[i].quantity;
					var myItem:ShoppingCartItem = new ShoppingCartItem(myProduct, myQuantity);
					this.addItem(myItem);
				}
			}
		}

		[Bindable]
		public var aItems:ArrayCollection = new ArrayCollection();
		[Bindable]
		public var total:Number=0;
		private var cursor:IViewCursor;
		
		public function addItem(item:ShoppingCartItem):void{
			manageAddItem(item);
			calcTotal();
		}

		private function sortItems():void{
			var prodSort:Sort=new Sort();
			var sortField:SortField=new SortField("product");
			prodSort.fields=new Array(sortField);
			aItems.sort=prodSort;
			aItems.refresh();
		}

		private function manageAddItem(item:ShoppingCartItem):void{
			if (isItemInCart(item)){
				updateItem(item);
			}else{
				aItems.addItem(item);
			}
		}

		private function isItemInCart(item:ShoppingCartItem):Boolean{
			var sci:ShoppingCartItem = getItemInCart(item);
			if(sci == null){
				return false;
			} else {
				return true;
			}
		}

		private function getItemInCart(item:ShoppingCartItem):ShoppingCartItem{
			cursor = aItems.createCursor();
			sortItems();
			var found:Boolean = cursor.findFirst(item);
			if(found){
				var sci:ShoppingCartItem = cursor.current as ShoppingCartItem;
			}else{
				return null;
			}
			return sci;
		}

		private function updateItem(item:ShoppingCartItem):void{
			var sci:ShoppingCartItem = cursor.current as ShoppingCartItem;
			sci.quantity += item.quantity;
			sci.recalc();
		}

		private function calcTotal():void{
			this.total = 0;
			for(var i:int=0;i<aItems.length;i++){
				this.total += aItems.getItemAt(i).subtotal;
			}
		}

		public function removeItem(prod:Product):void{
			var item:ShoppingCartItem = new ShoppingCartItem(prod);
			var sci:ShoppingCartItem = getItemInCart(item);
			if(sci != null){
				cursor.remove();
			}
			calcTotal();
		}
		
		public function clearCart():void{
			aItems.removeAll()
			
			if ( soCart ) {
				soCart.clear();
			}

			calcTotal();
		}
	}
}
