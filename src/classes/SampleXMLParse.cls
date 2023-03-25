//test
public class SampleXMLParse {
	public static void parseXMl(){
        String strResp = '<?xml version="1.0" encoding="UTF-8"?><Results><Account><UserId> 1234545656</UserId><Active> true </Active></Account><Quotes><Company><Name>Test1</Name><Type>IT</Type></Company><Company><Name>Test12</Name><Type>Farm</Type></Company></Quotes></Results>';
        Dom.Document doc = new Dom.Document();  
        doc.load(strResp);  
		//Added new comment
        Dom.XMLNode rootElement = doc.getRootElement();  
        for ( Dom.XMLNode childElement : rootElement.getChildElements() ) {
            /// added root elements of each array
            system.debug(childElement.getName() + '-' + childElement.getText());
            for (Dom.XMLNode detailElement : childElement.getChildElements()){
                //childs elements of each array
                system.debug(detailElement.getName() + '-' + detailElement.getText());
                 
                for (Dom.XMLNode detailElement1 : detailElement.getChildElements()){
                    //childs elements of each childs array
                    system.debug(detailElement1.getName() + '-' + detailElement1.getText());
                }
            } 
        }  
    }
}
