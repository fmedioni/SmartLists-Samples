global class Search {
	global static Search.SearchResults find(String searchQuery, Object accessLevel) { }
	global static Search.SearchResults find(String searchQuery) { }
	global static List<List<SObject>> query(String searchQuery, Object accessLevel) { }
	global static List<List<SObject>> query(String searchQuery) { }
	global static Search.SuggestionResults suggest(String searchQuery, String sObjectType, Object options, Object accessLevel) { }
	global static Search.SuggestionResults suggest(String searchQuery, String sObjectType, Object options) { }

}