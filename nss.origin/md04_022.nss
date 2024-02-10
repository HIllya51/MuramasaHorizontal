//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_022.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg009_鎌倉住宅街a_02=true;
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_023vs.nss";

}

scene md04_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_021.nss"


//◆鎌倉·夕

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	WaitKey(1500);
	
//◆司令部
//◆横書き

	CreateColorSP("黒幕１", 5000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg018_知事執務室_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	StL(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
	StR(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStL(300, false);
	FadeStR(300, true);



	SetFwH("cg/fw/fwウィロー_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220010b00">
「怎、怎么可能！
　你说篠川的援军来了!?」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220020b00">
「怎么搞的！
　我们已经镇压了古河……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220030b00">
「不，说到底太快了吧！
　离开战还没过一天半呢!!」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220040b03">
「维罗少将，请冷静。
　并非篠川全军都来了。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220050b00">
「什么？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220060b03">
「来的只有一艘飞行舰。
　虽然体型足以匹敌我军的要塞级飞舰……
但一艘就是一艘。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220070b03">
「所搭载兵力也不会多到哪去。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220080b00">
「嗯……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220090b03">
「应该是大鸟狮子吼预料到古河会陷落，就选择
带领少数精锐前来支援了吧。
　刚占领后的古河防空也会松懈……要突破虽然
困难，但也不是不可能。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220100b03">
「敌方大将行事利落果断呢。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220110b00">
「……但是。
　说到底只有一艘，是吧？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220120b03">
「是的。
　对形势不会有太大影响。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220130b03">
「动用普陀乐上空的一部分航空战力去迎击吧。
　六波罗的心脏或许会晚停一会儿，不过仅此
而已。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220140b00">
「仅此而已也很可恨啊。
　没想到眼看就要成功的时候杀出程咬金……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220150b03">
「阁下。」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220160b00">
「我明白，克莱布。
　交给你了。击溃援军，让普陀乐城的士气
降到谷底吧。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220170b03">
「了解。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 25000, "BLACK");
	Fade("絵色100", 1500, 1000, null, true);


//	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_023vs.nss"