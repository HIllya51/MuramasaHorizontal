//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_012.nss_MAIN
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
	#bg001_空a_01=true;
	#bg001_空a_02=true;
	#bg013_鎌倉俯瞰a_02=true;
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_013.nss";

}

scene md04_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_011.nss"


//◆空→夕空

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	OnBG(101, "bg002_空a_02.jpg");
	FadeBG(0, true);
	FadeDelete("黒幕１",2500,true);

	Wait(1000);


//◆鎌倉
//◆進駐軍司令部。bg018a？
//◆テロップ「進駐軍 鐮倉野戰司令部」


	OnBG(102, "bg013_鎌倉俯瞰a_02.jpg");
	FadeBG(1500, true);
	WaitKey(1000);


	OnBG(100, "bg018_知事執務室_01.jpg");
	FadeBG(1500, false);
	Wait(1000);
	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_司令部.png",null);
	Wait(2000);

	StL(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
	StR(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);

	FadeStL(500, false);
	FadeStR(500, true);


	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120010b00">
「太阳落山了啊。
　一天实在是攻不下来呢……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120020b03">
「六波罗是强敌。
　而且我们的状态也算不上完美。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120030b03">
「今天只攻陷小弓就行了吧？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120040b00">
「嗯。」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

//◆図？

//↑メモらしいので無視して良いとのこと　inc櫻井


	SetFwH("cg/fw/fwキャノン_通常b.png");

//嶋：修正（現況）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120050b03">
「确认一下现状。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120060b03">
「第一军团进驻镰仓市。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120070b03">
「第二军团正从藤泽方向攻击普陀乐城。
　第三军团正从大船方向攻击普陀乐城。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120080b03">
「第四军团压制了小弓公方府。
　第五军团正在攻击古河公方府。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120090b03">
「舰队基本上压制了相模湾，
边牵制幕府的舰队边输送物资。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120100b00">
「嗯……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120110b03">
「命令第二、第三军团停止攻击如何，阁下？
　我们必须在夜幕降临前退兵，
做夜间扎营的准备。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120120b03">
「我想尽量将兵力收容进舰队，因此加快速度
比较好。
　日落之后，发生事故的危险性会增加。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120130b00">
「……不能选择夜间继续攻击吗？
　中佐。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120140b03">
「从各种意义上来说都很危险。
　原因之一是，我军士兵对地域并不熟悉，
在夜间战斗很不利；原因之二是，
大和军人很擅长传统的夜间战。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120150b03">
「另外还可能会误打到市区。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120160b00">
「……也对。」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120170b00">
「我知道了，卡农。
　一步步来吧。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120180b03">
「因为才刚刚开始。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120190b00">
「但是，敌人或许会来夜袭。
　请彻底加强警戒。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120200b03">
「是。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120210b03">
「但是……维罗少将。
　古河方面就另说了。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120220b00">
「嗯。
　我知道。」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120230b00">
「古河是六波罗的生命线……
　反过来说，就是我们的决胜之所。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120240b03">
「攻下古河就能孤立普陀乐。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120250b00">
「是要将夜间战斗用装备优先往那里
配送吧？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120260b03">
「当然了。
　即便如此也要做好受到大损伤的心理准备……」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120270b00">
「最终会讨回来的。
　在古河付出的牺牲具有重要意义。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120280b03">
「嗯。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120290b00">
「让第四军团也去支援古河。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120300b03">
「明白了，阁下。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_013.nss"