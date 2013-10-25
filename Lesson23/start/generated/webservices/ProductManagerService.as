
/**
 * ProductManagerServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:ProductManagerService= new ProductManagerService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addupdateProductEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.updateProduct(myaProduct);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="generated.webservices.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ProductManagerService id="myService">
  *   <srv:updateProduct_request_var>
  *		<srv:UpdateProduct_request aProduct=myValue/>
  *   </srv:updateProduct_request_var>
  * </srv:ProductManagerService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.updateProduct_send()" />
  */
 package generated.webservices{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation updateProduct completes with success
     * and returns some data
     * @eventType UpdateProductResultEvent
     */
    [Event(name="UpdateProduct_result", type="generated.webservices.UpdateProductResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAllProds completes with success
     * and returns some data
     * @eventType GetAllProdsResultEvent
     */
    [Event(name="GetAllProds_result", type="generated.webservices.GetAllProdsResultEvent")]
    
    /**
     * Dispatches when a call to the operation deleteProduct completes with success
     * and returns some data
     * @eventType DeleteProductResultEvent
     */
    [Event(name="DeleteProduct_result", type="generated.webservices.DeleteProductResultEvent")]
    
    /**
     * Dispatches when a call to the operation addProduct completes with success
     * and returns some data
     * @eventType AddProductResultEvent
     */
    [Event(name="AddProduct_result", type="generated.webservices.AddProductResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class ProductManagerService extends EventDispatcher implements IProductManagerService
	{
    	private var _baseService:BaseProductManagerService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function ProductManagerService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseProductManagerService(destination,rootURL);
        }
        
		//stub functions for the updateProduct operation
          

        /**
         * @see IProductManagerService#updateProduct()
         */
        public function updateProduct(aProduct:WebServiceProduct):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateProduct(aProduct);
            _internal_token.addEventListener("result",_updateProduct_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IProductManagerService#updateProduct_send()
		 */    
        public function updateProduct_send():AsyncToken
        {
        	return updateProduct(_updateProduct_request.aProduct);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _updateProduct_request:UpdateProduct_request;
		/**
		 * @see IProductManagerService#updateProduct_request_var
		 */
		[Bindable]
		public function get updateProduct_request_var():UpdateProduct_request
		{
			return _updateProduct_request;
		}
		
		/**
		 * @private
		 */
		public function set updateProduct_request_var(request:UpdateProduct_request):void
		{
			_updateProduct_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateProduct_lastResult:WebServiceProduct;
		[Bindable]
		/**
		 * @see IProductManagerService#updateProduct_lastResult
		 */	  
		public function get updateProduct_lastResult():WebServiceProduct
		{
			return _updateProduct_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateProduct_lastResult(lastResult:WebServiceProduct):void
		{
			_updateProduct_lastResult = lastResult;
		}
		
		/**
		 * @see IProductManagerService#addupdateProduct()
		 */
		public function addupdateProductEventListener(listener:Function):void
		{
			addEventListener(UpdateProductResultEvent.UpdateProduct_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _updateProduct_populate_results(event:ResultEvent):void
        {
        var e:UpdateProductResultEvent = new UpdateProductResultEvent();
		            e.result = event.result as WebServiceProduct;
		                       e.headers = event.headers;
		             updateProduct_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the getAllProds operation
          

        /**
         * @see IProductManagerService#getAllProds()
         */
        public function getAllProds():AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllProds();
            _internal_token.addEventListener("result",_getAllProds_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IProductManagerService#getAllProds_send()
		 */    
        public function getAllProds_send():AsyncToken
        {
        	return getAllProds();
        }
              
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllProds_lastResult:QueryBeanType;
		[Bindable]
		/**
		 * @see IProductManagerService#getAllProds_lastResult
		 */	  
		public function get getAllProds_lastResult():QueryBeanType
		{
			return _getAllProds_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllProds_lastResult(lastResult:QueryBeanType):void
		{
			_getAllProds_lastResult = lastResult;
		}
		
		/**
		 * @see IProductManagerService#addgetAllProds()
		 */
		public function addgetAllProdsEventListener(listener:Function):void
		{
			addEventListener(GetAllProdsResultEvent.GetAllProds_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllProds_populate_results(event:ResultEvent):void
        {
        var e:GetAllProdsResultEvent = new GetAllProdsResultEvent();
		            e.result = event.result as QueryBeanType;
		                       e.headers = event.headers;
		             getAllProds_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the deleteProduct operation
          

        /**
         * @see IProductManagerService#deleteProduct()
         */
        public function deleteProduct(aProduct:WebServiceProduct):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.deleteProduct(aProduct);
            _internal_token.addEventListener("result",_deleteProduct_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IProductManagerService#deleteProduct_send()
		 */    
        public function deleteProduct_send():AsyncToken
        {
        	return deleteProduct(_deleteProduct_request.aProduct);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _deleteProduct_request:DeleteProduct_request;
		/**
		 * @see IProductManagerService#deleteProduct_request_var
		 */
		[Bindable]
		public function get deleteProduct_request_var():DeleteProduct_request
		{
			return _deleteProduct_request;
		}
		
		/**
		 * @private
		 */
		public function set deleteProduct_request_var(request:DeleteProduct_request):void
		{
			_deleteProduct_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _deleteProduct_lastResult:WebServiceProduct;
		[Bindable]
		/**
		 * @see IProductManagerService#deleteProduct_lastResult
		 */	  
		public function get deleteProduct_lastResult():WebServiceProduct
		{
			return _deleteProduct_lastResult;
		}
		/**
		 * @private
		 */
		public function set deleteProduct_lastResult(lastResult:WebServiceProduct):void
		{
			_deleteProduct_lastResult = lastResult;
		}
		
		/**
		 * @see IProductManagerService#adddeleteProduct()
		 */
		public function adddeleteProductEventListener(listener:Function):void
		{
			addEventListener(DeleteProductResultEvent.DeleteProduct_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _deleteProduct_populate_results(event:ResultEvent):void
        {
        var e:DeleteProductResultEvent = new DeleteProductResultEvent();
		            e.result = event.result as WebServiceProduct;
		                       e.headers = event.headers;
		             deleteProduct_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the addProduct operation
          

        /**
         * @see IProductManagerService#addProduct()
         */
        public function addProduct(aProduct:WebServiceProduct):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addProduct(aProduct);
            _internal_token.addEventListener("result",_addProduct_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IProductManagerService#addProduct_send()
		 */    
        public function addProduct_send():AsyncToken
        {
        	return addProduct(_addProduct_request.aProduct);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addProduct_request:AddProduct_request;
		/**
		 * @see IProductManagerService#addProduct_request_var
		 */
		[Bindable]
		public function get addProduct_request_var():AddProduct_request
		{
			return _addProduct_request;
		}
		
		/**
		 * @private
		 */
		public function set addProduct_request_var(request:AddProduct_request):void
		{
			_addProduct_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addProduct_lastResult:WebServiceProduct;
		[Bindable]
		/**
		 * @see IProductManagerService#addProduct_lastResult
		 */	  
		public function get addProduct_lastResult():WebServiceProduct
		{
			return _addProduct_lastResult;
		}
		/**
		 * @private
		 */
		public function set addProduct_lastResult(lastResult:WebServiceProduct):void
		{
			_addProduct_lastResult = lastResult;
		}
		
		/**
		 * @see IProductManagerService#addaddProduct()
		 */
		public function addaddProductEventListener(listener:Function):void
		{
			addEventListener(AddProductResultEvent.AddProduct_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addProduct_populate_results(event:ResultEvent):void
        {
        var e:AddProductResultEvent = new AddProductResultEvent();
		            e.result = event.result as WebServiceProduct;
		                       e.headers = event.headers;
		             addProduct_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see IProductManagerService#getWebService()
		 */
		public function getWebService():BaseProductManagerService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addProductManagerServiceFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
