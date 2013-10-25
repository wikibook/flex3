package generated.webservices
{
	 import mx.rpc.xml.Schema
	 public class BaseProductManagerServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseProductManagerServiceSchema():void
{		
			 var xsdXML1:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:apachesoap="http://xml.apache.org/xml-soap" xmlns:impl="http://cfcs.flexGrocer" xmlns:intf="http://cfcs.flexGrocer" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns1="http://rpc.xml.coldfusion" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsdlsoap="http://schemas.xmlsoap.org/wsdl/soap/" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://rpc.xml.coldfusion">
    <xsd:import namespace="http://cfcs.flexGrocer"/>
    <xsd:import namespace="http://schemas.xmlsoap.org/soap/encoding/"/>
    <xsd:complexType name="CFCInvocationException">
        <xsd:sequence/>
    </xsd:complexType>
    <xsd:complexType name="QueryBean">
        <xsd:sequence>
            <xsd:element name="columnList" nillable="true" type="intf:ArrayOf_xsd_string"/>
            <xsd:element name="data" nillable="true" type="intf:ArrayOfArrayOf_xsd_anyType"/>
        </xsd:sequence>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema1:Schema = new Schema(xsdXML1);
			schemas.push(xsdSchema1);
			targetNamespaces.push(new Namespace('','http://rpc.xml.coldfusion'));
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:apachesoap="http://xml.apache.org/xml-soap" xmlns:impl="http://cfcs.flexGrocer" xmlns:intf="http://cfcs.flexGrocer" xmlns:ns0="http://cfcs.flexGrocer" xmlns:ns1="http://cfcs.flexGrocer" xmlns:ns14="http://cfcs.flexGrocer" xmlns:ns15="http://cfcs.flexGrocer" xmlns:ns16="http://cfcs.flexGrocer" xmlns:ns17="http://cfcs.flexGrocer" xmlns:ns18="http://cfcs.flexGrocer" xmlns:ns19="http://cfcs.flexGrocer" xmlns:ns2="http://cfcs.flexGrocer" xmlns:ns20="http://rpc.xml.coldfusion" xmlns:ns3="http://cfcs.flexGrocer" xmlns:ns4="http://cfcs.flexGrocer" xmlns:ns5="http://cfcs.flexGrocer" xmlns:ns6="http://rpc.xml.coldfusion" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns1="http://rpc.xml.coldfusion" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsdlsoap="http://schemas.xmlsoap.org/wsdl/soap/" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://cfcs.flexGrocer">
    <xsd:import namespace="http://rpc.xml.coldfusion"/>
    <xsd:import namespace="http://schemas.xmlsoap.org/soap/encoding/"/>
    <xsd:import namespace="http://rpc.xml.coldfusion"/>
    <xsd:import namespace="http://rpc.xml.coldfusion"/>
    <xsd:complexType name="Product">
        <xsd:sequence>
            <xsd:element name="catID" nillable="true" type="double"/>
            <xsd:element name="cost" nillable="true" type="double"/>
            <xsd:element name="description" nillable="true" type="string"/>
            <xsd:element name="imageName" nillable="true" type="string"/>
            <xsd:element name="isLowFat" nillable="true" type="boolean"/>
            <xsd:element name="isOrganic" nillable="true" type="boolean"/>
            <xsd:element name="listPrice" nillable="true" type="double"/>
            <xsd:element name="prodID" nillable="true" type="double"/>
            <xsd:element name="prodName" nillable="true" type="string"/>
            <xsd:element name="unitID" nillable="true" type="double"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOf_xsd_string">
        <xsd:complexContent>
            <xsd:restriction base="soapenc:Array">
                <xsd:attribute ref="soapenc:arrayType" wsdl:arrayType="xsd:string[]"/>
            </xsd:restriction>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfArrayOf_xsd_anyType">
        <xsd:complexContent>
            <xsd:restriction base="soapenc:Array">
                <xsd:attribute ref="soapenc:arrayType" wsdl:arrayType="xsd:anyType[][]"/>
            </xsd:restriction>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:element name="addProduct">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="aProduct" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteProduct">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="aProduct" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="updateProduct">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="aProduct" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllProds">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="addProductResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="addProductReturn" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteProductResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="deleteProductReturn" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="updateProductResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="updateProductReturn" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllProdsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="getAllProdsReturn" type="tns1:QueryBean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="addProduct">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="aProduct" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteProduct">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="aProduct" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="updateProduct">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="aProduct" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllProds">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="addProductResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="addProductReturn" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteProductResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="deleteProductReturn" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="updateProductResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="updateProductReturn" type="ns15:Product"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllProdsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="unqualified" name="getAllProdsReturn" type="tns1:QueryBean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://cfcs.flexGrocer'));
			xsdSchema0.addImport(new Namespace("http://rpc.xml.coldfusion"), xsdSchema1)
			xsdSchema1.addImport(new Namespace("http://cfcs.flexGrocer"), xsdSchema0)
		}
	}
}