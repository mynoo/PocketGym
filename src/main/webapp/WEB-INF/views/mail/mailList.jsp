<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">
body
{
	margin-top: 35px;
}
.pagingbtn {
    /* position: absolute; */
    float: inherit;
    padding: 6px 12px;
    margin-left: -1px;
    line-height: 1.42857143;
    color: #428bca;
    text-decoration: none;
    background-color: #fff;
    border: 1px solid #ddd;
    display: inline-block;
    /* margin-left: 800px; */
    margin-left: 1000px;
}
.mail-box {
	border-collapse: collapse;
	border-spacing: 0;
	display: table;
	table-layout: fixed;
	width: 100%;
}

.mail-box aside {
	display: table-cell;
	float: none;
	height: 100%;
	padding: 0;
	vertical-align: top;
}

.btn-group>.btn:first-child {
    margin-bottom: 15px;
}

.mail-box .sm-side {
	background: none repeat scroll 0 0 #e5e8ef;
	border-radius: 4px 0 0 4px;
	width: 25%;
}

.mail-box .lg-side {
	background: none repeat scroll 0 0 #fff;
	border-radius: 0 4px 4px 0;
	width: 75%;
}

.mail-box .sm-side .user-head {
	background: none repeat scroll 0 0 #00a8b3;
	border-radius: 4px 0 0;
	color: #fff;
	min-height: 80px;
	padding: 10px;
}

.user-head .inbox-avatar {
	float: left;
	width: 65px;
}

.user-head .inbox-avatar img {
	border-radius: 4px;
}

.user-head .user-name {
	display: inline-block;
	margin: 0 0 0 10px;
}

.user-head .user-name h5 {
	font-size: 14px;
	font-weight: 300;
	margin-bottom: 0;
	margin-top: 15px;
}

.user-head .user-name h5 a {
	color: #fff;
}

.user-head .user-name span a {
	color: #87e2e7;
	font-size: 12px;
}

a.mail-dropdown {
	background: none repeat scroll 0 0 #80d3d9;
	border-radius: 2px;
	color: #01a7b3;
	font-size: 10px;
	margin-top: 20px;
	padding: 3px 5px;
}

.btn-compose {
	background: none repeat scroll 0 0 #ff6c60;
	color: #fff;
	padding: 12px 0;
	text-align: center;
	width: 100%;
}

.btn-compose:hover {
	background: none repeat scroll 0 0 #f5675c;
	color: #fff;
}

ul.inbox-nav {
	display: inline-block;
	margin: 0;
	padding: 0;
	width: 100%;
}

.inbox-divider {
	border-bottom: 1px solid #d5d8df;
}

ul.inbox-nav li {
	display: inline-block;
	line-height: 45px;
	width: 100%;
}

ul.inbox-nav li a {
	color: #6a6a6a;
	display: inline-block;
	line-height: 45px;
	padding: 0 20px;
	width: 100%;
}

ul.inbox-nav li a:hover, ul.inbox-nav li.active a, ul.inbox-nav li a:focus
	{
	background: none repeat scroll 0 0 #d5d7de;
	color: #6a6a6a;
}

ul.inbox-nav li a i {
	color: #6a6a6a;
	font-size: 16px;
	padding-right: 10px;
}

ul.inbox-nav li a span.label {
	margin-top: 13px;
}

ul.labels-info li h4 {
	color: #5c5c5e;
	font-size: 13px;
	padding-left: 15px;
	padding-right: 15px;
	padding-top: 5px;
	text-transform: uppercase;
}

ul.labels-info li {
	margin: 0;
}

ul.labels-info li a {
	border-radius: 0;
	color: #6a6a6a;
}

ul.labels-info li a:hover, ul.labels-info li a:focus {
	background: none repeat scroll 0 0 #d5d7de;
	color: #6a6a6a;
}

ul.labels-info li a i {
	padding-right: 10px;
}

.nav.nav-pills.nav-stacked.labels-info p {
	color: #9d9f9e;
	font-size: 11px;
	margin-bottom: 0;
	padding: 0 22px;
}

.inbox-head {
	background: none repeat scroll 0 0 #41cac0;
	border-radius: 0 4px 0 0;
	color: #fff;
	min-height: 80px;
	padding: 20px;
}

.inbox-head h3 {
	display: inline-block;
	font-weight: 600;
	margin: 0;
	padding-top: 6px;
}

.inbox-head .sr-input {
	border: medium none;
	border-radius: 4px 0 0 4px;
	box-shadow: none;
	color: #8a8a8a;
	float: left;
	height: 40px;
	padding: 0 10px;
}

.inbox-head .sr-btn {
	background: none repeat scroll 0 0 #00a6b2;
	border: medium none;
	border-radius: 0 4px 4px 0;
	color: #fff;
	height: 40px;
	padding: 0 20px;
}

.table-inbox {
	border: 1px solid #d3d3d3;
	margin-bottom: 0;
}

.table-inbox tr td {
	padding: 12px !important;
}

/* .table-inbox tr td:hover {
	cursor: pointer;
} */

.table-inbox tr td .fa-star.inbox-started, .table-inbox tr td .fa-star:hover
	{
	color: #f78a09;
}

.table-inbox tr td .fa-star {
	color: #d5d5d5;
}

.table-inbox tr.unread td {
	background: none repeat scroll 0 0 #f7f7f7;
	font-weight: 600;
}

ul.inbox-pagination {
	float: right;
}

ul.inbox-pagination li {
	float: left;
}

.mail-option {
	display: inline-block;
	margin-bottom: 10px;
	width: 100%;
}

.mail-option .chk-all, .mail-option .btn-group {
	margin-right: 5px;
}

.mail-option .chk-all, .mail-option .btn-group a.btn {
	background: none repeat scroll 0 0 #fcfcfc;
	border: 1px solid #e7e7e7;
	border-radius: 3px !important;
	color: #afafaf;
	display: inline-block;
	padding: 5px 10px;
}

.inbox-pagination a.np-btn {
	background: none repeat scroll 0 0 #fcfcfc;
	border: 1px solid #e7e7e7;
	border-radius: 3px !important;
	color: #afafaf;
	display: inline-block;
	padding: 5px 15px;
}

.mail-option .chk-all input[type="checkbox"] {
	margin-top: 0;
}

.mail-option .btn-group a.all {
	border: medium none;
	padding: 0;
}

.inbox-pagination a.np-btn {
	margin-left: 5px;
}

.inbox-pagination li span {
	display: inline-block;
	margin-right: 5px;
	margin-top: 7px;
}

.fileinput-button {
	background: none repeat scroll 0 0 #eeeeee;
	border: 1px solid #e6e6e6;
}

.inbox-body .modal .modal-body input, .inbox-body .modal .modal-body textarea
	{
	border: 1px solid #e6e6e6;
	box-shadow: none;
}

.btn-send, .btn-send:hover {
	background: none repeat scroll 0 0 #00a8b3;
	color: #fff;
}

.btn-send:hover {
	background: none repeat scroll 0 0 #009da7;
}

.modal-header h4.modal-title {
	font-family: "Open Sans", sans-serif;
	font-weight: 300;
}

.modal-body label {
	font-family: "Open Sans", sans-serif;
	font-weight: 400;
}

.heading-inbox h4 {
	border-bottom: 1px solid #ddd;
	color: #444;
	font-size: 18px;
	margin-top: 20px;
	padding-bottom: 10px;
}

.sender-info {
	margin-bottom: 20px;
}

.sender-info img {
	height: 30px;
	width: 30px;
}

.sender-dropdown {
	background: none repeat scroll 0 0 #eaeaea;
	color: #777;
	font-size: 10px;
	padding: 0 3px;
}

.view-mail a {
	color: #ff6c60;
}

.attachment-mail {
	margin-top: 30px;
}

.attachment-mail ul {
	display: inline-block;
	margin-bottom: 30px;
	width: 100%;
}

.attachment-mail ul li {
	float: left;
	margin-bottom: 10px;
	margin-right: 10px;
	width: 150px;
}

.attachment-mail ul li img {
	width: 100%;
}

.attachment-mail ul li span {
	float: right;
}

.attachment-mail .file-name {
	float: left;
}

.attachment-mail .links {
	display: inline-block;
	width: 100%;
}

.fileinput-button {
	float: left;
	margin-right: 4px;
	overflow: hidden;
	position: relative;
}

.fileinput-button input {
	cursor: pointer;
	direction: ltr;
	font-size: 23px;
	margin: 0;
	opacity: 0;
	position: absolute;
	right: 0;
	top: 0;
	transform: translate(-300px, 0px) scale(4);
}

.fileupload-buttonbar .btn, .fileupload-buttonbar .toggle {
	margin-bottom: 5px;
}

.files .progress {
	width: 200px;
}

.fileupload-processing .fileupload-loading {
	display: block;
}

* html .fileinput-button {
	line-height: 24px;
	margin: 1px -3px 0 0;
}

*+html .fileinput-button {
	margin: 1px 0 0;
	padding: 2px 15px;
}

@media ( max-width : 767px) {
	.files .btn span {
		display: none;
	}
	.files .preview * {
		width: 40px;
	}
	.files .name * {
		display: inline-block;
		width: 80px;
		word-wrap: break-word;
	}
	.files .progress {
		width: 20px;
	}
	.files .delete {
		width: 60px;
	}
}

ul {
	list-style-type: none;
	padding: 0px;
	margin: 0px;
}
</style>
</head>

<body>
	<div class="container">
		<div class="mail-box">
			<aside class="sm-side">
				<div class="user-head">
					<a class="inbox-avatar" href="javascript:;"> <img width="64"
						hieght="60"
						src="http://bootsnipp.com/img/avatars/ebeb306fd7ec11ab68cbcaa34282158bd80361a7.jpg">
					</a>
					<div class="user-name">
						<h5>
							<a href="#">${sessionScope.loginfo.nickname}(${sessionScope.loginfo.id}
								)</a>
						</h5>
						<span><a href="#">${sessionScope.loginfo.email }</a></span>
					</div>
					<a class="mail-dropdown pull-right" href="javascript:;"> <i
						class="fa fa-chevron-down"></i>
					</a>
				</div>
				<div class="inbox-body">
					<a href="<%=request.getContextPath()%>/mailinsert.ml"
						title="Send Mail" class="btn btn-compose"> 메일 쓰기 </a>
					<!-- Modal -->
					<div aria-hidden="true" aria-labelledby="myModalLabel"
						role="dialog" tabindex="-1" id="myModal" class="modal fade"
						style="display: none;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button aria-hidden="true" data-dismiss="modal" class="close"
										type="button">×</button>
									<h4 class="modal-title">Compose</h4>
								</div>
								<div class="modal-body">
									<form role="form" class="form-horizontal">
										<div class="form-group">
											<label class="col-lg-2 control-label">To</label>
											<div class="col-lg-10">
												<input type="text" placeholder="" id="inputEmail1"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Cc / Bcc</label>
											<div class="col-lg-10">
												<input type="text" placeholder="" id="cc"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Subject</label>
											<div class="col-lg-10">
												<input type="text" placeholder="" id="inputPassword1"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Message</label>
											<div class="col-lg-10">
												<textarea rows="10" cols="30" class="form-control" id=""
													name=""></textarea>
											</div>
										</div>

										<div class="form-group">
											<div class="col-lg-offset-2 col-lg-10">
												<span class="btn green fileinput-button"> <i
													class="fa fa-plus fa fa-white"></i> <span>Attachment</span>
													<input type="file" name="files[]" multiple="">
												</span>
												<button class="btn btn-send" type="submit">Send</button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
				<ul class="inbox-nav inbox-divider">
					<li class="active"><a href="<%=contextPath%>/maillist.ml?id=${sessionScope.loginfo.id}""><i class="fa fa-inbox"></i>
							받은메일함
							<!-- 읽지않은 메일 개수 표시 -->
							<c:set var="unread" value="${requestScope.unread}" />
							<c:if test="${unread > 0 }">							
								<span class="label label-danger pull-right">${requestScope.unread}</span>
							</c:if>
							
							</a></li>
					<li><a href="<%=contextPath%>/mailsendlist.ml?id=${sessionScope.loginfo.id}&unread=${requestScope.unread}"><i class="fa fa-envelope-o"></i> 보낸메일함</a>
					</li>
					<li><a href="#"></a>
					</li>
					<li><a href="#"><i class=""></i>
							 <span class="label label-info pull-right"></span></a></li>
					<li><a href="#"><i class=""></i></a></li>
				</ul>
				<ul class="nav nav-pills nav-stacked labels-info inbox-divider">
					<li>
						<h4></h4>
					</li>
					<li><a href="#"> <i class=" fa fa-sign-blank text-danger"></i>
							
					</a></li>
					<li><a href="#"> <i class=" fa fa-sign-blank text-success"></i>
							
					</a></li>
					<li><a href="#"> <i class=" fa fa-sign-blank text-info "></i>
							
					</a></li>
					<li><a href="#"> <i
							class=" fa fa-sign-blank text-warning "></i>
					</a></li>
					<li><a href="#"> <i
							class=" fa fa-sign-blank text-primary "></i> 
					</a></li>
				</ul>
				<ul class="nav nav-pills nav-stacked labels-info ">
					<li>
					</li>
					<li><a href="#"> <i class=""></i>
							<p><br><br><br><br><br><br><br><br><br><br><br></p></a></li>
				</ul>

  						<div class="inbox-body text-center">
                          <div class="btn-group">
                              <a class="btn mini btn-primary" href="<%=contextPath%>/main.ma">
                                  <i class="fa fa-reply-all">메인화면으로</i>
                              </a>
                          </div>
                      </div>
			</aside>
			<aside class="lg-side">
				<div class="inbox-head" align="center">
					<h3>메일함</h3>
				</div>
				<div class="inbox-body">
					<table class="table table-inbox table-hover">
						<tbody>
								<tr class="unread">
									<td class="inbox-small-cells">
									<input type="checkbox"	class="mail-checkbox"></td>
									<td class="view-message dont-show">보낸 사람</td>
									<td class="view-message">제목</td>
									<td class="view-message inbox-small-cells"></td>
									<td class="view-message text-center">받은 날짜</td>
								</tr>
							<c:forEach var="lists" items="${requestScope.lists}" >
								<c:set var="readcheck" value="${lists.readcheck}" />
								<c:choose>
								<c:when test="${readcheck eq 0}">
								<tr class="unread">
									<td class="inbox-small-cells">
									<input type="checkbox"	class="mail-checkbox"></td>
									<td class="view-message dont-show">${lists.sendid}</td>
									<td class="view-message"><a href="#" onclick="location.href='<%=request.getContextPath()%>/maildetail.ml?&mailnum=${lists.mailnum}'"
									 >${lists.subject }</a></td>
									<td class="view-message inbox-small-cells"></td>
									<td class="view-message text-center">${lists.senddate}</td>
								</tr>
								</c:when>
								<c:otherwise>
								<tr class="">
									<td class="inbox-small-cells">
									<input type="checkbox"	class="mail-checkbox"></td>
									<td class="view-message dont-show">${lists.sendid}</td>
									<td class="view-message"><a href="#" onclick="location.href='<%=request.getContextPath()%>/maildetail.ml?&mailnum=${lists.mailnum}'"
									 >${lists.subject }</a></td>
									<td class="view-message inbox-small-cells"></td>
									<td class="view-message text-center">${lists.senddate}</td>
								</tr>
								</c:otherwise>
								</c:choose>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</aside>
		</div>
	</div>
<div class="pagingbtn" align="center">${requestScope.pagingHtml}</div>

















</body>
<html>