/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.34
 * Generated at: 2019-01-22 07:05:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.tog;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class togglestartup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/increpas/spring/example/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ch19_project_mavenwebsite/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1544682339013L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" \r\n");
      out.write(" \t  content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<title>Toggle Start-up Company</title>\r\n");
      out.write("<link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.5.0/css/all.css\">\r\n");
      out.write("<style>\r\n");
      out.write("\tbody {\r\n");
      out.write("\t  font-family: \"Lato\", sans-serif;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.sidebar {\r\n");
      out.write("\t  height: 100%;\r\n");
      out.write("\t  width: 0;\r\n");
      out.write("\t  position: fixed;\r\n");
      out.write("\t  z-index: 1;\r\n");
      out.write("\t  top: 0;\r\n");
      out.write("\t  left: 0;\r\n");
      out.write("\t  background-color: #111;\r\n");
      out.write("\t  overflow-x: hidden;\r\n");
      out.write("\t  transition: 0.5s;\r\n");
      out.write("\t  padding-top: 60px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.sidebar a {\r\n");
      out.write("\t  padding: 8px 8px 8px 32px;\r\n");
      out.write("\t  text-decoration: none;\r\n");
      out.write("\t  font-size: 25px;\r\n");
      out.write("\t  color: #818181;\r\n");
      out.write("\t  display: block;\r\n");
      out.write("\t  transition: 0.3s;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.sidebar a:hover {\r\n");
      out.write("\t  color: #f1f1f1;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.sidebar .closebtn {\r\n");
      out.write("\t  position: absolute;\r\n");
      out.write("\t  top: 0;\r\n");
      out.write("\t  right: 25px;\r\n");
      out.write("\t  font-size: 36px;\r\n");
      out.write("\t  margin-left: 50px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.openbtn {\r\n");
      out.write("\t  font-size: 20px;\r\n");
      out.write("\t  cursor: pointer;\r\n");
      out.write("\t  background-color: #111;\r\n");
      out.write("\t  color: white;\r\n");
      out.write("\t  padding: 10px 15px;\r\n");
      out.write("\t  border: none;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t.openbtn:hover {\r\n");
      out.write("\t  background-color: #444;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t#main {\r\n");
      out.write("\t  transition: margin-left .5s;\r\n");
      out.write("\t  padding: 16px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */\r\n");
      out.write("\t@media screen and (max-height: 450px) {\r\n");
      out.write("\t  .sidebar {padding-top: 15px;}\r\n");
      out.write("\t  .sidebar a {font-size: 18px;}\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* Slideshow container */\r\n");
      out.write("\t.slideshow-container {\r\n");
      out.write("\t  position: relative;\r\n");
      out.write("\t  background: #f1f1f1f1;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* Slides */\r\n");
      out.write("\t.mySlides {\r\n");
      out.write("\t  display: none;\r\n");
      out.write("\t  padding: 60px;\r\n");
      out.write("\t  text-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* Next & previous buttons */\r\n");
      out.write("\t.prev, .next {\r\n");
      out.write("\t  cursor: pointer;\r\n");
      out.write("\t  position: absolute;\r\n");
      out.write("\t  top: 50%;\r\n");
      out.write("\t  width: auto;\r\n");
      out.write("\t  margin-top: -30px;\r\n");
      out.write("\t  padding: 16px;\r\n");
      out.write("\t  color: #888;\r\n");
      out.write("\t  font-weight: bold;\r\n");
      out.write("\t  font-size: 20px;\r\n");
      out.write("\t  border-radius: 0 3px 3px 0;\r\n");
      out.write("\t  user-select: none;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* Position the \"next button\" to the right */\r\n");
      out.write("\t.next {\r\n");
      out.write("\t  position: absolute;\r\n");
      out.write("\t  right: 0;\r\n");
      out.write("\t  border-radius: 3px 0 0 3px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* On hover, add a black background color with a little bit see-through */\r\n");
      out.write("\t.prev:hover, .next:hover {\r\n");
      out.write("\t  background-color: rgba(0,0,0,0.8);\r\n");
      out.write("\t  color: white;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* The dot/bullet/indicator container */\r\n");
      out.write("\t.dot-container {\r\n");
      out.write("\t    text-align: center;\r\n");
      out.write("\t    padding: 20px;\r\n");
      out.write("\t    background: #ddd;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* The dots/bullets/indicators */\r\n");
      out.write("\t.dot {\r\n");
      out.write("\t  cursor: pointer;\r\n");
      out.write("\t  height: 15px;\r\n");
      out.write("\t  width: 15px;\r\n");
      out.write("\t  margin: 0 2px;\r\n");
      out.write("\t  background-color: #bbb;\r\n");
      out.write("\t  border-radius: 50%;\r\n");
      out.write("\t  display: inline-block;\r\n");
      out.write("\t  transition: background-color 0.6s ease;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* Add a background color to the active dot/circle */\r\n");
      out.write("\t.active, .dot:hover {\r\n");
      out.write("\t  background-color: #717171;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* Add an italic font style to all quotes */\r\n");
      out.write("\tq {font-style: italic;}\r\n");
      out.write("\t\r\n");
      out.write("\t/* Add a blue color to the author */\r\n");
      out.write("\t.author {color: cornflowerblue;}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t.footer {\r\n");
      out.write("\t   position: fixed;\r\n");
      out.write("\t   left: 0;\r\n");
      out.write("\t   bottom: 0;\r\n");
      out.write("\t   padding: 15px;\r\n");
      out.write("\t   width: 100%;\r\n");
      out.write("\t   background-color: #43A047;\r\n");
      out.write("\t   color: white;\r\n");
      out.write("\t   text-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"mySidebar\" class=\"sidebar\">\r\n");
      out.write("\t  <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\">×</a>\r\n");
      out.write("\t  <a href=\"/main\">Maven Company Main Site</a>\r\n");
      out.write("\t  <a href=\"/tog/togglestartup\">Toggle Start-up</a>\r\n");
      out.write("\t  <a href=\"/tog/togglestartuptimes\">Toggle Start-up Times</a>\r\n");
      out.write("\t  <a href=\"/tog/toggledatacenter\">Toggle Data Center</a>\r\n");
      out.write("\t  <a href=\"/tog/togglecsv\">Toggle CSV</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"main\">\r\n");
      out.write("\t  <button class=\"openbtn\" onclick=\"openNav()\">☰ Toggle Sidebar</button>  \r\n");
      out.write("\t  <h2 class=\"text-center\" style=\"font-size:xx-large;color:blue;\"><b>Toggle Start-up Company</b></h2>\r\n");
      out.write("\t  <p class=\"text-center\"><mark>Maven Company</mark> Gruop <b>Toggle Start-Up Company</b> Site.</p>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"row\" >\r\n");
      out.write("\t\t<div class=\"col-xs-12\">\r\n");
      out.write("\t\t\t<div class=\"col-xs-2\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-xs-8\">\r\n");
      out.write("\t\t\t\t<h2 style=\"text-align:center;color:green;\"><b>Toggle Start-up 소개</b></h2>\r\n");
      out.write("\t\t\t\t<p class=\"text-primary\" style=\"text-align:center;font-size:large;\">\r\n");
      out.write("\t\t\t\t1. 토글 스타트업 회사는 Maven Company에 부속된 스타트업 회사로서\r\n");
      out.write("\t\t\t\tMaven Company에서 직접 채용관리를 합니다. 우리 스타트업회사는\r\n");
      out.write("\t\t\t\t전산서버관리 및 경비보안관리 그리고 AI인공지능 모듈개발하는 기업입니다. </p>\r\n");
      out.write("\t\t\t\t<p class=\"text-secondary\" style=\"text-align:center;font-size:large;\">\r\n");
      out.write("\t\t\t\t2. 토글 스타트업에서는 채용할때 Maven Company에 있는 토글 스타트업 인사부서에서\r\n");
      out.write("\t\t\t\t직접 직원채용을 하고 채용순서는 서류전형 <i class='fas fa-arrow-right' style='font-size:20px'></i>\r\n");
      out.write("\t\t\t\t1차 면접 <i class='fas fa-arrow-right' style='font-size:20px'></i>\r\n");
      out.write("\t\t\t\t2차 면접(합숙 면접(2박3일)) <i class='fas fa-arrow-right' style='font-size:20px'></i>\r\n");
      out.write("\t\t\t\t건강검진 <i class='fas fa-arrow-right' style='font-size:20px'></i>\r\n");
      out.write("\t\t\t\t합격/불합격 통보로 신입사원/경력사원을 채용합니다.</p>\r\n");
      out.write("\t\t\t\t<p class=\"text-warning\" style=\"text-align:center;font-size:large;\">\r\n");
      out.write("\t\t\t\t3. 토글 스타트업 대표이사는 Maven Company TV방송국장이자 메이크업아티스트 실장으로 있는\r\n");
      out.write("\t\t\t\t권소정 여자분이 맡고 있습니다. 토글 스타트업 직원 수는 869명으로서 869명이 협업하면서 근무하고 있습니다.</p>\r\n");
      out.write("\t\t\t\t<p class=\"text-danger\" style=\"text-align:center;font-size:large;\">\r\n");
      out.write("\t\t\t\t4. <i class='fas fa-exclamation-triangle' style='font-size:24px;color:red'></i> 회사내규 및 예절\r\n");
      out.write("\t\t\t\t<h3 class=\"text-secondary\" style=\"text-align:center;font-size:x-large;\">직장예절</h3>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t1. 인사 예절\r\n");
      out.write("\t\t\t\t\t조직 내에서 특히, 상급자(원장 등)를 만났을 때, 인사를 잘 하는 것은 여러 가지 평가에서도 중요한 요소\r\n");
      out.write("\t\t\t\t\t로 반영되곤 한다. 하지만, 이런 인사도 잘 못하면 독이 되는데, 특히, 영혼이 없는 인사는 상대를 불쾌하기\r\n");
      out.write("\t\t\t\t\t만들기 쉽니다. 상급자에게 인사를 할 때는 상대방의 눈을 보며 “안녕하세요?” 라고 말한 후, 머리를 살짝\r\n");
      out.write("\t\t\t\t\t숙여 목례로 마무리 하면 된다. 후배 또는 동기에게는 “안녕하세요?”라고 말로만으로 해도 무방하다. 헤어\r\n");
      out.write("\t\t\t\t\t질 때는 “그럼 가보겠습니다.”, “수고하세요.”라고 표현할 수 있는데 여기서 “수고하세요.”라는 표현은 절대\r\n");
      out.write("\t\t\t\t\t상급자에게는 사용해서는 안 된다. “수고”라는 말은 상급자가 하급자에게만 사용되는 말이기 때문이다.\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t2. 전화 예절\r\n");
      out.write("\t\t\t\t\t전화와 관련된 예절을 받을 때와 걸 때로 나눠서 보면,\r\n");
      out.write("\t\t\t\t\t받을 때는 “예, 감사합니다. 누구누구입니다.”가 기본이다. 특히 상대방이 누구인지 알고 전화를 받을 때,\r\n");
      out.write("\t\t\t\t\t상급자인 경우는 “예, 감사합니다. 누구누구입니다.”로 후배 또는 동기인 경우는 “누구누구입니다.”로 해도\r\n");
      out.write("\t\t\t\t\t무방하다. 하지만, 늘 “예, 감사합니다. 누구누구입니다.”로 하는 것이 제일 좋은 방법이다. 전화를 받을 때\r\n");
      out.write("\t\t\t\t\t“예~.”만하고 전화를 받는 경우가 있는데, 이는 잘 못된 것이다.전화를 걸 때는 기본적으로 “예, 안녕하세요? 실례지만…….”으로 시작하면 된다.\r\n");
      out.write("\t\t\t\t\t그리고 마지막으로 통화가 완료되었을 때, “예, 감사합니다.”로 마무리 하면 된다.\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t3. 회의 예절\r\n");
      out.write("\t\t\t\t\t회의는 여러 사람들이 모여 이루어지는 경우가 대부분이다. 각자의 역할이 있기 마련인데, 회의 때는 각자\r\n");
      out.write("\t\t\t\t\t의 역할에 맞은 문서와 자료를 미리 잘 작성해서 준비하는 것이 중요하다. 그리고 항상 경청하고, 메모하는\r\n");
      out.write("\t\t\t\t\t습관과 회의에 적극적으로 참여하여야 한다. 회의 참석자는 시작하기 5분전에는 회의 장소에 모여야 하며,\r\n");
      out.write("\t\t\t\t\t준비된 문서등도 5분전까지는 배포되어야 한다. 대부분 회의 장소에 모일 때, 제일 상급자가 마지막에 참석\r\n");
      out.write("\t\t\t\t\t하는 경우가 많은데, 이럴 때 미리 참석한 사람들은 상급자에게 인사를 하도록 한다. “반갑습니다.” 또는\r\n");
      out.write("\t\t\t\t\t“안녕하세요.” 이 정도의 인사면 충분하며, 대표(원장)등이 참석할 때, 때로는 전원 기립하기도 한다.\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t4. 보고 예절\r\n");
      out.write("\t\t\t\t\t조직(학원. 기관, 회사 등)생활을 하면서 무수히 많은 보고를 하게 된다. 보고 문서를 작성하고 이를 설명\r\n");
      out.write("\t\t\t\t\t해야 할 때가 많은데, 보고는 보고 받는 사람의 입장에서 작성하고 보고해야 한다. 그런데, 많은 부분, 보고\r\n");
      out.write("\t\t\t\t\t하는 사람의 입장에서 이루어지는 경우가 많은데 이는 큰 잘못이다. 그리고 보고는, 보고 받는 사람의 상황\r\n");
      out.write("\t\t\t\t\t을 파악하고 보고해야 한다. 특히, 보고할 때는 두괄식으로 하는 것이 일반적으로 좋은 방법이며, 보고 받는\r\n");
      out.write("\t\t\t\t\t사람이 이해할 수 있도록 보고해야 한다. 보고는 타이밍과 스킬의 결정체라고 할 수 있다.\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t5. 호칭 예절\r\n");
      out.write("\t\t\t\t\t특히, 호칭과 관련해서 남성의 경우, 군대를 갔다 왔기 때문에 어느 정도 이해하고 있지만, 여성의 경우\r\n");
      out.write("\t\t\t\t\t잘 모르는 경우가 많다.\r\n");
      out.write("\t\t\t\t\t예를 들어보면,\r\n");
      out.write("\t\t\t\t\t나는 30세 새내기 강사, 나의 직속 상사는 10년 경력의 박 선생, 그리고 원장은 이원장일 경우, 나와 이원\r\n");
      out.write("\t\t\t\t\t장 사이의 대화 상황을 가정해서 살펴보겠습니다.\r\n");
      out.write("\t\t\t\t\t“원장님, 오늘 박 선생님께서 아프셔서 출근하시지 못하셨습니다.”라고 한다면 이런 말은 호칭부터 어법까지\r\n");
      out.write("\t\t\t\t\t모두 잘못된 것이다.\r\n");
      out.write("\t\t\t\t\t이를 제대로 한다면,\r\n");
      out.write("\t\t\t\t\t“원장님, 오늘 박선생가 아파서 출근하지 못했습니다.”라고 해야 한다.\r\n");
      out.write("\t\t\t\t\t“박 선생님께서” “아프셔서”, “출근하시지”, “못하셨습니다.”라는 표현은 내 입장에서 박 선생이 상급자이기\r\n");
      out.write("\t\t\t\t\t때문에 가능하지만, 이원장 입장에서 박 선생이 부하직원이기 때문에 이런 표현은 이원장보다 박 선생이 더\r\n");
      out.write("\t\t\t\t\t상급자로 표현되는 것이기 때문에 이런 표현은 절대 사용하지 말아야 한다. “님”자도 제대로 사용하지 못하\r\n");
      out.write("\t\t\t\t\t는 사람은, 기본을 전혀 알지 못하는 사람으로 치부될 수 있다는 것을 명심해야 한다.\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t<p class=\"text-success\" style=\"text-align:center;font-size:x-large;\">\r\n");
      out.write("\t\t\t\tDuis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>\r\n");
      out.write("\t\t\t\t<p class=\"text-info\" style=\"text-align:center;font-size:x-large;\">\r\n");
      out.write("\t\t\t\tMaecenas sed diam eget risus varius blandit sit amet non magna.</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-xs-2\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"footer\">\r\n");
      out.write("\t  <p><b>Toggle Start-up Company</b> Footer</p>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<script src=\"https://code.jquery.com/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("\t<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tfunction openNav() {\r\n");
      out.write("\t\t  document.getElementById(\"mySidebar\").style.width = \"250px\";\r\n");
      out.write("\t\t  document.getElementById(\"main\").style.marginLeft = \"250px\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tfunction closeNav() {\r\n");
      out.write("\t\t  document.getElementById(\"mySidebar\").style.width = \"0\";\r\n");
      out.write("\t\t  document.getElementById(\"main\").style.marginLeft= \"0\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}