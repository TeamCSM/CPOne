<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- <style>
	* { margin:0; padding:0; }
	ul,li { list-style:none; }
	a { text-decoration:none; color:#000; }
	.tab { border:1px solid #ddd; border-left:none; background:#fff; overflow:hidden; margin-top:100px;}
	.tab li { float:left; width:33.3%; border-left:1px solid #ddd; text-align:center; box-sizing:border-box; }
	.tab li { display:inline-block; padding:20px; cursor:pointer; }
	.tab li.on { background-color:#eee; color:#f00; }
	.tab_con { clear:both; margin-top:0px; border:1px solid #ddd; }
	.tab_con div { display:none; height:100px; background:#fff; line-height:100px; text-align:center; margin-top:100px;}
</style>

<ul class="tab" id="tab">
    <li>A</li>
    <li>B</li>
    <li>C</li>	
</ul>

<div class="tab_con" id="tab_con">
    <div>1st Contents</div>	
    <div>2nd Contents</div>
    <div>3rd Contents</div>
</div -->>
<style>
#searchWrap .tab {
    position: relative;
    width: 1100px;
    margin: 30px auto 0;
}
#searchWrap .tab ul {
    width: 1098px;
    height: 48px;
    border: 1px solid #dddddd;
}
#searchWrap .tab ul li.on {
    background: #42454c;
    height: 50px;
    margin: -1px 0 -1px -1px;
    padding-left: 1px;
    color: #fff;
}
#searchWrap .tab ul li.t02 {
    width: 364px;
}
#searchWrap .tab ul li.t03 {
    width: 365px;
    background: none;
}
#searchWrap .tabview.tab01 {
    text-align: center;
}
#searchWrap .relKeywordBox {
    width: 700px;
    margin: 0 auto;
    font-size: 13px;
    font-weight: 600;
    color: #999;
}
#searchWrap .tab ul li p {
    display: inline-block;
    width: 100%;
    height: 100%;
}
</style>
<div id="searchWrap">
	<!--[[ 통합검색 searchWrap Start ]]-->
	<div class="title" title="검색하기"></div>
	<div class="tab">
		<ul>
			<a href="/search/searchKeyword.do"><li class="t01 on">
					<p>키워드검색</p>
			</li></a>
			<a href="/search/searchDate.do"><li class="t02 ">
					<p>출발일검색</p>
			</li></a>
			<a href="/search/searchPrice.do"><li class="t03 ">
					<p>가격별검색</p>
			</li></a>
		</ul>
	</div>
	<form name="searchforms" id="totalSearch"
		action="/search/searchKeyword.do" method="POST"
		onsubmit="resultSearchKeyword(event); return false;">
		<input type="hidden" name="sort" value=""> <input
			type="hidden" name="collection" value=""> <input
			type="hidden" name="realQuery" value="">
		<div class="tabview tab01 block">
			<!--[[ 키워드검색 tab01 Start ]]-->
			<span class="noti">상품번호를 알고 계시다면, 상품번호로 간편하게 검색하세요!</span>
			<div id="keywordSrh">
				<input type="text" id="query2" name="query" title="키워드입력" value=""
					style="ime-mode: active;"> <input type="hidden"
					name="product" value="전체상품"> <span class="divide"></span>
				<button type="submit" class="btnTotalSearch" title="검색"></button>
			</div>
			<div id="ark2"></div>
			<div class="relKeywordBox">
				추천검색어 | <span class="keyword"><a
					href="/search/searchKeyword.do?query=스페인 포르투갈"><span>스페인
							포르투갈</span></a><a href="/search/searchKeyword.do?query=대만 4일"><span>대만
							4일</span></a><a href="/search/searchKeyword.do?query=방콕 파타야"><span>방콕
							파타야</span></a><a href="/search/searchKeyword.do?query=캄보디아"><span>캄보디아</span></a><a
					href="/search/searchKeyword.do?query=태항산"><span>태항산</span></a><a
					href="/search/searchKeyword.do?query=이집트"><span>이집트</span></a></span>
			</div>
		</div>
		<!--[[ 키워드검색 tab01 End ]]-->
	</form>

</div>
