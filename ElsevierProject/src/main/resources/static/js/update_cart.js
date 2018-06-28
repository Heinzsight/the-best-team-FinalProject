function calculateTotalPrice(price, quantity, price_label) {

    var cartTotal = document.getElementById("cart_total").value; //the book price
    var orderTotal = document.getElementById("order_total").value; //the entire price with tax included

    var totalPrice = parseFloat(price) * parseFloat(quantity);

    price_label.innerHTML = "$" + totalPrice;  //the price of the book with the quantity

    cTotal = parseFloat(cartTotal) + parseFloat(price);

    oTotal = parseFloat(orderTotal) + parseFloat(price);

    document.getElementById("cart_total_label").innerHTML = "$" + cTotal; //the price BEFORE tax is added in

    document.getElementById("order_total_label").innerHTML = "$" + oTotal;  //the final price

    //document.getElementById("price").value = totalPrice;


    document.getElementById("cart_total").value = cTotal;
    document.getElementById("order_total").value = oTotal;


    //alert("Cart Total is "+cartTotal);
    //alert("Order Total is "+orderTotal);
//	        var xmlhttp = new XMLHttpRequest();
//	        xmlhttp.onreadystatechange = function() {
//	            if (this.readyState == 4 && this.status == 200) {
//	                price_label.innerHTML = "$"+this.responseText;
//	                document.getElementById("cart_total_label").innerHTML = cartTotal+parseFloat(this.responseText);
//	               // document.getElementById("order_total_label").innerHTML = (parseFloat(orderTotal)+parseFloat(this.responseText));
//	            	
//	                //theField.form.price_label.innerHTML = "$"+this.responseText;
//	            }
//	        };
//	        xmlhttp.open("GET", "/updatePrice?price=" + price+"&quantity="+quantity, true);
//	        xmlhttp.send();

}
	
