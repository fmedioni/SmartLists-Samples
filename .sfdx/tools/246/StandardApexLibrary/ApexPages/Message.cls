global class Message {
	global Message(ApexPages.Severity severity, String summary, String detail, String id) { }
	global Message(ApexPages.Severity severity, String summary, String detail) { }
	global Message(ApexPages.Severity severity, String message) { }
	global String getComponentLabel() { }
	global String getDetail() { }
	global ApexPages.Severity getSeverity() { }
	global String getSummary() { }

}