import valueObjects.Product;
import valueObjects.ShoppingCartItem;
import valueObjects.ShoppingCart;
import mx.rpc.events.ResultEvent;
import mx.collections.ArrayCollection;
import events.CategoryEvent;

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

private function categorizedProductDataLoaded():void{
	categories=new ArrayCollection(catProds.getCats());
}

private function displayProdByCategory(event:CategoryEvent):void{
	var prodArray:Array=catProds.getProdsForCat(event.cat.catID);
	prodByCategory=new ArrayCollection(prodArray);
}
