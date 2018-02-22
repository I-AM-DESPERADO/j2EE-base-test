<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cart_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="<%=basePath%>css/book.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/second.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/shopping_vehicle.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.4.js"></script>
		<script type="text/javascript" src="<%=basePath%>myjs/modifynum.js"></script>
  </head>
  
  <body>&nbsp; 
        <br />
		<br />
		<s:debug></s:debug>
		
		<div class="my_shopping">
			<img class="pic_shop" src="<%=basePath%>images/pic_myshopping.gif" />
		</div>
		<div id="div_choice" class="choice_merch">
			<h2 id="cart_tips">
				您已选购以下商品
			</h2>
			<div class="choice_bord">
				<table class="tabl_buy" id="tbCartItemsNormal">
					<tr class="tabl_buy_title">
						<td class="buy_td_6" >
							<span>图片</span>
						</td>
						<td>
							<span class="span_w1">商品名</span>
						</td>
						<td class="buy_td_5">
							<span class="span_w2">市场价</span>
						</td>
						<td class="buy_td_4">
							<span class="span_w3">当当价</span>
						</td>
						<td class="buy_td_1">
							<span class="span_w2">数量</span>
						</td>
						<td class="buy_td_2">
							<span>变更数量</span>
						</td>
						<td class="buy_td_1">
							<span>删除</span>
						</td>
					</tr>
					<tr class='objhide' over="no">
						<td colspan="8">
							&nbsp;
						</td>
					</tr>
					
                      <!-- 购物列表开始 -->
                       <s:if test="#session.cart.carts.size()>0">
                       		<s:iterator value="#session.cart.carts" var="item" >
                       
                      
                      
						<tr class='td_no_bord'>
							<td class="buy_td_6">
								<span>
								<a href="<%=basePath%>main/detail.html">
									<img style="width:40px;height:50px;" src="<%=basePath%>productImages/<s:property value="#item.book.productPic"/>"/></a> 
								</span>
							</td>
							<td class="span_w1">
								<a href="<%=basePath%>main/detail.html"><s:property value="#item.book.productName"/></a>
							</td>
							<td class="buy_td_5">
								<span class="c_gray">￥<s:property value="#item.book.fixedPrice"/></span>
							</td>
							<td class="buy_td_4">
								&nbsp;&nbsp;
								<span>￥<s:property value="#item.book.dangPrice"/></span>
							</td>
							<td class="buy_td_1">
								&nbsp;&nbsp;<s:property value="#item.qty"/>
							</td>

							<td >
								<input class="del_num" type="text" size="3" maxlength="4" id="num_14"/>
								<a href="javascript:;" onclick="#">变更</a>
							</td>
							<td>
								<a href="deleteBookAction?id=14" onclick=" return confirm('确定删除?')">删除</a>
							</td>
						</tr>
					 </s:iterator>
                       
                      </s:if>
                      <s:else>
                      	<tr>
                      		<td colspan="7">暂时为空</td>
                      	</tr>
                      
                      </s:else>
                       
						 
					<!-- 购物列表结束 -->
				</table>
				
				
				<div class="choice_balance">
					<div class="select_merch">
						<a href="<%=basePath%>main/main.html"> 继续挑选商品 &gt;&gt;</a>
					</div>
					<div class="total_balance">
						<div class="save_total">
							您共节省：
							<span class="c_red"> ￥<span id="total_economy">40.0</span>
							</span>
							<span id='total_vip_economy' class='objhide'> ( 其中享有优惠： <span
								class="c_red"> ￥<span id='span_vip_economy'>0.00</span> </span>
								) </span>
							<span style="font-size: 14px">|</span>
							<span class="t_add">商品金额总计：</span>
							<span class="c_red_b"> ￥<span id='total_account'>360.0</span>
							</span>
						</div>
						<div id="balance" class="balance">
							<a name='checkout' href='<%=basePath%>order/order_info.html' > 
								<img src="<%=basePath%>images/butt_balance.gif" alt="结算" border="0" title="结算" />
							</a>
						</div>
					</div>
				</div>
				
			</div>
		</div>

		<!-- 用户删除恢复区 -->


		<div id="divCartItemsRemoved" class="del_merch">
			<div class="del_title">
				您已删除以下商品，如果想重新购买，请点击“恢复”
				<div style="float: right; margin-right: 10px;">
				[<a href="#">清空</a>]
				</div>
			</div>
				<div class="choice_bord">
				<table class="tabl_buy" id="tbCartItemsNormal">
					<tr class="tabl_buy_title">
						<td class="buy_td_6">
							<span>图片</span>
						</td>
						<td>
							<span class="span_w1">商品名</span>
						</td>
						<td class="buy_td_5">
							<span class="span_w2">市场价</span>
						</td>
						<td class="buy_td_4">
							<span class="span_w3">当当价</span>
						</td>
						<td class="buy_td_1">
							<span class="span_w2">数量</span>
						</td>
						<td class="buy_td_1">
							<span>恢复</span>
						</td>
					</tr>
					<tr class='objhide' over="no">
						<td colspan="8">
							&nbsp;
						</td>
					</tr>
					
                      <!-- 购物列表开始 -->
                      
						<tr class='td_no_bord'>
							<td class="buy_td_6">
								<span>
								<a href="<%=basePath%>main/detail.html">
									<img style="width:40px;height:50px;" src="<%=basePath%>productImages/14.jpg"/></a> 
								</span>
							</td>
							<td class="span_w1">
								<a href="<%=basePath%>main/detail.html">傲慢与偏见</a>
							</td>
							<td class="buy_td_5">
								<span class="c_gray">￥200.0</span>
							</td>
							<td class="buy_td_4">
								&nbsp;&nbsp;
								<span>￥180.0</span>
							</td>
							<td class="buy_td_1">
								&nbsp;&nbsp;1
							</td>
							<td>
								<a href="#">恢复</a>
							</td>
						</tr>
						 
					<!-- 购物列表结束 -->
				</table>
			</div>
		</div>
		<br />
		<br />
		<br />
		<br />
		<!--页尾开始 -->
		
				<jsp:include  page="/common/footer.jsp" />

		<!--页尾结束 -->
    
  </body>
</html>
