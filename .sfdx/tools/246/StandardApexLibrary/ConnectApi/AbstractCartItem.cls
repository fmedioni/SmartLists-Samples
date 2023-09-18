global class AbstractCartItem {
	global String cartId;
	global String cartItemId;
	global ConnectApi.CartMessagesSummary messagesSummary;
	global String name;
	global ConnectApi.CartItemProduct productDetails;
	global String productId;
	global String quantity;
	global ConnectApi.CartItemType type;
	global Object clone() { }
	global Boolean equals(Object obj) { }
	global Double getBuildVersion() { }
	global Integer hashCode() { }
	global String toString() { }

}