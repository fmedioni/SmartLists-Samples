global class HttpRequest {
	global HttpRequest() { }
	global String getBody() { }
	global Blob getBodyAsBlob() { }
	global dom.Document getBodyDocument() { }
	global Boolean getCompressed() { }
	global String getEndpoint() { }
	global String getHeader(String key) { }
	global String getMethod() { }
	global void setBody(String body) { }
	global void setBodyAsBlob(Blob body) { }
	global void setBodyDocument(Object body) { }
	global void setClientCertificate(String clientCert, String password) { }
	global void setClientCertificateName(String certDevName) { }
	global void setCompressed(Boolean compressed) { }
	global void setEndpoint(String endpoint) { }
	global void setHeader(String key, String value) { }
	global void setMethod(String method) { }
	global void setTimeout(Integer timeout) { }
	global String toString() { }

}