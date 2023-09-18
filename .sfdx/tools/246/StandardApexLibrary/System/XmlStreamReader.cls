global class XmlStreamReader {
	global XmlStreamReader(String xml) { }
	global Integer getAttributeCount() { }
	global String getAttributeLocalName(Integer index) { }
	global String getAttributeNamespace(Integer index) { }
	global String getAttributePrefix(Integer index) { }
	global String getAttributeType(Integer index) { }
	global String getAttributeValue(String namespaceURI, String localName) { }
	global String getAttributeValueAt(Integer index) { }
	global System.XmlTag getEventType() { }
	global String getLocalName() { }
	global String getLocation() { }
	global String getNamespace() { }
	global Integer getNamespaceCount() { }
	global String getNamespacePrefix(Integer index) { }
	global String getNamespaceURI(String prefix) { }
	global String getNamespaceURIAt(Integer index) { }
	global String getPIData() { }
	global String getPITarget() { }
	global String getPrefix() { }
	global String getText() { }
	global String getVersion() { }
	global Boolean hasName() { }
	global Boolean hasNext() { }
	global Boolean hasText() { }
	global Boolean isCharacters() { }
	global Boolean isEndElement() { }
	global Boolean isStartElement() { }
	global Boolean isWhitespace() { }
	global Integer next() { }
	global Integer nextTag() { }
	global void setCoalescing(Boolean flag) { }
	global void setNamespaceAware(Boolean flag) { }
	global String toString() { }

}