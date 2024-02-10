//<continuation number="130">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_011vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_011vs.nss","DenziBladeChargeEX",true);
	Conquest("nss/mb04_011vs.nss","DenziBladeChargeSet",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#ev901_銀星号天座失墜小彗星_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_012vs.nss";

}

scene mb04_011vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_010vs.nss"


//◆銀星号
	SoundPlay("@mbgm11",0,1000,true);
	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演銀星号", 17000, Center, -1300, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	CreateTextureEX("絵演銀星号弐", 17010, 0, -480, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	Request("絵演銀星号*", Smoothing);
	Rotate("絵演銀星号弐", 0, @0, @180, @0, null,true);
	Zoom("絵演銀星号", 0, 3000, 3000, null, true);
	Rotate("絵演銀星号", 0, @180, @0, @0, null,true);
	SetBlur("絵演銀星号", true, 1, 500, 50, false);
	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演銀星号", 150, 1000, 1000, null, false);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);
	Fade("絵演銀星号弐", 2000, 600, Axl2, false);
	Move("絵演銀星号弐", 3000, -300, -480, DxlAuto, false);
	Move("絵演銀星号", 3000, @0, @200, DxlAuto, false);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/mb04/011vs0010a14">
《来吧。》

//【光】
<voice name="光" class="光" src="voice/mb04/011vs0020a14">
《来吧……景明。》

//【光】
<voice name="光" class="光" src="voice/mb04/011vs0030a14">
《只差一步了。
　一步之遥……》

//【光】
<voice name="光" class="光" src="voice/mb04/011vs0040a14">
《你就能……触碰到我了——！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……还有一步。

　没错，仅仅只有一步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/mb04/011vs0050a14">
《你会怎么做？
　你会怎样填补这一步的差距呢？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……

　……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/mb04/011vs0060a14">
《已经无计可施了吗？
　到此为止了吗？景明。》

//【光】
<voice name="光" class="光" src="voice/mb04/011vs0070a14">
《那么——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃準備
	PrintGO("上背景", 25000);
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateTextureSPadd("絵演銀星号上", 17100, -300, -480, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	CreateTextureSP("絵演銀星号", 17000, -300, -480, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	Request("絵演銀星号*", Smoothing);
	Rotate("絵演銀星号*", 0, @0, @180, @0, null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演銀星号上", 0, 1200, 1200, null, false);
	Zoom("絵演銀星号上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演銀星号", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演銀星号上", 200, false);

	FadeDelete("上背景", 100, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/mb04/011vs0080a14">
《这一次我仍将……
　让你悔恨地坠入地狱!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆急降下。レイディバグ
	PrintGO("上背景", 25000);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureSP("絵演銀星号", 17000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_b.jpg");
	Request("絵演銀星号", Smoothing);
	Rotate("絵演銀星号", 0, @0, @180, @0, null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("上背景", 1000, true);

//◆世界が静止。時間が止まった感じ。モノクロ？
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("絵色白", 18000, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色白", 2000, true);

	CreatePlainSP("絵板写", 18000);
	SetTone("絵板写", Monochrome);
	DrawTransition("絵板写", 3000, 0, 1000, 100, Dxl2, "cg/data/circle_03_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　——在那。
　最后的一瞬间。

　我的意识彻底地滞后了。
　在一切都结束之后，我俯视着敌人和<RUBY text="···">我自己</RUBY>。

　这次它定会使出完美的必杀技，从天座坠下的小彗星。
　我并未感觉到绝境的到来。这一点我可以断定。

　然而四肢却移动了。
　迅敏地应对着敌人。

　我不明所以。
　也许只是追寻着力量与速度所作的挣扎，
碰巧<RUBY text="····">挣扎对了</RUBY>而已。

　也许并不只是这样。
　
　其理由，我并不知道。

　不管怎么说，当时我确实做出了<RUBY text="····">如此反应</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆電磁抜刀準備。鞘が帯電
	PrintGO("上背景", 30000);
	CreateSE("SEL01","se特殊_電撃_帯電02");
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureEXadd("プロ絵上", 17020, InRight, -650, "cg/ev/resize/ev902_村正電磁抜刀レールガン_ctl.jpg");
	CreateTextureEXsub("プロ絵", 17010, InRight, -650, "cg/ev/resize/ev902_村正電磁抜刀レールガン_ctl.jpg");
	CreateTextureSP("絵演抜刀準備", 17000, InRight, -650, "cg/ev/resize/ev902_村正電磁抜刀レールガン_btl.jpg");
	SetBlur("絵演抜刀準備*", true, 2, 500, 80, false);

	SetBlur("プロ絵*", true, 1, 500, 80, false);

	Delete("上背景");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	SoundPlay("@mbgm12",0,1000,true);
	FadeDelete("上背景", 100, true);
	FadeDelete("絵色白", 600, true);

	Move("プロ絵*", 2000, @0, @-600, AxlDxl, false);
	Move("絵演抜刀準備*", 2000, @0, @-600, AxlDxl, true);

	SetVertex("プロ絵*", 586, 1592);
	DenziBladeChargeEX();

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/mb04/011vs0090a14">
「果然——出此招啊。」

//【光】
<voice name="光" class="光" src="voice/mb04/011vs0100a14">
「裂光之刀法……
　利用磁力排斥的神速拔刀法。」

//【光】
<voice name="光" class="光" src="voice/mb04/011vs0110a14">
「这一招的速度，哪怕是我的眼睛都无法看到。
　无法躲开，亦无从防御啊。」

//【光】
<voice name="光" class="光" src="voice/mb04/011vs0120a14">
「但是！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 200, 0, null);

//◆降下銀星号
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演銀星号", 18000, Center, -1300, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Request("絵演銀星号*", Smoothing);
	Zoom("絵演銀星号", 0, 3000, 3000, null, true);
	Rotate("絵演銀星号", 0, @180, @0, @0, null,true);
	SetBlur("絵演銀星号", true, 1, 500, 50, false);
	Delete("プロ*");
	Delete("絵演抜刀*");
	Delete("Ｐ*");
	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演銀星号", 150, 1000, 1000, null, false);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);
	Move("絵演銀星号", 1500, @0, @100, DxlAuto, false);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/mb04/011vs0130a14">
「<RUBY text="·············">我看得到使用太刀的你的身影</RUBY>！真可惜啊，
景明……如果没有时间将刀从刀鞘中拔出
的话，那么再厉害的刀也与钝刀一样毫无价值！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号、ぐっと迫力増し
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureSPadd("絵演銀星号上", 18100, -350, -250, "cg/ev/resize/ev901_銀星号天座失墜小彗星_cl.jpg");
	CreateTextureSP("絵演銀星号", 18010, -350, -250, "cg/ev/resize/ev901_銀星号天座失墜小彗星_cl.jpg");
	Request("絵演銀星号*", Smoothing);
	Rotate("絵演銀星号*", 0, @0, @180, @0, null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演銀星号上", 0, 1200, 1200, null, false);
	Zoom("絵演銀星号上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演銀星号", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演銀星号上", 200, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……没错。
　银星号说的没错。

　即使有了神速的攻击手段——
　若在使出之前<RUBY text="··">本体</RUBY>就被击败了的话，那便毫无意义。

　如果骑体的动作彻底被银星号捕捉到的话，那么银星
号便可看穿我使出磁力拔刀的时机，然后在我拔刀之前
先将我打败。
　普通武者也许做不到，但若是银星号一定做得到。

　与之相对的，我方却连敌骑的一丝影子都捕捉不到。
　即使有拔刀的时间，太刀也无法攻击到敌骑吧。

　也就是所谓的暴殄天物。
　毫无用处。

　——对。没错。
　<RUBY text="···········">仅凭借拔刀是毫无意义的</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"mb04_012vs.nss"

.//プロセス用======================================================

..//電磁抜刀放電ループカスタム
function DenziBladeChargeEX()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵", 50, 800, Dxl3, false);
	Fade("@プロ絵上", 50, 800, Axl1, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵", 50, 800, Dxl3, false);
	Fade("@プロ絵上", 50, 800, Axl1, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵", 50, 800, Dxl3, false);
	Fade("@プロ絵上", 50, 800, Axl1, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}