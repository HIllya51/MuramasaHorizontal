//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011c.nss_MAIN
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
	#bg036_競技場通路_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_011c_routeFlag==true){$ma03_011c_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011.nss"

//●香奈枝の様子を見に行く

	SetVolume("@mbgm*", 2000, 0, null);

	PrintBG("上背景", 25000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("上背景");

	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……？
　不知从何处传来一阵小孩的哭声。

　虽然根据回响很难确定方位……
　是这边吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　有了。
　流泪抽泣的小孩和——大鸟大尉？

　小孩看上去只有六七岁。
　大尉蹲下来让视线与小孩的高度平齐，
向他问道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0010a03">
「喂喂、孩子。
　究竟发生什么了？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0020e279">
「呃……呜。
　呜呜……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0030a03">
「发生什么了？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0040e279">
「呜……呜呜。妈妈……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0050a03">
「妈妈怎么啦？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0060e279">
「呃呜……
　诶……在哪里……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0070a03">
「妈妈、不在吗？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0080e279">
「……呃呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　对话没有成立。
　即使香奈枝小姐屡屡发问，可小孩只是一味沉浸在
哭泣中。

　虽然从紧紧揪着大尉的袖口不放这点看来，确实也
意识到了她的存在。
　纱代侍从则站在她背后，没有出声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0090a03">
「是不知道妈妈到哪里去了吧？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0100e279">
「呜……呜咕呜。呜呜……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0110a03">
「…………
　你叫什么名字？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0120e279">
「呜呜……诶。
　找妈妈……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0130a03">
「…………
　你叫什么？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0140e279">
「……呜！」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0150a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
　经过数秒的沉默之后。
　大尉干脆地采取了行动。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_拾う01",1000);


	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
　甩开小孩的手，站了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0160a03">
「走吧，纱代。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/011c0170a04">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//――――――――――――――――――――――――

	DeleteStL(300,false);

	SetNwC("cg/fw/nw迷子.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0180e279">
「……？
　诶呜呜——!!」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0190a03">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/011c0200a04">
「……」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0210e279">
「等等……
　想找……妈妈……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　追赶作势离去的大尉，小孩想抓住她的裙摆。
　可却触碰不到。大尉轻灵地闪开身子，躲过了
那只小小的手。

　一个踉跄，小孩差点倒在地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw迷子.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0220e279">
「……啊呜……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0230a03">
「你的名字是？
　妈妈给你起的名字。一定有吧？」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0240e279">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0250a03">
「……」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0260e279">
「……平田……和树……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0270a03">
「知道了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　一个优美的转身，大尉回到孩子身边。
　伸出双手，把他抱了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0280a03">
「是和妈妈走散了吧。」

{	NwC("cg/fw/nw迷子.png");}
//【ｅｔｃ／迷子】
<voice name="ｅｔｃ／迷子" class="その他男声" src="voice/ma03/011c0290e279">
「嗯……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/011c0300a03">
「知道了。我会帮你找她的。
　纱代，你就去大赛本部那边。
我到观众席看看。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/011c0310a04">
「明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　用简短的话语决定分工，两人麻利地开始行动。
　她们的身影很快消失在视野中。

　那样做的话，一定能很快找到孩子的母亲吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011c0320a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……找不到现身的时机。
　不过这样反而更好。就算我在场，
也肯定没法做出那样的举措。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝好感度＋１
//$Kanae_Flag = $Kanae_Flag++;
	$ma03_011c_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

	Wait(500);

	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_012.nss"