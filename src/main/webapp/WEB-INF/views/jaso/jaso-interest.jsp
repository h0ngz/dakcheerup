<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="./jaso-head.jsp" flush="false" />

<!-- begin container -->
<div class="row wrapper">
	<div class="col-md-12">
		<!--  begin body -->
		<div class="row">
			<div class="col-md-8">
				<ul class="nav nav-pills">
					<li class="active"><a href="#trash-file-tab" data-toggle="tab">자기소개서 파일 <span class="m-l-10 badge badge-success">${jasoState.totalFileInInterest }</span></a></li>
					<li><a href="#trash-qna-tab" data-toggle="tab">자기소개서 문항 <span class="m-l-10 badge badge-success">${jasoState.totalQnaInInterest }</span></a></li>
				</ul>
			</div>
			<div class="col-md-4 text-right">
				<button type="button" class="btn btn-danger"><i class="fa fa-trash"></i>&nbsp;전체 비우기</button>
			</div>
		</div>
		<div class="tab-content">
			<div class="tab-pane fade active in" id="trash-file-tab">
			    <!--  자소서 파일 리스트 -->
		       	<div class="email-content">
	                <table class="table table-email">
	                    <thead>
	                        <tr>
	                            <th class="email-select"><a href="#" data-click="email-select-all"><i class="fa fa-square-o fa-fw"></i></a></th>
	                            <th>그룹이름</th>
	                            <th>파일이름</th>
	                            <th>문항 수</th>
	                            <th>생성일자</th>
	                            <th>관심일자</th>
	                           	<th>&nbsp;</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                    	<c:set var="counter" value="0"/>
	                    	<c:forEach items="${fileList}" var="file">
								<c:if test="${file.fileInterestYn eq 'Y'}">
									<c:set var="counter" value="${counter + 1}"/>
									<tr>
			                            <td class="email-select">
			                            	<a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a>
			                            </td>
			                            <td class="email-sender">
			                            	<c:forEach items="${groupList}" var="group">
												<c:if test="${file.groupNo eq group.groupNo}">${ group.groupName }</c:if>
											</c:forEach>
			                            </td>
			                            <td class="email-subject">${file.fileName }</td>
			                            <td class="email-subject">${file.qnaTotalCount}
			                            </td>
			                            <td class="email-date"><fmt:formatDate pattern="yy/MM/dd kk:mm" value="${file.fileRegDate}" /></td>
			                            <td class="email-date"><fmt:formatDate pattern="yy/MM/dd kk:mm" value="${file.fileInterestDate}" /></td>
			                            <td class="width-100">
			                            	<a href="/jaso/open/${file.fileNo}" class="btn btn-xs btn-success m-r-5"><i class="fa fa-file-text"></i>&nbsp;해당 자기소개서로 이동&nbsp;</a>
										</td>
			                        </tr>									
								</c:if>											
							</c:forEach>
							
	    				</tbody>
	                </table>
	                <div class="email-footer clearfix">
	                   <div class="col-md-12 text-right">총 ${counter}개의 자기소개서 파일</div>
                	</div>
		        </div>
		  
		    <!-- 자소서 파일리스트 끝  -->

			</div>
			<div class="tab-pane fade" id="trash-qna-tab">
			    <!--  자소서 문항 리스트 -->
			    <c:set var="counter" value="0"/>
            	<c:forEach items="${interestQnaList}" var="interestQna">
					<c:set var="counter" value="${counter+1}"/>
					<div class="panel-group" id="accordion">
						<div class="panel panel-inverse overflow-hidden">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="accordion-toggle accordion-toggle-styled" data-toggle="collapse" data-parent="#accordion" href="#collapse${interestQna.qnaNo}">
									    <i class="fa fa-plus-circle pull-right"></i> 
										<c:forEach items="${fileList}" var="file">
											<c:if test="${file.fileNo eq interestQna.fileNo}">[${file.fileName}]</c:if>
										</c:forEach> 
										${interestQna.qnaQuestion} 
									</a>
								</h3>
							</div>
							<div id="collapse${interestQna.qnaNo}" class="panel-collapse collapse">
								<div class="panel-body">
									<strong>문항 답변 </strong><br/>
									${trashQna.qnaAnswer}
									<div class="text-right"> <fmt:formatDate pattern="yyyy년 MM월 dd일 kk시 mm분" value="${interestQna.qnaInterestDate}" />에 관심등록 된 문항입니다.</div>	
								</div>
								
								<div class="panel-body text-right">
									<a href="/jaso/open/${interestQna.fileNo}" class="btn btn-sm btn-success m-r-5"><i class="fa fa-heart"></i>&nbsp; 해당 문항으로 이동</a>
								</div>
							</div>
						</div>
					</div> 
				</c:forEach>
				<div class="email-footer clearfix">
            		<div class="col-md-12 text-right">총 ${counter}개의 자기소개서 문항</div>
          		</div>
			</div>
			
			<!--  자소서 문항 끝  -->
		</div>
		<!-- //end body  -->
	</div>
</div>
<!-- //end container -->
   	
	

<jsp:include page="./jaso-footer.jsp" flush="false" />	
