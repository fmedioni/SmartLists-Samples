global class QuickAction {
	global static List<QuickAction.DescribeAvailableQuickActionResult> describeAvailableQuickActions(String parentType) { }
	global static List<QuickAction.DescribeQuickActionResult> describeQuickActions(List<String> actions) { }
	global static QuickAction.QuickActionResult performQuickAction(QuickAction.QuickActionRequest performQuickAction, Boolean allOrNothing) { }
	global static QuickAction.QuickActionResult performQuickAction(QuickAction.QuickActionRequest performQuickAction) { }
	global static List<QuickAction.QuickActionResult> performQuickActions(List<QuickAction.QuickActionRequest> performQuickActions, Boolean allOrNothing) { }
	global static List<QuickAction.QuickActionResult> performQuickActions(List<QuickAction.QuickActionRequest> performQuickActions) { }
	global static QuickAction.QuickActionTemplateResult retrieveQuickActionTemplate(String quickActionName, Id contextId) { }
	global static List<QuickAction.QuickActionTemplateResult> retrieveQuickActionTemplates(List<String> quickActionNames, Id contextId) { }

}