/*导入头部和尾部*/
$(document).ready(function(){
//    $(".footerpage").load("footer.html");
//    $(".headerpage").load("header.html");
    var fsizes = ['16px', '18px'];
	var a = 0;
	setInterval(changeFontsize, 500);
	function changeFontsize() {
		//console.log(fsizes[a]);
		$("#noLogin a").css("font-size", fsizes[a]);
		if (a == fsizes.length - 1) {
			a = 0;
		} else {
			a++;
		}
	}

	$('#search-btn .glyphicon').hover(function () {
		$(this).css('top', '-1px')
	}, function () {
		$(this).css('top', '1px')
	})
	// var t=$('.container')
	//  console.log(t)

	// $('.login-img').hover(function(){
	//     $(this).siblings('login-item').stop().fadeToggle();
	// })
	// $('.login-item').mouseout(function(){
	//     $('.login-item').slideUp()
	// })
	$('.login-box').hover(function () {
		$(this).children('div').stop().slideToggle(300);
	})

	// var t=$('#navbar ul li a')
	// console.log(t)
	//注册
	$(document).on("click","#registerBtn",function(){
		//获取省份名称
		$.ajax({
			url:"/province/queryAll",
			type:"POST",
			success:function(result){
					if(result.code==100){
						$.each(result.map.province,function(){
							var optionEle=$("<option></option>").append(this.provinceName).attr("value",this.provinceId);
							optionEle.appendTo("#province_register_select");
						});
					}
					else{
						var msg=result.msg;
					}
			}
		});
	});
		//表单重置
		$("#registerBtn").click(function() {
			$("#registerModal form")[0].reset();
		});
		 //发送验证码
		$(document).on("click","#code_register_btn",function(){
			var email = $("#email_register_input").val();
			if(email!=null){
				$.ajax({
					url: "/getCheckCode",
					data: "email=" + email,
					type: "POST",
					success: function(result) {
						if (result.code == 100) {
							show_validate_msg("#code_register_btn","success",result.map.msg);
						} else if (result.code == 200) {
							show_validate_msg("#code_register_btn","error",result.map.msg);
						}
					}
				});
			}
			else{
				show_validate_msg("#code_register_btn","error",result.map.msg);
			}
		}); 

		function show_validate_msg(element,status,msg) {
			//清除当前元素的校验状态
			$(element).parent().removeClass("has-success has-error");
			$(element).next('span').text("");
			
			if ("success"==status) {
				$(element).parent().addClass("has-success");
				$(element).next("span").text(msg);
			} else if ("error"==status) {
				$(element).parent().addClass("has-error");
				$(element).next("span").text(msg);
			}
		}
		//校验用户名是否可用
		$("#userName_register_input").change(function(){			
			var userName=this.value;
			$.ajax({
				url:"user/check",
				data:"username="+userName,
				type:"POST",
				success:function(result){
					if (result.code==100) {
						show_validate_msg("#userName_register_input","success",result.map.msg);
						$("#register_btn").attr("ajax-val","success");
					} else {
						show_validate_msg("#userName_register_input","error",result.map.msg);
						$("#register_btn").attr("ajax-val","error");
					}
				}
			});
			
		});
		//校验邮箱
		$("#email_register_input").change(function(){	
			var email=$("#email_register_input").val();
			var regEmail=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			if(!regEmail.test(email)){
				show_validate_msg("#email_register_input","error","邮箱格式错误!");
			}else{
				show_validate_msg("#email_register_input","success","");
			}
		});
		//校验密码是否一致
		$("#password1_register_input").change(function(){
			var password1=this.value;
			var password=$("#password_register_input").val();
			if(password!==password1){
				show_validate_msg("#password_register_input","error","前后密码输入不一致!");
				show_validate_msg("#password1_register_input","error","前后密码输入不一致!");
			}
			else{
				show_validate_msg("#password_register_input","success","");
				show_validate_msg("#password1_register_input","success","");
			}
		});

		/* //校验方法，表单数据
		function validate_register_form(){
			//拿到要校验的数据
			//校验用户名
			var userName=$("#userName_register_input").val();
			var regName=/(^[\u4E00-\u9FA5]{2,5}$)|(^[a-z0-9_-]{4,16}$)/;
			if(!regName.test(userName)){
				//alert("用户名必须满足2~5个汉字或6~16个字符");
				show_validate_msg("#userName_register_input","error","用户名必须是2~5个汉字或4~16个字符");
				return false;
			}else{
				show_validate_msg("#userName_register_input","success","");
			}
			
			//校验邮箱
			var email=$("#email_register_input").val();
			var regEmail= /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
			if(!regEamil.test(email)){
				show_validate_msg("#email_register_input","error","邮箱格式错误!");
				return false;
			}else{
				show_validate_msg("#email_register_input","success","");
			}
			return true;
		} */
		/*//点击注册,校验数据
		$("#register_btn").click(function(){
			//模态框中的数据提交到服务器
			//先对数据进行校验
			 if(!validate_register_form()){
				return false;
			}  
			
			 //判断ajax用户名校验是否成功
			if ($(this).attr("ajax-val")=="error") {
				return false;
			} 
			//发送ajax请求，保存
			//序列化表单serialize()
			$.ajax({
				url:"/user/regist",
				type:"POST",
				data:$("#registerModal form").serialize(),
				success:function(result){
					if (result.code==100) {
					//保存成功后，关闭模态框,跳转到主页
						$("#registerModal").modal('hide');
					}
					else {
						//显示失败信息
						//有哪个字段的错误信息就显示哪个信息
						if(undefined !=result.map.errorFields.username){
							//显示用户名错误信息
							show_validate_msg("#username_register_input","error",result.map.errorFields.username);
						}
						if(undefined !=result.map.errorFields.password){
							//显示密码错误信息
							show_validate_msg("#password_register_input","error",result.map.errorFields.password);
						}
					}
						
				}
			});
			
			
		});*/
		//点击注册,发送数据
		$("#register_btn").click(function() {
			alert($("#registerModal form").serialize());
			$.ajax({
				url: "user/regist",
				type: "POST",
				data: $("#registerModal form").serialize(),
				success: function(result) {
					if (result.code == 100) {
						$("#registerModal").modal('hide');
					} else if (result.code == 200) {
						alert("注册失败！");
					}
				}
			});
		});
		
		//登录
		//校验用户名是否可用
		$("#userName_login_input").change(function(){
			var username=this.value;
			var regName=/(^[\u4E00-\u9FA5]{2,5}$)|(^[a-z0-9_-]{4,16}$)/;
			if(!regName.test(username)){
				//alert("用户名必须满足2~5个汉字或6~16个字符");
				show_validate_msg("#userName_register_input","error","用户名必须是2~5个汉字或4~16个字符");
				return false;
			}else{
				show_validate_msg("#userName_register_input","success","");
			}
			
		});
		//点击登录,校验数据
		$("#login_btn").click(function(){
			$.ajax({
				url:"user/login",
				type:"GET",
				data:$("#loginModal form").serialize(),
				success:function(result){
					if (result.code==100) {
						//保存成功后，关闭模态框，来到最后一页显示新增信息
						$("#loginModal").modal('hide');
						$('#noLogin').css('display','none');
						$('#logined').css('display','block');
					}
					else if(result.code==200){
						alert("用户名或密码错误!");
						}
					}
			});	
		});
		
		 // 搜索
        $('#search-btn').click(function () {
            var val = $('#seaInput').val();
            if (val.length > 0) {
             window.location.href = encodeURI('search.html?id='+val);
                
            } else {
                alert('请输入搜索的内容！')
            }
            $('#seaInput').val('')
              
            })
            
            //回车搜索
             $('#seaInput').keydown(function (event) {
	            if (event.keyCode == 13) {
	            var val = $('#seaInput').val();
           		if (val.length > 0) {
               		window.location.href = encodeURI('search.html?id='+val);
	            } else {
	                alert('请输入搜索的内容！')
	            }
           		$('#seaInput').val('')
	           }
	        });
})

