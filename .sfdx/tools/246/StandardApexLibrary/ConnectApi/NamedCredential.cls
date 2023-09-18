global class NamedCredential {
	global ConnectApi.NamedCredentialCalloutOptions calloutOptions;
	global String calloutUrl;
	global List<ConnectApi.CredentialCustomHeader> customHeaders;
	global String developerName;
	global List<ConnectApi.ExternalCredential> externalCredentials;
	global String id;
	global String masterLabel;
	global ConnectApi.NetworkConnection networkConnection;
	global List<ConnectApi.NamedCredentialParameter> parameters;
	global ConnectApi.NamedCredentialType type;
	global String url;
	global NamedCredential() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}