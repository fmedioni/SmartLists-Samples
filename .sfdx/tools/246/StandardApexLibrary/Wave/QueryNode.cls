global class QueryNode {
	global String build(String streamName) { }
	global Wave.QueryNode cap(Integer cap) { }
	global Object clone() { }
	global ConnectApi.LiteralJson execute(String streamName) { }
	global Wave.QueryNode filter(List<String> filterConditions) { }
	global Wave.QueryNode filter(String filterCondition) { }
	global Wave.QueryNode foreach(List<Wave.ProjectionNode> projections) { }
	global Wave.QueryNode group(List<String> groups) { }
	global Wave.QueryNode group() { }
	global Wave.QueryNode order(List<List<String>> orders) { }

}
