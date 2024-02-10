
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_014vsa.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_014vsa.nss","MeimetuAction",true);
	Conquest("nss/ma04_014vsa.nss","MeimetuSET",true);

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

	//▼ルートフラグ、選択肢、次のGameName
	if($ma04_014vsa_routeFlag==true){$ma04_014vsa_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_015vs.nss";

}

scene ma04_014vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_014vs.nss"

//●一条を守る
	SoundPlay("@mbgm12",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆飛翔
//◆荒覇吐の正面に出る
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);
	WaitKey(300);

	Move("絵演*", 150, @-60, @-200, Dxl2, false);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 150, 100, "slide_02_01_1", true);

	CreateSE("SE01b","se戦闘_動作_空上昇01");
	CreateTextureEX("絵演", 100, Center, -150, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	SetBlur("絵演", true, 2, 500, 60, false);
	Move("絵演", 1800, @0, -230, null, false);
	Fade("絵演", 600, 1000, null, true);

	Wait(300);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("絵演", 900, @0, -720, Dxl2, false);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5760a02">
「……凑斗先生！」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5770a02">
「为什么！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5780a00">
「……你已经尽到了自己的职责。
　完成了任务。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5790a00">
「所以你现在已不是警察下属，只是个普通人。
　我需要保护你。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　不禁嗤笑自己在说些奇怪的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5800a02">
「这种事……
　你这样的话……！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5810a00">
「没问题。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateSE("SE01a","se特殊_鎧_駆動音01");
	MusicStart("SE01a",0,1000,0,750,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆発振準備
	CreateSEEX("SE01b","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01b",3000,1000,0,1000,null,true);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1100, 1100, null, true);
	Shake("絵演上", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	MeimetuAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　只要承受住就可以了。
　只要受住这一击——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆発振
	Delete("プロセス*");
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 9910, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演", 9900, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 200, 1500, 1500, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 400, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5820a00">
「…………!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5830a01">
《——唔!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆レッドアウト
	CreateColorEXmul("絵色赤", 10010, "#990000");
	Fade("絵色赤", 2000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　全身在——沸腾——
　意识在————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色赤上", 10020, "#990000");
	Fade("絵色赤上", 1000, 1000, null, true);

//◆ブラックアウト
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 100, "#000000");
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	WaitKey(1000);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs5840a12">
「呀，很可惜……
　可不能就<RUBY text="····">这样收场</RUBY>……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs5850a12">
「我说!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆場面戻り
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_right2(5100,@-300, @0,2000);
	SL_rightfade2(10);

	WaitKey(200);

	CreateSE("SE01a","se戦闘_荒覇吐_転倒01");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Delete("絵暗転");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵色白", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5860a01">
《什么？
　……停了？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　——停了下来。
　致命的波动。

　有意相让？
　……不可能。这是不言而喻的。

　敌骑看上去也有些动摇。
　不停拼命转动的摄录机俨然是在探测什么不详事态一般。

　然而，敌骑没有丝毫异常——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5870a01">
《主君！
　电线！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5880a00">
「……断开了!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　为什么？
　是事故？

　还是说——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs5890a12">
「嘿、嘿、嘿……！
　赌场上可不能东张西望啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正面に雪車町騎
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演ＳＴ", 100, Center, Middle, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
	Move("絵演ＳＴ", 0, @0, @-72, null, true);
	Zoom("絵演ＳＴ", 0, 200, 200, null, true);
	SetBlur("絵演ＳＴ", true, 3, 500, 50, false);
	Request("絵演ＳＴ", Smoothing);
	Move("絵演ＳＴ", 600, @0, @-20, DxlAuto, false);
	Fade("絵演ＳＴ", 600, 1000, null, true);

	SetFwL("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs5900a12">
「村正!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5910a00">
「……你是?!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆激突
//◆一合打ち合い。がきがきーん。
	CreateColorEX("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演ＳＴ", 400, 1500, 1500, Axl2, false);
	Move("絵演ＳＴ", 100, @0, @-20, null, true);
	Move("絵演ＳＴ", 300, @0, @180, Axl2, false);
	Wait(100);
	Fade("絵色黒", 200, 1000, null, true);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,2000);
	SL_rightdownfade2(10);

	CreateSE("SE02","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵演元", 10020, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 0, @0, @180, @0, null,true);
	CreatePlainSPadd("絵演", 10030);
	Zoom("絵演", 0, 1250, 1250, null, true);
	SetBlur("絵演", true, 3, 500, 200, false);
	FadeDelete("絵演", 800, false);
	Shake("絵演", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演", 200, 1000, 1000, null, false);

	ClearWaitAll(2000, 0);

//◆一条好感度＋１
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma04_014vsa_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


}

..//ジャンプ指定
//次ファイル　"ma04_015vs.nss"



.//プロセス用======================================================

..//明滅な光
function MeimetuAction()
{
	CreateProcess("プロセス明暗", 5000, 0, 0, "MeimetuSET");
	SetAlias("プロセス明暗","プロセス明暗");
	Request("プロセス明暗", Start);

}

function MeimetuSET()
{
	begin:
	while(1)
	{
	Fade("@絵演上", 800, 1000, null, true);
	Wait(200);
	Fade("@絵演上", 800, 0, null, true);
	Wait(200);
	}

}