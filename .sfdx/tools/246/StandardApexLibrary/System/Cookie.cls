global class Cookie {
	global Cookie(String name, String value, String path, Integer maxAge, Boolean isSecure, String sameSite) { }
	global Cookie(String name, String value, String path, Integer maxAge, Boolean isSecure) { }
	global String getDomain() { }
	global Integer getMaxAge() { }
	global String getName() { }
	global String getPath() { }
	global String getSameSite() { }
	global String getValue() { }
	global Boolean isSecure() { }

}