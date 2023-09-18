global class QueryBuilder {
	global QueryBuilder() { }
	global Object clone() { }
	global static Wave.QueryNode cogroup(List<Wave.QueryNode> cogroupNodes, List<List<String>> groups) { }
	global static Wave.ProjectionNode count() { }
	global static Wave.ProjectionNode get(String projection) { }
	global static Wave.QueryNode load(String datasetId, String datasetVersionId) { }
	global static Wave.QueryNode loadByDeveloperName(String fullyQualifiedName) { }
	global static Wave.QueryNode union(List<Wave.QueryNode> unionNodes) { }

}
