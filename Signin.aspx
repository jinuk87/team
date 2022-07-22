<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Signin.aspx.cs" Inherits="EMS_WEB.Signin" EnableEventValidation="false" %>

<!DOCTYPE html>
<html lang="ko">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PLANET System</title>    
    <link href="Images/Icon/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/content.css">
    <link rel="SHORTCUT ICON" href="Images/Icon/EMS.ico"/> 
    <style> html{background-image:url('')} </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="https://www.google.com/recaptcha/api.js?render=6LfXCQocAAAAAPt2vPhfcRYxF3Hpg8nvvOEPBzUA"></script>
    <script src="_Js/common.js" type='text/javascript'></script>
    <script src="_Js/layer_popup.js"></script>            
    <script src="js/WebService.js" type='text/javascript'></script>   
    <script src="js/Signin.js"></script>       
</head>
<body style="overflow-y:hidden;">
<form id="form1" runat="server" style="height:100%">    
    <div id="<%=chk_browser%>">
        <section id="loginWrapper">
		    <article id="loginContainer" class="clearfix">
			    <p class="login-company-tit mb-none"><img src="images/content/pms_potal.png"  style="display:inline-block; box-shadow: 0px 0px  25px -5px rgba(0,0,0,0.8)" alt="EMS_WEB" /></p>
			    <div class="login-form-box">
				    <h2 class="login-tit mb-none"><img src="images/content/login_tit.png" alt="Login" /></h2>
				    <h2 class="login-tit pc-none"><img src="images/common/planet-logo.png" alt="logo" /></h2>
                    <div class="login-wrap">
				        <ul>					
                            <li>
                                <asp:TextBox ID="txtId" runat="server" onfocus="this.select();" CssClass="login-input" ToolTip="아이디를 입력하세요." ></asp:TextBox>
                                <span class="focus-input" data-placeholder="User ID"></span>
                                <span class="login-icon"><i class="fas fa-user-circle"></i></span>
                            </li>					
                            <li>
                                <asp:TextBox ID="txtPwd" TextMode="Password" runat="server" class="login-input" value="" ToolTip="비밀번호를 입력하세요." AutoComplete="off"></asp:TextBox>
                                <span class="focus-input" data-placeholder="Password"></span>
                                <span class="login-icon"><i class="fas fa-lock"></i></span>
                            </li>
				        </ul>

                        <div style="min-height:15px; margin-top: 0px; margin-bottom: 20px">
                            <p class="saveID" style="text-align:center; color:red;" ID="loginMSG" runat="server"></p>
                        </div>

                        <p class="saveID" style="margin-top: 0px"><asp:CheckBox ID="chkIdSave" runat="server" />아이디 저장</p>
                        <div class="login-btn">
                            <a href="#" runat="server" ID="btnLogin">
                                <p align="center"><font color="white">Login</font></p>
                            </a>                                  
                            <div style="display:none">
                                <asp:LinkButton ID="lbtnSubmit" OnClick="lbtnSubmit_Click" runat="server"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="join-message" id="ck_link" runat="server" style="text-align:center;">
                        <p class="join-member clearfix">
                            <a href="javascript:;" onclick="layerLoad('_Popup/User_ID_Search.aspx'); return false;" style="padding-left:0;"> 
                                <span>아이디 찾기</span>
                            </a>
                            <a href="javascript:;" onclick="layerLoad('_Popup/User_PW_Search.aspx'); return false;"> 
                                <span>비밀번호 찾기</span>
                            </a>
                            <a href="javascript:;" onclick="layerLoad('_Popup/User_Terms_Of.aspx'); return false;"> 
                                <span>회원가입</span>
                            </a>
                        </p>
                        <p class="join-ect clearfix">
                            <a href="http://www.plaspo.co.kr/kr/customer/service.html" target="_blank" class="clearfix">
                                <span> <img src="images/icon/helpdesk.png" alt="helpdesk" style="width:20px;"></span> <span>고객센터(A/S 접수)</span>   
                            </a>
                            <a href="#" onclick='PopupCenter("QNA.html","View","740","900");  return false;' class="clearfix">
                                <span> <img src="images/icon/faq.png" alt="faq" style="width:20px;"> </span><span>FAQ</span>   
                            </a>
                            <a href="Download/PLANET_manual_v1.1.0.pdf" download="PLANET_manual_v1.1.0.pdf"> 
                                <span> <img src="images/icon/download_icon3.png" alt="join" style="width:20px;"></span><span>매뉴얼</span>
                            </a>
                        </p>
                    </div>
                    <span style="position: absolute;bottom: 45px;right: 50px;width: 120px;height:40px; background-image:url('./images/common/logo_b.svg');background-repeat:no-repeat;" class="mb-none"></span>
			    </div>
		    </article>
	    </section>

        <!-- 모달 레이어팝업 -->
		<article class="modal-fixed-pop-wrapper join-pop-wrapper">
			<div class="modal-fixed-pop-inner">
				<div class="modal-loading"><span class="loading"></span></div>
				<div class="modal-inner-box">
					<div class="modal-inner-content">
						<!-- ajax 내용 -->
					</div>
				</div>
			</div>
		</article>
    </div>
</form>
</body>
</html>

