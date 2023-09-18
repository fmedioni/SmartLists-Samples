global class EventBus {
	global static String getOperationId(Object result) { }
	global static List<Database.SaveResult> publish(List<SObject> sobjects, Object callback) { }
	global static Database.SaveResult publish(SObject sobject, Object callback) { }
	global static List<Database.SaveResult> publish(List<SObject> sobjects) { }
	global static Database.SaveResult publish(SObject sobject) { }

}