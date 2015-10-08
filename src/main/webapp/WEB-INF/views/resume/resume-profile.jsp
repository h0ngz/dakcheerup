<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />


<div data-scrollbar="false" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <form id="profile" name="profile" class="form-horizontal" action="/resume/profile" method="POST">
        <div class="panel panel-inverse" data-height="100%" data-sortable-id="ui-widget-1">
          <div class="panel-heading">
            <div class="panel-heading-btn">
              <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
              <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
              <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
              <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
            </div>
            <h4 class="panel-title">기본인적사항</h4>
          </div>
          <div class="panel-body p-b-0">
            <div class="table-responsive">
              <table class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr>
                  <td class="warning ">이름</td>
                  <td class="text-left"> <strong>${profile.profileName}</strong><input type="hidden" name="profileName" value="${profile.profileName}"/></td>
                  <td class="warning text-center ">한문</td>
                  <td>
                    <input name="profileCname" type="text" class="form-control input-sm" placeholder="洪吉動" maxlength="10" value="${profile.profileCname}" />
                  </td>
                  <td class="warning text-center ">영문</td>
                  <td>
                    <input name=profileEname  type="text" class="form-control input-sm" placeholder="Gil Dong Hong" maxlength="10" value="${profile.profileEname}" />
                  </td>
                </tr>
                <tr>
                  <td scope="row" class="warning ">주민등록번호</td>
                  <td colspan="2">
                    <div class="row">
                      <div class="col-xs-5  p-r-0"><input type="text"  name="profileJuminFront" class="form-control input-sm" maxlength="6" value="${profile.profileJuminFront}"/></div>
                      <div class="col-xs-1  p-0 text-center">-</div>
                      <div class="col-xs-6  p-l-0"><input type="password"  name="profileJuminBack" class="form-control input-sm" maxlength="7" value="${profile.profileJuminBack}" /></div>
                    </div>
                  </td>
                  <td colspan="3" class="text-left">
                    <div class="alert alert-warning fade in m-1">
                      <i class="fa fa-info-circle fa-lg m-r-10 pull-left m-t-2"></i> 개인 정보는 저장목적 이외에 어떠한 용도로도 사용 및 제3자에게 제공되지 않습니다.
                    </div>
                  </td>

                </tr>
                <tr>
                  <td class="warning ">휴대폰</td>
                  <td>
                    <input type="text"  name="profilePhone" class="form-control input-sm masked-input-phone" value="${profile.profilePhone}"/>
                  </td>
                  <td class="warning ">이메일</td>
                  <td>
                    <input type="email"  name="profileEmail" class="form-control input-sm" maxlength="20" value="${profile.profileEmail}"/>
                  </td>
                  <td class="warning ">홈페이지 및 활동 SNS</td>
                  <td>
                    <a data-toggle="collapse" href="#sns-table" class="btn btn-danger btn-block btn-xs">보이기/감추기</a>
                  </td>
                </tr>
                <tr>
                  <td class="warning ">주소</td>
                  <td colspan="5">
                    <input type="text"  name="profileAddr" class="form-control input-sm" maxlength="50" value="${profile.profileAddr}"/>
                  </td>

                </tr>
                <tr>
                  <td class="warning">취미</td>
                  <td>
                    <input type="text"  name="profileHobby" class="form-control input-sm" maxlength="10" value="${profile.profileHobby}"/>
                  </td>
                  <td class="warning">특기</td>
                  <td>
                    <input type="text"  name="profileForte" class="form-control input-sm" maxlength="10" value="${profile.profileForte}"/>
                  </td>
                  <td class="warning">종교</td>
                  <td>                   
                    <select class="form-control input-sm" name="profileReligion">                                                            	
                      <option value="NIL" <c:if test="${profile.profileReligion eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="기독교" <c:if test="${profile.profileReligion eq '기독교'}">selected</c:if>>기독교</option>
                      <option value="불교" <c:if test="${profile.profileReligion eq '불교'}">selected</c:if>>불교</option>
                      <option value="천주교" <c:if test="${profile.profileReligion eq '천주교'}">selected</c:if>>천주교</option>
                      <option value="기타 " <c:if test="${profile.profileReligion eq '기타'}">selected</c:if>>기타 종교</option>                      
                    </select>
                  </td>
                  
                </tr>

                <tr>
                  <td class="warning ">혼인여부</td>
                  <td>
                    <select class="form-control input-sm" name="profileMarriage" >
                      <option value="NIL" <c:if test="${profile.profileMarriage eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="미혼" <c:if test="${profile.profileMarriage eq '미혼'}">selected</c:if>>미혼</option>
                      <option value="혼인" <c:if test="${profile.profileMarriage eq '혼인'}">selected</c:if>>혼인</option>
                    </select>
                  </td>
                  <td class="warning ">보훈여부</td>
                  <td>
                    <select class="form-control input-sm" name="profileVeterans" >
                      <option value="NIL" <c:if test="${profile.profileVeterans eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="대상" <c:if test="${profile.profileVeterans eq '대상'}">selected</c:if>>대상</option>
                      <option value="비대상" <c:if test="${profile.profileVeterans eq '비대상'}">selected</c:if>>비대상</option>
                    </select>
                  </td>
                  <td class="warning ">장애여부</td>
                  <td>
                    <select class="form-control input-sm" name="profileDisability" >
                      <option value="NIL" <c:if test="${profile.profileDisability eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="장애" <c:if test="${profile.profileDisability eq '장애'}">selected</c:if>>장애</option>
                      <option value="비장애" <c:if test="${profile.profileDisability eq '비장애'}">selected</c:if>>비장애</option>
                    </select>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>
            <div id="sns-table" class="table-responsive collapse">
              <table id="resume-profile-table" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr>
                  <td colspan="2" class="warning">개인웹사이트</td>
                  <td colspan="2" class="warning">네이버블로그</td>
                  <td colspan="2" class="warning">티스토리</td>
                </tr>
                <tr>
                  <td colspan="2"><input type="text"  name="profileWebsite" class="form-control input-sm" placeholder="http://" value="${profile.profileWebsite}"/></td>
                  <td colspan="2"><input type="text"  name="profileNaverBlog" class="form-control input-sm" placeholder="http://" value="${profile.profileNaverBlog}"/></td>
                  <td colspan="2"><input type="text"  name="profileTistory" class="form-control input-sm"  placeholder="http://" value="${profile.profileTistory}"/></td>
                </tr>
                <tr>
                  <td class="warning">페이스북</td>
                  <td class="warning">트위터</td>
                  <td class="warning">인스타그램</td>
                  <td class="warning">텀블러</td>
                  <td class="warning">핀터레스트</td>
                  <td class="warning">유투브</td>
                </tr>
                <tr>
                  <td><input type="text"  name="profileFacebook" class="form-control input-sm" placeholder="@아이디" value="${profile.profileFacebook}"/></td>
                  <td><input type="text"  name="profileTwitter" class="form-control input-sm" placeholder="@아이디" value="${profile.profileTwitter}"/></td>
                  <td><input type="text"  name="profileInstagram" class="form-control input-sm" placeholder="@아이디" value="${profile.profileInstagram}"/></td>
                  <td><input type="text"  name="profileTumblr" class="form-control input-sm" placeholder="@아이디" value="${profile.profileTumblr}"/></td>
                  <td><input type="text"  name="profilePinterest" class="form-control input-sm" placeholder="@아이디" value="${profile.profilePinterest}"/></td>
                  <td><input type="text"  name="profileYoutube" class="form-control input-sm" placeholder="@아이디" value="${profile.profileYoutube}"/></td>
                </tr>
                </tbody>
              </table>
            </div>
            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onclick="document.getElementById('profile').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </div>
        </div>
      </form>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />