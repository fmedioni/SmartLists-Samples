global class HttpResponse {
	global HttpResponse() { }
	global String getBody() { }
	global Blob getBodyAsBlob() { }
	global dom.Document getBodyDocument() { }
	global String getHeader(String key) { }
	global List<String> getHeaderKeys() { }
	global String getStatus() { }
	global Integer getStatusCode() { }
	global System.XmlStreamReader getXmlStreamReader() { }
	global void setBody(String body) { }
	global void setBodyAsBlob(Blob body) { }
	global void setHeader(String key, String value) { }
	global void setStatus(String status) { }
	global void setStatusCode(Integer statusCode) { }
	global String toString() { }

}