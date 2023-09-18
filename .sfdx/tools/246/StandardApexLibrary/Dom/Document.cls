global class Document {
	global Document() { }
	global dom.XmlNode createRootElement(String name, String namespace, String prefix) { }
	global dom.XmlNode getRootElement() { }
	global void load(String xml) { }
	global String toXmlString() { }

}