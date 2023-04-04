/*
 * Sample Apex Data Source for a child Apex List
 */
global with sharing class SLAccountApexDataSourceWithParent implements smartLists.SmartListApexSourceInterface2 {
    /*
     * Returns one page of records when:
     * - the list is displayed for the time
     * - the list refreshed with the Refresh button
     * - user is requesting a new page of records by by scrolling in the list
     * 
     * parms: instance of smartlists.SmartListApexSourceGetPage containing the parameters of the request:
	 * - parms.getFilter(): If predefined filters are added to the list, SOQL filter of the selected filter, null otherwise
	 * - parms.getFilterEntries(): criteria selected in the Quick Filters widget or null if no selection
	 * - parms.getOffset(): first record of the page to load
	 * - parms.getPageSize(): number of records of the page
	 * - parms.getParentId(): Id of the parent record
	 * - parms.getParentIdField(): Name of the field containing the id to the parent record
     * - parms.getScope(): SOQL scope of the query
	 *		everything: All records
	 *		my: My records
	 *		team: My team records
	 * 		For more details: https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_using_scope.htm
	 * - parms.getSortField(): sort field selected in the list
	 * - parms.getSortDirection(): asc or desc
     */
    public List<Map<String, Object>> getPage(smartlists.SmartListApexSourceGetPage parms) {
        String query = 'SELECT AccountId, StageName, Sum(Amount) OpptiesSum, Count(Id) OpptiesCount, Owner.Name Owner FROM Opportunity';
        query += ' USING SCOPE ' + parms.getScope();
        query += ' WHERE ' + parms.getParentIdField() + ' = \'' + parms.getParentId() + '\'';
        query += String.isEmpty(parms.getFilter()) ? '' : ' AND (' + parms.getFilter() + ')';
        String havingFilter = '';
        if (parms.getFilterEntries() != null && parms.getFilterEntries().size() > 0) {
            List<smartLists.SmartListController.FilterEntry> whereEntries = new List<smartLists.SmartListController.FilterEntry>();
            List<smartLists.SmartListController.FilterEntry> havingEntries = new List<smartLists.SmartListController.FilterEntry>();
            for (smartLists.SmartListController.FilterEntry fe : parms.getFilterEntries()) {
                if (fe.fieldName == 'Sum(Amount)')
                    havingEntries.add(fe);
                else if (fe.fieldName == 'Count(Id)')
                    havingEntries.add(fe);
                else
                    whereEntries.add(fe);
            }
            String whereFilter = smartLists.SmartListController.buildFilter(whereEntries);
            query += String.isEmpty(whereFilter) ? '' : ' AND (' + whereFilter + ')';
            havingFilter = smartLists.SmartListController.buildFilter(havingEntries);
        }
        query += ' GROUP BY StageName, AccountId, Owner.Name';
        query += String.isEmpty(havingFilter) ? '' : ' HAVING ' + havingFilter;
        query += String.isEmpty(parms.getSortField()) ? '' : ' ORDER BY ' + parms.getSortField() + ' ' + parms.getSortDirection();
        query += ' LIMIT ' + parms.getPageSize() + '  OFFSET ' + parms.getOffset();
        System.debug('Query ' + query );
        AggregateResult[] oppties = Database.query(query);
        return buildRecords(oppties);
    }

    /*
     * Returns the last value of a record
     * Called by the list after a row level flow action has been executed
     * - id: row id of the record
     */
    public List<Map<String, Object>> getRecord(String id) {
        String query = 'SELECT AccountId, StageName, Sum(Amount) OpptiesSum, Count(Id) OpptiesCount, Owner.Name Owner FROM Opportunity';
        query += ' WHERE AccountId = ' + id;
        query += ' GROUP BY StageName, AccountId, Owner.Name';
        AggregateResult[] oppties = Database.query(query);
        return buildRecords(oppties);
    }

    /*
     * Private function for formatting the data to the format expected by the list
     */
    private List<Map<String, Object>> buildRecords(AggregateResult[] oppties) {
        System.debug('Oppties ' + oppties);
        List<Map<String, Object>> results = new List<Map<String, Object>>();
        for (AggregateResult oppty : oppties) {
            Map<String, Object> record = new Map<String, Object>();
            record.put('RowKey', (String)oppty.get('AccountId') + (String)oppty.get('StageName')); // Note: Required field for identifying a unique record
            record.put('Id', oppty.get('AccountId')); // Note: A field called Id is required in the list for using flow actions
            record.put('StageName', oppty.get('StageName'));
            record.put('Sum(Amount)', oppty.get('OpptiesSum'));
            record.put('Count(Id)', oppty.get('OpptiesCount'));
            record.put('Owner.Name', oppty.get('Owner'));
            results.add(record);
        }
        return results;
    }
}