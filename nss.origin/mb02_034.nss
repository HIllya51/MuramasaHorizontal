//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_034.nss_MAIN
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
	#bg002_空b_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_035.nss";

}

scene mb02_034.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_033vs.nss"

//◆景明サイド
//◆普陀楽上空
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空b_03.jpg");
	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");
	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,300,0,1000,null,true);
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0340010a00">
「什……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0340020a00">
「那是怎么回事!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0340030a01">
《……!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　好不容易从主堡中逃脱——
　但是我无法一气呵成迅速离去。

　因为看到了那里。
　被冲天火焰包围着的，城区一隅。

　我记得那里……
　筑有沿边小城。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0340040a00">
「火灾？
　不对……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　哪里不对，难以言明。
　但<RUBY text="····">火焰之状</RUBY>略显诡异。

　不同于自然火焰。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0340050a01">
《那是阴义！》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0340060a00">
「——你确定吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0340070a01">
《我可以感觉到<RUBY text="··">力量</RUBY>在流动。
　不会有错。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0340080a01">
《那是武者所唤之炎……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　若果真如此。
　——难道是正宗!?

　或者也可能是与正宗交战的幕府武者唤出的火焰……
　不管是哪一方，都不可小觑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0340090a00">
「村正！　确认状况。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0340100a01">
《明白。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆騎航
	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, true);
	WaitKey(1000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_035.nss"