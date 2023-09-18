global class Messaging {
	global static Messaging.InboundEmail extractInboundEmail(Object source, Boolean includeForwardedAttachments) { }
	global static List<Messaging.RenderEmailTemplateBodyResult> renderEmailTemplate(String whoId, String whatId, List<String> bodies) { }
	global static Messaging.SingleEmailMessage renderStoredEmailTemplate(String templateId, String whoId, String whatId, Object attachmentRetrievalOption, Boolean updateEmailTemplateUsage) { }
	global static Messaging.SingleEmailMessage renderStoredEmailTemplate(String templateId, String whoId, String whatId, Object attachmentRetrievalOption) { }
	global static Messaging.SingleEmailMessage renderStoredEmailTemplate(String templateId, String whoId, String whatId) { }
	global static void reserveMassEmailCapacity(Integer count) { }
	global static void reserveSingleEmailCapacity(Integer count) { }
	global static List<Messaging.SendEmailResult> sendEmail(List<Messaging.Email> emailMessages, Boolean allOrNothing) { }
	global static List<Messaging.SendEmailResult> sendEmail(List<Messaging.Email> emailMessages) { }
	global static List<Messaging.SendEmailResult> sendEmailMessage(List<Id> emailMessagesIds, Boolean allOrNothing) { }
	global static List<Messaging.SendEmailResult> sendEmailMessage(List<Id> emailMessagesIds) { }

}