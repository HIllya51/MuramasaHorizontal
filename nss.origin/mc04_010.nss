//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_010.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_011vs.nss";

}

scene mc04_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_009.nss"


//◆景明サイド
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	Delete("上背景");
	SoundPlay("@mbgm36", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我按照村正的指示，正要直线穿过那个十字路口——
　
　一瞬间。视野边缘出现的情景，让我慌忙停下了脚步。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大廊下
	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");
	DrawDelete("黒幕１", 300, 100, "slide_01_02_1", true);

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100010a00">
「大尉阁下!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　走廊的前面。
　有两个士兵——还有一个少壮男性按住了一个人，骑
在了那人的身上。

　被按住的人，是一位女性。
　……那是大鸟大尉没错！

　大概是因为我的声音传过去了。
　上面的男人，向我这边瞥了一眼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	DeleteStR(0, true);
	Delete("絵背景10");

	CreateTextureSP("絵背景20", 12, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	StL(1100,@0,@30,"cg/st/st獅子吼_通常_制服.png");
	FadeStL(0,false);

	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0100020a06">
「那就是你的同伴吗，香奈枝。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0100030a03">
「……」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0100040a06">
「啧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_走る07", 1000);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　他简短地咂了下舌头。
　一瞬间，男人似乎已经对状况作出了判断。<k>——我是
装备了剑胄的武者。男人只有轻武装。跟随他的士兵也
是普通装备。<k>——战力完全是我方优越。

　男人像蝗虫一样从香奈枝身上跳开。
　然后他朝着与我相反的方向，向走廊中跑去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0100050a03">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝立つ
	OnSE("se人体_動作_起きる01", 1000);

	StL(1000,@0,@30,"cg/st/st香奈枝_通常_私服c.png");
	Move("@StL*", 300, @0, @-30, Dxl1, false);
	FadeStL(300,true);

	WaitKey(200);

	CreateSE("SE01","se人体_足音_走る07");
	MusicStart("SE01",0,1000,0,1100,null,false);
	Move("@StL*", 600, @-200, @0, Axl2, false);
	DeleteStL(300, true);

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);

	SetVolume("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　大鸟大尉轻声咳着站起身，追在他的身后跑了出去。
　
　男人的速度相当快，而大尉奔跑的速度也不像是刚才
还被掐住脖子的样子。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");
	Delete("絵背景20");
	DrawDelete("黒幕１", 500, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100060a00">
「大尉——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆香奈枝去る

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我想要叫她，但被无视了。
　大尉背对着我，没有看我一眼。

　似乎她眼中只有那个逃走的男人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100070a00">
（难道说？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我回忆着那个男人的装扮。
　……那完全是上将的装扮。和他年轻的样子不太相配
……那么，那是，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士
	OnSE("se戦闘_銃器_構える01",1000);
	StR(1100,@40,@0,"cg/st/st六波羅兵士_通常_制服.png");
	StL(1000,@-40,@0,"cg/st/st六波羅兵士_通常_制服.png");
	FadeStR(300,false);

	Wait(100);
	OnSE("se戦闘_銃器_構える01",1000);
	FadeStL(300,true);

	WaitAction("@StL*", null);
	CreatePlainSP("絵板写", 19900);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100080a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆殴打二度
	CreateTextureSP("絵背景40", 15000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景40", 0, 1100, 1100, null, true);

	CreateTextureEXadd("絵背景50", 16000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("絵背景50", 0, @0, @0, @180, null,true);
	Zoom("絵背景50", 0, 1100, 1100, null, true);

	DeleteStA(0,true);
	Delete("絵板写");

	OnSE("se戦闘_攻撃_殴る03", 1000);
	Shake("絵背景40", 200, 20, 0, 0, 0, 1000, Dxl2, false);

	Wait(150);

	OnSE("se戦闘_攻撃_殴る02", 1000);
	Fade("絵背景50",100,1000,null,false);
	Shake("絵背景40", 200, 0, 20, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw大鳥軍兵士Ｉ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／大鳥兵士Ｉ】
<voice name="ｅｔｃ／大鳥兵士Ｉ" class="その他男声" src="voice/mc04/0100090e179">
「咿呀！」

{	NwC("cg/fw/nw大鳥軍兵士Ｊ.png");}
//【ｅｔｃ／大鳥兵士Ｊ】
<voice name="ｅｔｃ／大鳥兵士Ｊ" class="その他男声" src="voice/mc04/0100100e180">
「呃啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ばたばた。
	CreatePlainSP("絵板写", 19900);

	Wait(10);
	Delete("絵背景50");
	Delete("絵背景40");

	FadeDelete("絵板写", 1000, false);

	OnSE("se人体_衝撃_転倒01", 1000);
	OnSE("se人体_衝撃_転倒02", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　两个士兵想要瞄准大鸟大尉的背影，我将他们击倒了。
　
　我掌握了力度，没有让他们身负重伤……不过这几个
小时他们应该无法起身。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100110a00">
（那人是大鸟狮子吼吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我确认着两个士兵的状态，在心中说道。
　篠川公方大鸟狮子吼——他比我想象的要年
轻，相貌也比我想象的更有棱角。

　那就是香奈枝父亲的仇人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0100120a01">
《追吗？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100130a00">
「……不。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　他们已经从我的视野中消失了。
　即使我还能看到他们，我的决定也不会改变。

　大尉没有回答我的叫声。我知道其中的理由。
　
　——对，这是已经决定了的。我和大尉目的不同。
　我们不会互相协助。

　刚才从结果来说，也许是我救了大尉，但那仅仅是偶
然。
　并不是我去协助了她。但是，如果现在我再追过去，
那情况就不同了。

　那就会成为，我舍弃自己的义务，
　去妨碍她的战斗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100140a00">
「走吧。
　<RUBY text="我">村正</RUBY>的目的是银星号？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0100150a01">
《——嗯。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se特殊_鎧_駆動音01", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我转过身，再次跑了起来。
　冰冷的脚步声回响在豪华的走廊中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_011vs.nss"