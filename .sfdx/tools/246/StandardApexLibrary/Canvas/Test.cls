global class Test {
	global String KEY_CANVAS_URL;
	global String KEY_DEVELOPER_NAME;
	global String KEY_DISPLAY_LOCATION;
	global String KEY_LOCATION_URL;
	global String KEY_NAME;
	global String KEY_NAMESPACE;
	global String KEY_SUB_LOCATION;
	global String KEY_VERSION;
	global Test() { }
	global Object clone() { }
	global static Canvas.RenderContext mockRenderContext(Map<String,String> appContextTestValues, Map<String,String> envContextTestValues) { }
	global static void testCanvasLifecycle(Canvas.CanvasLifecycleHandler handler, Canvas.RenderContext mockRenderContext) { }

}