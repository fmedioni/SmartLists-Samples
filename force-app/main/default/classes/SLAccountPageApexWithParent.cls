global with sharing class SLAccountPageApexWithParent implements smartLists.SmartListApexSourceInterface2 {
    // Base query used by getPage and getRecords
    Static String baseQuery = 'SELECT AccountId, StageName, Sum(Amount) OpptiesSum, Count(Id) OpptiesCount, Owner.Name Owner FROM Opportunity';
    // Group By clause used by getPage and getRecords
    Static String groupByClause = ' GROUP BY StageName, AccountId, Owner.Name';

    // Get a list page
    public List<Map<String, Object>> getPage(smartLists.SmartListApexSourceGetPage parms) {
        String query = baseQuery;
        // Add visibility filter to the query
        query += ' USING SCOPE ' + parms.getScope();
        // Add relationship with parent record to where clause
        String whereClause = parms.getParentIdField() + ' = \'' + parms.getParentId() + '\'';
        // If predefined filter defined for the list, add the filter to the where clause
        whereClause += String.isEmpty(parms.getFilter()) ? '' : ' AND (' + parms.getFilter() + ')';
        String havingClause = '';
        // If values entered in Filters Panel, add them to the where and having clauses
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
            String filtersWidget = smartLists.SmartListController.buildFilter(whereEntries);
            whereClause += String.isEmpty(filtersWidget) ? '' : (String.isEmpty(whereClause) ? filtersWidget : ' AND (' + filtersWidget + ')');
            havingClause = smartLists.SmartListController.buildFilter(havingEntries);
        }
        // Add where clause to query
        query += String.isEmpty(whereClause) ? '' : ' WHERE ' + whereClause;
        // Add group by to query
        query += groupByClause;
        // Add having clause to query
        query += String.isEmpty(havingClause) ? '' : ' HAVING ' + havingClause;
        // If sort field passed, add sort parameters to query
        query += String.isEmpty(parms.getSortField()) ? '' : ' ORDER BY ' + parms.getSortField() + ' ' + parms.getSortDirection();
        // Add paging parameters to query
        query += ' LIMIT ' + parms.getPageSize() + '  OFFSET ' + parms.getOffset();
        // Retrieve the records
        return getRecords(query);
    }

    // Get a list record
    public List<Map<String, Object>> getRecord(String id) {
        String query = baseQuery;
        // Add where clause to query
        query += ' WHERE AccountId = \'' + id + '\'';
        // Add group by to query
        query += groupByClause;
        // Retrieve the records
        return getRecords(query);
    }

    // Query the database and format the records for Smart Lists
    private List<Map<String, Object>> getRecords(String query) {
        System.debug('Query ' + query );
        // Query the database
        AggregateResult[] oppties = Database.query(query);
        // Parse the returned records and format them for Smart List
        System.debug('Oppties ' + oppties);
        List<Map<String, Object>> results = new List<Map<String, Object>>();
        for (AggregateResult oppty : oppties) {
            Map<String, Object> record = new Map<String, Object>();
            record.put('RowKey', (String)oppty.get('AccountId') + (String)oppty.get('StageName') + (String)oppty.get('Owner')); // Note: Required field for identifying a unique record
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