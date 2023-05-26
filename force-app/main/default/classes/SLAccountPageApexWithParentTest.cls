@isTest
public with sharing class SLAccountPageApexWithParentTest {
    @isTest
    static void testGetPage() {
        // Create the test data
        Account acc = new Account(name = 'test');
        insert acc;
        Opportunity oppty1 = new Opportunity(name = 'Oppty1', AccountId = acc.Id, CloseDate = System.today(), StageName = 'Prospecting', Amount=100);
        Opportunity oppty2 = new Opportunity(name = 'Oppty2', AccountId = acc.Id, CloseDate = System.today(), StageName = 'Value Proposition', Amount=100);
        Opportunity oppty3 = new Opportunity(name = 'Oppty3', AccountId = acc.Id, CloseDate = System.today(), StageName = 'Closed Won', Amount=100);
        List<Opportunity> oppties = new List<Opportunity>{oppty1, oppty2, oppty3};
        insert oppties;
        // Create values from Filters Panel
        smartLists.SmartListController.FilterEntry fe1 = new smartLists.SmartListController.FilterEntry();
        fe1.fieldName = 'StageName';
        fe1.operator='LIKE';
        fe1.values = new String[]{'Prospecting' };
        fe1.type='STRING';
        smartLists.SmartListController.FilterEntry fe2 = new smartLists.SmartListController.FilterEntry();
        fe2.fieldName = 'Sum(Amount)';
        fe2.operator='>=';
        fe2.values = new String[]{'100'};
        fe2.type='CURRENCY';
        smartLists.SmartListController.FilterEntry fe3 = new smartLists.SmartListController.FilterEntry();
        fe3.fieldName = 'Count(Id)';
        fe3.operator='>=';
        fe3.values = new String[]{'1'};
        fe3.type='INTEGER';
        List<smartLists.SmartListController.FilterEntry> fes = new List<smartLists.SmartListController.FilterEntry>{fe1, fe2, fe3};
        Test.startTest();
        // Define getPage parameters
        smartLists.SmartListApexSourceGetPage getPageParms = 
            new smartLists.SmartListApexSourceGetPage().withScope('everything').withFilter('').withFilterEntries(fes).withParentIdField('AccountId').withParentId(acc.Id).withSortField('StageName').withSortDirection('asc').withOffset(0).withPageSize(10);
         SLAccountPageApexWithParent ds = new SLAccountPageApexWithParent();
        // Invoke getPage
        List<Object> result = ds.getPage(getPageParms);
        Test.stopTest();
        System.assertEquals(1, result.size());
    }
    
    @isTest
    static void testGetRecord(){
        // Create the test data
        Account acc1 = new Account(name = 'test1');
        Account acc2 = new Account(name = 'test2');
        List<Account> accs = new List<Account>{acc1, acc2};
        insert accs;
        Opportunity oppty1 = new Opportunity(name = 'Oppty1', AccountId = acc1.Id, CloseDate = System.today(), StageName = 'Prospecting');
        Opportunity oppty2 = new Opportunity(name = 'Oppty2', AccountId = acc2.Id, CloseDate = System.today(), StageName = 'Value Proposition');
        List<Opportunity> oppties = new List<Opportunity>{oppty1, oppty2};
        insert oppties;
        Test.startTest();
        SLAccountPageApexWithParent ds = new SLAccountPageApexWithParent();
        // Invoke getRecord
        List<Object> result = ds.getRecord(acc1.Id);
        Test.stopTest();
        System.assertEquals(1, result.size());
    }
}