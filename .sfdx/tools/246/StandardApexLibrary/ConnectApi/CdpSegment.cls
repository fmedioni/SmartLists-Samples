global class CdpSegment {
	global Object clone() { }
	global static ConnectApi.CdpSegmentOutput createSegment(ConnectApi.CdpSegmentInput input) { }
	global static void deleteSegment(String segmentApiName) { }
	global static ConnectApi.CdpSegmentActionOutput executePublishAdhoc(String segmentId) { }
	global static ConnectApi.CdpSegmentContainerOutput getSegment(String segmentApiName) { }
	global static ConnectApi.CdpSegmentContainerOutput getSegments() { }
	global static ConnectApi.CdpSegmentContainerOutput getSegmentsPaginated(Integer batchSize, Integer offset, String orderBy) { }
	global static ConnectApi.CdpSegmentOutput updateSegment(String segmentApiName, ConnectApi.CdpSegmentInput input) { }

}
