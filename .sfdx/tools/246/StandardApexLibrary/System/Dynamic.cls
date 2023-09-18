global class Dynamic {
	global Dynamic() { }
	global Object clone() { }
	global static dynamic.Inst env(String language) { }
	global static dynamic.Inst env() { }
	global static Object eval(String language, String eval) { }
	global static Object eval(String eval) { }

}