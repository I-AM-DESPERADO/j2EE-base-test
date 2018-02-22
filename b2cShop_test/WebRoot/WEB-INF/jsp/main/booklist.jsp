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
    
    <title>My JSP 'booklist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=basePath%>js/prototype-1.6.0.3.js">
	   </script>
		<link href="<%=basePath%>css/book.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/second.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/list.css" rel="stylesheet" type="text/css" />
			<link href="<%=basePath%>css/jqzoom.css" type="text/css"/>
			<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.4.js"></script>
			<script type="text/javascript" src="<%=basePath%>js/jqzoom.js"></script>
			<script type="text/javascript" src="<%=basePath%>myjs/zoom.js"></script>
			<script type="text/javascript" src="<%=basePath%>myjs/buy.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     &nbsp;
   <s:debug></s:debug>
		<!-- 头部开始 -->
		
		<jsp:include  page="/common/top.jsp" />
      


		<!-- 头部结束 -->

		<div style="width: 962px; margin: auto;">
			<a href="#"><img src="<%=basePath%>images/default/book_banner_081203.jpg"
					border="0" /> </a>
		</div>
		
		
		<div class='your_position'>
			您现在的位置:&nbsp;
			<a href='/b2cShop'>当当图书</a> &gt;&gt;
			
			
			
			
			
				<font style='color: #cc3300'><strong>小说</strong></font>	
		</div>
		<div class="book">

			<!--左栏开始-->
			<div id="left" class="book_left">
				<div id="__fenleiliulan">
					<div class=second_l_border2>
						<h2>
							分类浏览
						</h2>
						<ul>
							<li>
								<div>
									
										<div class=second_fenlei>
											&middot;
										</div>
										<div class=second_fenlei3>
											<a href="bookListAction?pid=2">全部()</a>
										</div>
									
									
								</div>
							</li>
							    <s:iterator value="categorys" var="cate"> 
								<!--2级分类开始-->
								<div class="clear"></div>
								<li>
									<div>
										
										
											<div class=second_fenlei>
												&middot;
											</div>
											<div class="second_fenlei">
												<a href="#"><s:property value="#cate.name"/>&nbsp;()</a>
											</div>
										

									</div>
								</li>
								<!--2级分类结束-->
								</s:iterator>
							
							<div class="clear"></div>
							<li>
								<div></div>
							</li>
						</ul>
					</div>
				</div>
				
            <!-- 放幻灯片开始 -->
            <jsp:include page="/common/flash.jsp"></jsp:include>
			 <!-- 放幻灯片结束 -->
			</div>

			<!--左栏结束-->

			
			<!--中栏开始-->
			<div class="book_center">

				<!--图书列表开始-->
				<div id="divRight" class="list_right">

					<div id="book_list" class="list_r_title">
						<div class="list_r_title_text">
							排序方式
						</div>
						
						<select id="sort" onchange='sort(this.value());'  name='select_order' size='1'
							 class='list_r_title_ml'>
							<option value="o1" selected="selected">
								按上架时间 降序
							</option>
							<option value="o2" >
								按上架时间 升序
							</option>
						</select>
						<div id="divTopPageNavi" class="list_r_title_text3">
							
							<!--分页导航开始-->
							
							
								<div class='list_r_title_text3a'>
								<img src='<%=basePath%>images/page_up_gray.gif' />
							</div>
							
							<div class='list_r_title_text3b'>
								第1页/共6页
							</div>
							
							<div class='list_r_title_text3a'>
								<a name=link_page_next href="bookListAction?pid=2&cateid=0&pageNo=2"> <img
										src='<%=basePath%>images/page_down.gif' /> </a>
							</div>
							
							
							

							<!--分页导航结束-->
						</div>
					</div>

					<!--商品条目开始-->
				<div class="list_r_line"></div>
						  <s:iterator value="products" var="product">
							<div class="clear"></div>
							<div class="list_r_list">
								<span class="list_r_list_book"><a name="link_prd_img" href='main/detailAction?pid=<s:property value="#product.id"/>'>
									<img src="<%=basePath%>productImages/<s:property value="#product.productPic"/>" /> </a> </span>
								<h2>
									<a name="link_prd_name" href='main/detailAction?pid=<s:property value="#product.id"/>'><s:property value="#product.productName"/></a>
								</h2>
								<h3>
									顾客评分：100
								</h3>
								<h4 class="list_r_list_h4">
									作 者:
									<a href='detailAction?did=1' name='作者'><s:property value="#product.author"/></a>
								</h4>
								<h4>
									出版社：
									<a href='#' name='出版社'><s:property value="#product.publishing"/> </a>
								</h4>
								<h4>
									出版时间：<s:property value="#product.publishTime"/>
								</h4>
								<h5>
									<s:property value="#product.catalogue"/>
								</h5>
								<div class="clear"></div>
								<h6>
									<span class="del">￥<s:property value="#product.fixedPrice"/></span>
									<span class="red">￥<s:property value="#product.dangPrice"/></span>
									节省：￥<s:property value="#product.fixedPrice-#product.dangPrice"/>
								</h6>
								<span class="list_r_list_button"> </span>
								<span class="list_r_list_button"> <a href="javascript:;" >
						      <img src='<%=basePath%>images/buttom_goumai.gif' onclick="buy(1);"/></a> 
						       </span>
						      <span id="buyinfo1" style="color:green;"></span>
						      <span id="buyinfo_error1" style="color:red;"></span>
						

							</div>
							<div class="clear"></div>
						
							</s:iterator>
						
					<!--商品条目结束-->

					<div class="clear"></div>
					<div id="divBottomPageNavi" class="fanye_bottom">
					</div>

				</div>
				<!--图书列表结束-->

			</div>
			<!--中栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		<jsp:include page="/common/footer.jsp"></jsp:include>
		

		<!--页尾结束 -->
    
  </body>
</html>

