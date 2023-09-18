global class Approval {
	global static Boolean isLocked(Id id) { }
	global static Map<Id,Boolean> isLocked(List<Id> ids) { }
	global static Map<Id,Boolean> isLocked(List<SObject> sobjects) { }
	global static Boolean isLocked(SObject sobject) { }
	global static Approval.LockResult lock(Id id, Boolean allOrNothing) { }
	global static List<Approval.LockResult> lock(List<Id> ids, Boolean allOrNothing) { }
	global static List<Approval.LockResult> lock(List<SObject> sobjects, Boolean allOrNothing) { }
	global static Approval.LockResult lock(SObject sobject, Boolean allOrNothing) { }
	global static Approval.LockResult lock(Id id) { }
	global static List<Approval.LockResult> lock(List<Id> ids) { }
	global static List<Approval.LockResult> lock(List<SObject> sobjects) { }
	global static Approval.LockResult lock(SObject sobject) { }
	global static Approval.UnlockResult unlock(Id id, Boolean allOrNothing) { }
	global static List<Approval.UnlockResult> unlock(List<Id> ids, Boolean allOrNothing) { }
	global static List<Approval.UnlockResult> unlock(List<SObject> sobjects, Boolean allOrNothing) { }
	global static Approval.UnlockResult unlock(SObject sobject, Boolean allOrNothing) { }
	global static Approval.UnlockResult unlock(Id id) { }
	global static List<Approval.UnlockResult> unlock(List<Id> ids) { }
	global static List<Approval.UnlockResult> unlock(List<SObject> sobjects) { }
	global static Approval.UnlockResult unlock(SObject sobject) { }

}