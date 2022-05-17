function selectAll() {
    var checkBoxList = document.getElementsByName("indexCarts");
    var count = 0;
    for (let i = 0; i < checkBoxList.length; i++) {
        if (!checkBoxList[i].checked) {
            count += 1;
            checkBoxList[i].checked = true;
        }
    }
    if (count === 0) {
        for (let i = 0; i < checkBoxList.length; i++) {
            checkBoxList[i].checked = false;
        }
    }
    checkboxOnclick();
}
function checkboxOnclick() {
    var checkBoxList = document.getElementsByName("indexCarts");
    var sum = 0;
    var amount;
    for (let i = 0; i < checkBoxList.length; i++) {
        if (checkBoxList[i].checked) {
            amount = document.getElementsByName("amount")[i].value;
            sum += Number(amount);
        }

    }
    $('#totalAmount').html("$"+sum);
}
function addCart(){
    document.productForm.action="${pageContext.request.contextPath}/cart/addCart";
    document.productForm.submit();
}
function addPurchase() {
    document.productForm.action = "${pageContext.request.contextPath}/cart/addPurchase";
    document.productForm.submit();
}

function alertDisappearMsg(msg) {
    $('#alertDisappearMsg').html(msg);
    $('#alertDisappearMsg').show();
    setTimeout(function () {
        $('#alertDisappearMsg').html('');
        $('#alertDisappearMsg').hide();
    }, 2000);
}