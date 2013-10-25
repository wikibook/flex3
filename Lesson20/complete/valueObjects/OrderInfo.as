package valueObjects{
	[Bindable]
	[RemoteClass(alias="FlexGrocer.cfcs.OrderInfo")]
	public class OrderInfo{
		public var billingName:String;
		public var billingAddress:String;
		public var billingCity:String;
		public var billingState:String;
		public var billingZip:String;
		public var cardType:String;
		public var cardNumber:Number;
		public var cardExpirationMonth:Number;
		public var cardExpirationYear:Number;
		public var deliveryDate:Date;
		
		public var createDate:Date;
		public var orderNum:String;
		
		public function getOrderInfoHeader():String{
			return "Order '" + orderNum + "' was created on " + createDate;
		}
	}
}
