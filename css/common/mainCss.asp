<%
	Dim mainBanBg, mainIssue, mainIssueBorder
	Select Case SITE_PARTNER_CODE
		Case "P-00065"
			mainBanBg = "#362c26"
			mainIssue = "#ecd6b7"
			mainIssueBorder ="#c5a26f"
		Case Else
			mainBanBg = "#292d2f"
			mainIssue = "#ffb0aa"
			mainIssueBorder = "#f58070"
	End Select
%>
<style>
/* partner-color */
.wrap_banner{background:<%=mainBanBg%>}/* 메인배너 배경컬러 */
.wrap_issue{background:<%=mainIssue%>}/* 실시간핫이슈 배경컬러 */
.wrap_movie .movie_list .subject .view,.wrap_issue .issue_list .subject .view{color:#fed929}/* 영상폰트 포인트 컬러 */
.service_top li a,.gnb li.active a,.wrap_movie .list_title .more,.wrap_issue .issue_list .list_title .more,.f_link_gu li,.f_link_gu li a,.f_link_gu span,.aSideMenu .side_box li .r_top_num,.aSideMenu .side_box li .r_top_nick,.mb_list .important,.infoLayer .myinfo_popkon .m_popkon span.m_amount,.infoLayer .my_service .sm{color:#f44933}/* 텍스트 포인트 컬러 */
.sub_line_wrap .cont_sbj{color:#222 !important}
.wrap_issue .issue_list li{border-color:<%=mainIssueBorder%>}/*실시간핫이슈 라인컬러*/
</style>