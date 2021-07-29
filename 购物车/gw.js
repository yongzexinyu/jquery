		//添加购物车
		function addshoping(btn) {

			var tds = $(btn).parent().siblings()
			var name = tds.eq(0).html()
			var price = tds.eq(1).html()

			var trs = $("#goods tr")
			var nameArr = new Array();
			$.each(trs, function (index, value) {
				nameArr.push($(this).children('td').eq(0).text())
			})
			var tr = $('<tr>' +
				'<td>' + name + '</td>' +
				'<td>' + price + '</td>' +
				'<td align="center">' +
				'<input type="button" value="-" onclick="jian(this);"/> ' +
				'<input type="number" size="3" readonly value="1"/> ' +
				'<input type="button" value="+" onclick="increase(this);"/>' +
				'</td>' +
				'<td>' + price + '</td>' +
				'<td align="center"><input type="button" value="x" onclick="del(this);"/></td>' +
				'</tr>');
			var ishasName = nameArr.indexOf(name)
			
			if (ishasName >= 0) {
				var goodcount=trs.eq(ishasName).children('td').eq(2).children().eq(1).val()
				Number.parseInt(goodcount);
				trs.eq(ishasName).children('td').eq(2).children().eq(1).val(++goodcount)
				var price=trs.eq(ishasName).children('td').eq(1).html()
				// Number.parseInt(price)
				trs.eq(ishasName).children('td').eq(3).html(goodcount*price);
				
					
			} else {

			//	$(tr).insertAfter($("#goods"))
			$("#goods").append(tr);
				
			}
			sum()
		}
		//增加
		function increase(btn){
			var num=$(btn).prev().val()
			Number.parseInt(num);
			var bignew=$(btn).prev().val(++num)
			var price = $(btn).parent().prev().html();
    		$(btn).parent().next().html(num*price);
			sum()
		
		}
		//减少
		function jian(btn){
			
			var num=$(btn).next().val()
			Number.parseInt(--num)
			var price = $(btn).parent().prev().html();
    		var newprice=$(btn).parent().next().html();
			if(num>=0){
			$(btn).parent().next().html(newprice-price);
			$(btn).next().val(num)
			sum()
		}
		}
		//删除
		function del(btn){
			var del=$(btn).parent().parent()
			del.remove()
			sum()
		}
		//总和
		function sum() {
	// 获取tbody下的所有行
		var $trs = $("#goods tr");
	// 遍历他们
	var sum = 0;
	for (var i = 0; i < $trs.length; i++) {
    // 获取每一行
    var $tr = $trs.eq(i);
    // 获取该行中第四列的值(金额)
    var mny = $tr.children().eq(3).html();
    sum += parseFloat(mny);
}
// 写入到合计
$("#total").html(sum);
};