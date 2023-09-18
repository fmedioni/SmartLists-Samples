global class CdpCalculatedInsight {
	global Object clone() { }
	global static ConnectApi.CdpCalculatedInsightOutput createCalculatedInsight(ConnectApi.CdpCalculatedInsightInput input) { }
	global static void deleteCalculatedInsight(String apiName) { }
	global static ConnectApi.CdpCalculatedInsightOutput getCalculatedInsight(String apiName) { }
	global static ConnectApi.CdpCalculatedInsightPage getCalculatedInsights(String definitionType, Integer batchSize, Integer offset, String orderby, String dataspace) { }
	global static ConnectApi.CdpCalculatedInsightActionRunResponseRepresentation runCalculatedInsight(String apiName) { }
	global static ConnectApi.CdpCalculatedInsightOutput updateCalculatedInsight(String apiName, ConnectApi.CdpCalculatedInsightInput input) { }

}
