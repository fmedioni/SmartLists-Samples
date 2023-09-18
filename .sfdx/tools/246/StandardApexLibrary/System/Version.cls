global class Version {
	global Version(Integer major, Integer minor, Integer patch) { }
	global Version(Integer major, Integer minor) { }
	global Integer compareTo(System.Version other) { }
	global Integer major() { }
	global Integer minor() { }
	global Integer patch() { }

}