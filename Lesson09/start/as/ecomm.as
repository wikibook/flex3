import valueObjects.Product;
import valueObjects.ShoppingCartItem;
import valueObjects.ShoppingCart;
import mx.rpc.events.ResultEvent;
import mx.collections.ArrayCollection;

[Bindable]
public var cart:ShoppingCart = new ShoppingCart();

[Bindable]
private var theProduct:Product;

[Bindable]
private var categories:ArrayCollection;

[Bindable]
private var prodByCategory:ArrayCollection;

public function addToCart(product:Product):void {
	var sci:ShoppingCartItem = new ShoppingCartItem(product);

	cart.addItem(sci);
}

private function deleteProd(product:Product):void{
	cart.removeItem(product);
}

public function categorizedProductDataLoaded(aCats:Array):void{
	categories=new ArrayCollection(aCats);
}

private function displayProdByCategory():void{
	var prodArray:Array=catProds.getProdsForCat(catView.catSelected);
	prodByCategory=new ArrayCollection(prodArray);
}

