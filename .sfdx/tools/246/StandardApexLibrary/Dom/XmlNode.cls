global class XmlNode {
	global dom.XmlNode addChildElement(String name, String namespace, String prefix) { }
	global dom.XmlNode addCommentNode(String text) { }
	global dom.XmlNode addTextNode(String text) { }
	global String getAttribute(String key, String keyNamespace) { }
	global Integer getAttributeCount() { }
	global String getAttributeKeyAt(Integer index) { }
	global String getAttributeKeyNsAt(Integer index) { }
	global String getAttributeValue(String key, String keyNamespace) { }
	global String getAttributeValueNs(String key, String keyNamespace) { }
	global dom.XmlNode getChildElement(String name, String namespace) { }
	global List<dom.XmlNode> getChildElements() { }
	global List<dom.XmlNode> getChildren() { }
	global String getName() { }
	global String getNamespace() { }
	global String getNamespaceFor(String prefix) { }
	global Dom.XmlNodeType getNodeType() { }
	global dom.XmlNode getParent() { }
	global String getPrefixFor(String namespace) { }
	global String getText() { }
	global dom.XmlNode insertBefore(Object newChild, Object refChild) { }
	global Boolean removeAttribute(String key, String keyNamespace) { }
	global Boolean removeChild(Object child) { }
	global void setAttribute(String key, String value) { }
	global void setAttributeNs(String key, String value, String keyNamespace, String valueNamespace) { }
	global void setNamespace(String prefix, String namespace) { }

}