global class XmlStreamWriter {
	global XmlStreamWriter() { }
	global void close() { }
	global String getXmlString() { }
	global void setDefaultNamespace(String uri) { }
	global void writeAttribute(String prefix, String namespaceURI, String localName, String value) { }
	global void writeCData(String data) { }
	global void writeCharacters(String text) { }
	global void writeComment(String data) { }
	global void writeDefaultNamespace(String namesapceURI) { }
	global void writeEmptyElement(String prefix, String localName, String namesapceURI) { }
	global void writeEndDocument() { }
	global void writeEndElement() { }
	global void writeNamespace(String prefix, String namesapceURI) { }
	global void writeProcessingInstruction(String target, String data) { }
	global void writeStartDocument(String encoding, String version) { }
	global void writeStartElement(String prefix, String localName, String namesapceURI) { }

}