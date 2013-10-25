
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package generated.webservices{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IProductManagerService
    {
    	//Stub functions for the updateProduct operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param aProduct
    	 * @return An AsyncToken
    	 */
    	function updateProduct(aProduct:WebServiceProduct):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateProduct_send():AsyncToken;
        
        /**
         * The updateProduct operation lastResult property
         */
        function get updateProduct_lastResult():WebServiceProduct;
		/**
		 * @private
		 */
        function set updateProduct_lastResult(lastResult:WebServiceProduct):void;
       /**
        * Add a listener for the updateProduct operation successful result event
        * @param The listener function
        */
       function addupdateProductEventListener(listener:Function):void;
       
       
        /**
         * The updateProduct operation request wrapper
         */
        function get updateProduct_request_var():UpdateProduct_request;
        
        /**
         * @private
         */
        function set updateProduct_request_var(request:UpdateProduct_request):void;
                   
    	//Stub functions for the getAllProds operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @return An AsyncToken
    	 */
    	function getAllProds():AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllProds_send():AsyncToken;
        
        /**
         * The getAllProds operation lastResult property
         */
        function get getAllProds_lastResult():QueryBeanType;
		/**
		 * @private
		 */
        function set getAllProds_lastResult(lastResult:QueryBeanType):void;
       /**
        * Add a listener for the getAllProds operation successful result event
        * @param The listener function
        */
       function addgetAllProdsEventListener(listener:Function):void;
       
       
    	//Stub functions for the deleteProduct operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param aProduct
    	 * @return An AsyncToken
    	 */
    	function deleteProduct(aProduct:WebServiceProduct):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function deleteProduct_send():AsyncToken;
        
        /**
         * The deleteProduct operation lastResult property
         */
        function get deleteProduct_lastResult():WebServiceProduct;
		/**
		 * @private
		 */
        function set deleteProduct_lastResult(lastResult:WebServiceProduct):void;
       /**
        * Add a listener for the deleteProduct operation successful result event
        * @param The listener function
        */
       function adddeleteProductEventListener(listener:Function):void;
       
       
        /**
         * The deleteProduct operation request wrapper
         */
        function get deleteProduct_request_var():DeleteProduct_request;
        
        /**
         * @private
         */
        function set deleteProduct_request_var(request:DeleteProduct_request):void;
                   
    	//Stub functions for the addProduct operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param aProduct
    	 * @return An AsyncToken
    	 */
    	function addProduct(aProduct:WebServiceProduct):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addProduct_send():AsyncToken;
        
        /**
         * The addProduct operation lastResult property
         */
        function get addProduct_lastResult():WebServiceProduct;
		/**
		 * @private
		 */
        function set addProduct_lastResult(lastResult:WebServiceProduct):void;
       /**
        * Add a listener for the addProduct operation successful result event
        * @param The listener function
        */
       function addaddProductEventListener(listener:Function):void;
       
       
        /**
         * The addProduct operation request wrapper
         */
        function get addProduct_request_var():AddProduct_request;
        
        /**
         * @private
         */
        function set addProduct_request_var(request:AddProduct_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseProductManagerService;
	}
}