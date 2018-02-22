/* 
 * Tarena 通用JS模板
 * Author: madf
 * Date: 2009/07/24
 */
 
//==============================================================
//工具函数
//==============================================================
//当前页面跳转到指定页面Url。
function ReDirect(Url){
	window.location = Url;
}
//按照Style风格，重新打起：名字为Name，高H，宽W的新页面Url。
function PopWindow(Url,Name,H,W,Style){
	window.open(Url,Name,
				"height=" + H +",width=" + W + ",Stylebars=" + Style +
				",status=no,toolbar=no,menubar=no,location=no,resizable=no");
}
//得到当前日期的月份
function getToday(){
	var thisDate = new Date();
	var months = new makeArray("January", "February", "March",
								"April", "May", "June",
								"July", "August", "September",
								"October", "November", "December");
	return getDay(thisDate) + " <font face=Helvetica>&#149;</font> " +
	months[thisDate.getMonth()] + " " +	thisDate.getDate() + ", " + getFullYear(thisDate);
}
//得到当前日期的星期
function getDay(date){
	var days = new makeArray("星期日", "星期一","星期二", "星期三", "星期四", "星期五","星期六");
	return days[date.getDay()];
}
//得到当前日期的年
function getFullYear(date){
	year = date.getYear();
	if (year < 1000)
		year += 1900;
	return year;
}
//日期内部方法
function makeArray(){
	var args = makeArray.arguments;
	for (var i = 0; i < args.length; i++)
		this[i] = args[i];
	this.length = args.length;
}
//使form中的checkbox被全部选中
function checkall(form){
     for (var i=0;i<document.form.elements.length;i++){
               document.form.elements[i].checked = true;
     }
}
//使form中checkbox被全部取消
function checkno(form){
     for (var i=0;i<document.form.elements.length;i++){
               document.form.elements[i].checked = false;
     }
}

//==============================================================
//输入中验证
//==============================================================
//用于在文本框中只能输入汉字
function checkchinese(str){  
    var   reg   =   /[^\u4E00-\u9FA5]/g;
    if (reg.test(str.value)){
	str.value="";
	alert("请输入汉字！");
	return false;
   }
   return true;
}
//用于在文本框中只能输入数字
function checkchinese(str){  
    var   reg   =   /[^\u4E00-\u9FA5]/g;
    if (reg.test(str.value)){
	str.value="";
	alert("请输入数字！");
	return false;
   }
   return true;
}
 
//==============================================================
//输入后（提交）验证
//==============================================================
//验证是否重复提交,"errMsg"重复提交后返回的错误信息
var submitFlag=false;
function isReSubmit(errMsg) {
        if (submitFlag) {
                if (errMsg == null || errMsg =="")
                        alert("正在提交,请稍候!");
                else
                        alert(errMsg);
                return false;
        }
        submitFlag = true;
        return true;
}
//判断是否选择其中一个选项条目
function isSelectItem(theform,etName,msg){
        cnum=0;
        for(i=0;i<theform.elements.length;i++) {
                et=theform.elements[i];
                if((et.name==etName)&&(et.checked))
                        cnum++;
        }
        if(cnum==0) {
                alert(msg);
                return false;
        }
        return true;
}
//检查表单输入项,如果是""或是NULL返回false
function isEmpty(element1){
        var element2 = eval(element1);
        if( element2 == null || element2.value == ""){
			element1.focus();
			return true;
        }
        return false;
}
//检查表单输入项,如果是""或是NULL弹出"errMsg"提示,并且返回false
function isEmpty(pObj,errMsg){
        var obj = eval(pObj);
        if( obj == null || obj.value == ""){
                if (errMsg == null || errMsg ==""){
                        alert("输入为空!");
                }else{
                        alert(errMsg);
                }
                obj.focus();
                return true;
        }
        return false;
}
//检查表单输入项,如果是""或是NULL或长度大于num弹出"errMsg"提示,并且返回false
function isEmpty(pObj,num,errMsg){
        var obj = eval(pObj);
        if( obj == null || obj.value == ""){
                if (errMsg == null || errMsg ==""){
                        alert("输入为空!");
                }else{
                        alert(errMsg);
                }        
                obj.focus();
                return true;
        }else{
          if(obj.value.length>num){
				alert(errMsg);
				obj.focus();
				return true;
          }
        }
        return false;
}
//检查表单输入项,如果是""或是NULL或长度超出（num1,num2）弹出"errMsg"提示,并且返回false
function isEmpty(pObj,num1,num2,errMsg){
        var obj = eval(pObj);
        if( obj == null || obj.value == ""){
                if (errMsg == null || errMsg ==""){
                        alert("输入为空!");
                } else {
                        alert(errMsg);
                }
                obj.focus();
                return true;
        }else{
          if(obj.value.length<num1||obj.value.length>num2){
				alert(errMsg);
				obj.focus();
				return true;
            }
        }
        return false;
}

//检查表单输入项元素pObj是否为数值,否则弹出"errMsg"提示,并且返回false
function isDecimal(pObj,errMsg){
	var obj = eval(pObj);
	if( obj == null || obj.value == "") {
		return true;
	}
	if (isNaN(obj.value)) {
		if (errMsg == null || errMsg =="")
			alert("输入不为数值!");
		else
			alert(errMsg);
		obj.focus();
		return false;
	}
	return true;
}
//检查表单输入项item是否符合Email规则
function isEmail(item){
	var obj = eval(item);
	etext = obj.value;
	elen=etext.length;
	if (elen<5){
		obj.focus();
		return false;
	}
	i= etext.indexOf("@",0)
	
	if (i==0 || i==-1 || i==elen-1){/*@符号不能没有,也不能在第一个,或最后一个*/
 		obj.focus();
 		return false;
	}else{
		if (etext.indexOf("@",i+1)!=-1){/*不能有2个@符号*/
  			obj.focus();
  			return false;
  		}
  	}
	if (etext.indexOf("..",i+1)!=-1){/*不能有2个.符号连在一起*/
 		obj.focus();
 		return false;
 	}
	i=etext.indexOf(".",0)
	if (i==0 || i==-1 || etext.charAt(elen-1)=='.'){/*.符号不能没有,也不能在第一个,或最后一个*/
 		obj.focus();
 		return false;
 	}
	if ( etext.charAt(0)=='-' ||  etext.charAt(elen-1)=='-'){/*不能以-开头和结尾*/
 		obj.focus();
 		return false;
 	}
	if ( etext.charAt(0)=='_' ||  etext.charAt(elen-1)=='_'){/*不能以_开头和结尾*/
 		obj.focus();
 		return false;
 	}
 	if (etext.indexOf("@.",0)!=-1){/*不能有@.符号连在一起*/
 		obj.focus();
 		return false;
 	}
	for (i=0;i<=elen-1;i++) { 
		aa=etext.charAt(i)
 		if (!((aa=='.') || (aa=='@') || (aa=='-') ||(aa=='_') || (aa>='0' && aa<='9') || (aa>='a' && aa<='z') || (aa>='A' && aa<='Z'))){
   			obj.focus();
   			return false;
   		}
	}
	return true;
}
//检查表单输入项元素element1中,如果含有非法字符char1,返回false
function isInvalid(element1,char1,errMsg){
        var obj = eval(element1);
        if( obj != null && obj.value !=""){
			for (i=0;i<obj.value.length;i++) {
				tempChar= obj.value.substring(i,i+1);
                if(!(char1.indexOf(tempChar,0)==-1)) {
                        alert(errMsg)
                        return false;
                }
			}
        }
    	return true;
}
//检测表单输入项pObj，使是符合“1900-01-01”格式的输入
function isDate(pObj,errMsg){
	var obj = eval(pObj);
	strRef = "0123456789-";
	if( obj == null || obj.value == "") {
		return true;
	}
	if(!checkNoch(pObj,strRef,errMsg))return false;
	for (i=0;i<obj.value.length;i++) {
		tempChar= obj.value.substring(i,i+1);
		if (i==4){
			if(tempChar!="-"){
				alert(errMsg);
				return false;
			}
		} else if (i==7){
			if(tempChar!="-"){
				alert(errMsg);
				return false;
			}
		} 
	}
	return true;
}
//检查表单输入项元素pObj中,只能包含strRef指定字符,且不能为空
function isValid(pObj,strRef,errMsg){
	var obj = eval(pObj);
	if(strRef==null||strRef==""){
        checkNoch(pObj,errMsg)
	}else{
		if( obj == null || obj.value == "") {
			return true;
		}
		for (i=0;i<obj.value.length;i++) {
			tempChar= obj.value.substring(i,i+1);
			if (strRef.indexOf(tempChar,0)==-1) {
				if (errMsg == null || errMsg ==""){
					alert("数据不符合要求,请检查");
				}else{
					alert(errMsg);
				}
				obj.focus();
				return false;
			}
		}
		return true;
	}
}
//检查表单输入项元素pObj是否为数字,否则弹出"errMsg"提示,并且返回false(不能为空)
function isNumber(pObj,errMsg){
	var obj = eval(pObj);
	strRef = "1234567890";
	if( obj == null || obj.value == "") {
		return true;
	}
	for (i=0;i<obj.value.length;i++) {
		tempChar= obj.value.substring(i,i+1);
		if (strRef.indexOf(tempChar,0)==-1) {
			if (errMsg == null || errMsg =="")
				alert("数据不符合要求,请检查");
			else
				alert(errMsg);
			if(obj.type=="text")
				obj.focus();
			return false;
		}
	}
	return true;
}
//检查表单输入项元素pObj是否为数字,但是数字可以为负数,否则弹出"errMsg"提示,并且返回false
function isNegative(pObj,errMsg){
	var obj = eval(pObj);
	strRef = "1234567890-";
	if( obj == null || obj.value == "") {
		return true;
	}
	for (i=0;i<obj.value.length;i++) {
		tempChar= obj.value.substring(i,i+1);
		if (strRef.indexOf(tempChar,0)==-1) {
			if (errMsg == null || errMsg =="")
				alert("数据不符合要求,请检查");
			else
				alert(errMsg);
			if(obj.type=="text")
				obj.focus();
			return false;
		}else{
			if(i>0){
				if(obj.value.substring(i,i+1)=="-"){
					if (errMsg == null || errMsg =="")
						alert("数据不符合要求,请检查");
					else
						alert(errMsg);
					if(obj.type=="text")
					obj.focus();
					return false;
				}
			}
		}
	}
	return true;
}
//检查表单输入项元素pObj是否小于num,否则弹出"errMsg"提示,并且返回false
function isSmallIT(pObj,num){
        var obj = eval(pObj);
        if (obj.value>=num) {
                alert("输入必须小于"+num+"!");
                obj.focus();
                return false;
        }
        return true;
}

//检查表单输入项元素pObj是否大于num,否则弹出"errMsg"提示,并且返回false
function isBigIT(pObj,num){
        var obj = eval(pObj);
        if (obj.value<=num) {
                alert("输入必须大于"+num+"!");
                obj.focus();
                return false;
        }
        return true;
}
//检查表单输入项元素pObj是否小于或等于num,否则弹出"errMsg"提示,并且返回false
function isSmallAndEqualIT(pObj,num){
        var obj = eval(pObj);
        if (obj.value>num) {
                alert("输入必须小于或等于"+num+"!");
                obj.focus();
                return false;
        }
        return true;
}

//检查表单输入项元素pObj是否大于或等于num,否则弹出"errMsg"提示,并且返回false
function isBigAndEqualIT(pObj,num){
        var obj = eval(pObj);
        if (obj.value<num) {
                alert("输入必须大于或等于"+num+"!");
                obj.focus();
                return false;
        }
        return true;
}
//检查导入的文件类型,pObj表单名称,filetype指定文件类型,errMsg消息提示,并且返回false
function isFileType(pObj,filetype,errMsg){
	var obj = eval(pObj);
	if (obj.value!=""){
		if(obj.value.lastIndexOf(".") != -1){
			var filetype1 = obj.value.substring(obj.value.lastIndexOf("."), obj.value.length);
			if (filetype1!=filetype){
			        alert(errMsg);
				return false;
			}
		}
	}
	return true;
}
//检查表单pObj1和表单pObj2输入的密码是否一致，errMsg为不一致时提示消息
function passwordvalidate(pObj1,pObj2,errMsg){
  var obj1 = eval(pObj1);
  var obj2 = eval(pObj2);
  if(obj1.value!=obj2.value){
                      alert(errMsg);
                      obj12.focus();
                      return false;
  }else{
                      return true;
  }
}