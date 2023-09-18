global class DecisionTableParameterInput {
	global String columnMapping;
	global ConnectApi.DecisionTableDataType dataType;
	global Integer decimalScale;
	global String domainEntity;
	global String fieldName;
	global Boolean isGroupByField;
	global Boolean isPriority;
	global Integer maxlength;
	global ConnectApi.DecisionTableOperator operator;
	global Integer sequence;
	global ConnectApi.DecisionTableSortType sortType;
	global ConnectApi.DecisionTableParameterType usage;
	global DecisionTableParameterInput() { }
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Integer hashCode() { }
	global String toString() { }

}