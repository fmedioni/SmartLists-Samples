global class StandardSetController {
	global StandardSetController(Database.QueryLocator queryLocator) { }
	global StandardSetController(List<SObject> records) { }
	global void addFields(List<String> fieldNames) { }
	global System.PageReference cancel() { }
	global void first() { }
	global Boolean getCompleteResult() { }
	global String getFilterId() { }
	global Boolean getHasNext() { }
	global Boolean getHasPrevious() { }
	global List<System.SelectOption> getListViewOptions() { }
	global Integer getPageNumber() { }
	global Integer getPageSize() { }
	global SObject getRecord() { }
	global List<SObject> getRecords() { }
	global Integer getResultSize() { }
	global List<SObject> getSelected() { }
	global void last() { }
	global void next() { }
	global void previous() { }
	global System.PageReference save() { }
	global void setFilterId(String filterId) { }
	global void setPageNumber(Integer pageNumber) { }
	global void setPageSize(Integer pageSize) { }
	global void setSelected(List<SObject> selected) { }

}