<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
	* { margin:0; padding:0; }
	ul,li { list-style:none; }
	a { text-decoration:none; color:#000; }
	.tab { border:1px solid #ddd; border-left:none; background:#fff; overflow:hidden; margin-top:100px;}
	.tab li { float:left; width:33.3%; border-left:1px solid #ddd; text-align:center; box-sizing:border-box; }
	.tab li { display:inline-block; padding:20px; cursor:pointer; }
	.tab li.on { background-color:#eee; color:#f00; }
	.tab_con { clear:both; margin-top:200px; border:1px solid #ddd; }
	.tab_con div { display:none; height:100px; background:#fff; line-height:100px; text-align:center; }
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
</div>


