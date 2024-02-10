//<continuation number="40">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_012vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_012vs.nss","DenziBladeChargeEX",true);
	Conquest("nss/mb04_012vs.nss","DenziBladeChargeSet",true);
	Conquest("nss/mb04_012vs.nss","FlyMoving",true);
	Conquest("nss/mb04_012vs.nss","FlyMoving2",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#ev156_銀星号との決着英雄編=true;
	#ev901_銀星号天座失墜小彗星_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_013.nss";

}

scene mb04_012vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_011vs.nss"

//◆村正
	SoundPlay("@mbgm12",0,1000,true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateSE("SEL01","se特殊_電撃_帯電02");
	CreateTextureEXadd("プロ絵上", 17020, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_ctl.jpg");
	CreateTextureEXsub("プロ絵", 17010, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_ctl.jpg");
	CreateTextureSP("絵演抜刀準備", 17000, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_btl.jpg");
	SetBlur("絵演抜刀準備*", true, 2, 500, 80, false);

	SetBlur("プロ絵*", true, 1, 500, 80, false);
	MusicStart("SEL01",0,1000,0,1000,null,true);

	SetVertex("プロ絵*", 586, 1592);
	DenziBladeChargeEX();

	$SYSTEM_effect_rain_speed = 96;
	$SYSTEM_effect_rain_dencity = 24;
	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Fade("絵効果雨", 0, 300, null, true);
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	DrawDelete("上背景", 150, 100, "slide_02_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);

	Move("絵演抜刀準備", 16000, @0, @600, null, false);
	Move("プロ絵*", 16000, @0, @600, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我已经明白。
　凭借招式，是无法击败银星号的。

　需要的是力量。
　是速度。

　只有不断地提升速度才能击败银星号。
　还差一步。只要再快一点。

　一瞬间——哪怕是瞬间的百分之一也无妨。
　为了甩开魔王的视线，令自己脱离其视野的速度。

　为了争取到这样的速度。
　我才有了方才的举止。

　为此，我才做出了<RUBY text="·····">这样的行动</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆帯電が鞘から全身へ波及
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Fade("絵効果雨", 0, 300, null, true);
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	Delete("Ｐ*");
	CreateTextureEXadd("プロ絵上", 17020, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dtl.jpg");
	CreateTextureEXsub("プロ絵", 17010, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dtl.jpg");
	CreateTextureSP("絵演抜刀準備", 17000, InRight, -1250, "cg/ev/resize/ev902_村正電磁抜刀レールガン_ctl.jpg");
	Shake("絵演抜刀準備", 2160000, 0, 4, 0, 0, 1000, null, false);
	SetBlur("絵演抜刀準備*", true, 2, 500, 80, false);

	SetBlur("プロ絵*", true, 1, 500, 80, false);
	MusicStart("SEL01",0,1000,0,1000,null,true);

	SetVertex("プロ絵*", 586, 1592);
	DenziBladeChargeEX();

	FadeDelete("絵色白", 800, true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/mb04/012vs0010a14">
「——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　银星号也许会在那一瞬间有所察觉。
　<RUBY text="········">有什么事要发生了</RUBY>。

　已超越人类范畴的战斗直觉，让它准确地洞悉到了
这一点。
　
　不。

　毫无疑问地，它已意识到了这一点。
　所以——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 300, null);

//◆銀星号、キメの蹴りモーションへ
	CreateTextureEX("絵演銀壱", 18100, -350, -250, "cg/ev/resize/ev901_銀星号天座失墜小彗星_cl.jpg");
	Request("絵演銀壱", Smoothing);
	Rotate("絵演銀壱", 0, @0, @180, @0, null,true);
	Fade("絵演銀壱", 1000, 1000, null, true);

	WaitKey(1000);

	CreateTextureSP("絵演銀弐", 18090, -350, -250, "cg/ev/resize/ev901_銀星号天座失墜小彗星_dl.jpg");
	Request("絵演銀弐", Smoothing);
	Rotate("絵演銀弐", 0, @0, @180, @0, null,true);
	FadeDelete("絵演銀壱", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　银星号迅速地翻转身躯，发出了攻击。
　使出了必杀性的一击。

　向着那无人的虚空。

　因为它知道我即将出现在那里。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正全身帯電

	SetVolume("SE*", 1000, 1000, null);
	FadeDelete("絵演銀*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
　将所有力量都填充至<RUBY text="··">刀鞘</RUBY>。
　磁力暴风不断起伏躁动着，排斥跳动着。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("絵演抜刀準備", 300, @0, @600, AxlDxl, false);
	Move("プロ絵*", 300, @0, @600, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
　在暴风的能量达到最高点时——
　进行<RUBY text="··">攻击</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	Move("絵演抜刀準備", 600, @0, @-600, Axl3, false);
	Move("プロ絵*", 600, @0, @-600, Axl3, false);

	WaitKey(500);

	SetVolume("SE*", 300, 0, null);

//◆なんか爆発。閃光
//◆なんかが天頂へ向かって疾走する
	CreateSE("SE01a","se特殊_鎧_装着03");
	CreateSE("SE01b","se戦闘_破壊_爆発09");
	CreateSE("SE01c","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Delete("プロ*");
	Delete("Ｐ*");
	Delete("絵効果*");
	Delete("絵演*");


	CreateTextureSP("絵演村正", 17000, 310, -1500, "cg/ef/resize/ef020_村正突貫02tl.jpg");
	Request("絵演村正", Smoothing);
	Zoom("絵演村正", 0, 2000, 2000, null, true);
	SetBlur("絵演村正", true, 4, 500, 70, false);

$ループムーブナット名 = "@絵演村正";
$ループムーブタイム = 200;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１", Start);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", SubRender);
	Move("絵効果雨", 0, 1156, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @-20, @0, @5, null,true);
	Fade("絵効果雨", 0, 150, null, true);

	Shake("絵演村正", 10000000, 1, 0, 0, 0, 1000, null, false);

//	Shake("絵演村正", 1500, 3, 0, 0, 0, 1000, Dxl2, false);


	Fade("絵効果雨", 1500, 0, null, false);
	FadeDelete("絵色白", 1000, false);
	Zoom("絵演村正", 700, 1700, 1700, Dxl2, true);


//	WaitKey(700);
	Delete("プロセス１");

	Zoom("絵演村正", 1600, 1000, 1000, Dxl2, false);
	BezierMove("絵演村正", 1000, (@0,@0){-240,-1000}{-340,-1000}(100,-1300){-50,-300}{-100,-600}(-200,-100){-220,-600}{-120,-410}(-135,-440), null, true);

//	Move("絵演村正", 200, -120, -410, Dxl1, true);
//	Move("絵演村正", 100, -100, -510, AxlDxl, true);
//	Move("絵演村正", 300, @0, -510, Dxl1, true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/mb04/012vs0020a14">
「景明——————!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateSE("SE02a","se戦闘_動作_空突進03");
	CreateSE("SE02b","se戦闘_動作_空突進01");
	CreateSE("SE02c","se戦闘_破壊_爆発09");
	CreateTextureSPadd("絵演銀星号", 17000, 0, -1050, "cg/ef/resize/ef019_銀星号突貫02t2l.jpg");
	Shake("絵演銀星号", 10000000, 1, 0, 0, 0, 1000, null, false);

	CreateTextureSP("絵演銀星号2", 17000, -100, -1500, "cg/ef/resize/ef019_銀星号突貫02t2l.jpg");
	Request("絵演銀星号2", Smoothing);
	Zoom("絵演銀星号2", 0, 2000, 2000, null, true);
	SetBlur("絵演銀星号2", true, 2, 300, 20, false);

	Move("絵効果雨", 0, @0, @250, null, true);

	Fade("絵効果雨", 0, 150, null, true);
	Zoom("絵演銀星号2", 1600, 1000, 1000, Dxl2, false);
	Fade("絵効果雨", 1600, 100, null, false);
	Zoom("絵効果雨", 1600, 5000, 5000, Dxl2, false);
	Rotate("絵効果雨", 1600, @20, @0, @21, Dxl2,false);

	FadeDelete("絵色白", 1000, false);

	BezierMove("絵演銀星号2", 1000, (@0,@0){-240,-1000}{-340,-1000}(0,-1300){-50,-1000}{-100,-1000}(-150,-1100){-140,-900}{-120,-1000}(0,-1050), null, false);

	Wait(900);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	MusicStart("SE02c",0,1000,0,1500,null,false);


	FadeDelete("絵演銀星号2", 500, false);

	Wait(300);
//	Move("絵演銀星号", 300, @0, -980, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　也许不可能发生这样的事情。
　但在裂空的世界里，我仿佛听到了光的喊声。

　并非以剑胄为指定对象而发送的装甲通信音。
　而是她真实的声音。

　这便是光无法再追踪到我的身影的证明。

　光大概现在仍注视着。
　深红色的剑胄仍在她的视野范畴内。

　然而，她却已无法看到<RUBY text="····">我的身影</RUBY>了。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

//◆白い閃光の中に景明
//◆ぶっちゃけ裸だが、まあ醜い絵にならんよう誤魔化す。
//◆右腕だけは装甲
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 1000, 1000, Axl2, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ", 18000, Center, Middle, "cg/ev/ev156_銀星号との決着英雄編.jpg");
	Zoom("絵ＥＶ", 0, 2000, 2000, null, true);

	SetBlur("絵ＥＶ", true, 3, 500, 50, false);
	Move("絵ＥＶ", 0, 500, @-200, null, true);

	Delete("上背景");

	CreateSE("SE01","se特殊_電撃_帯電01");
	OnSE("se特殊_電撃_放電02",1000);
	MusicStart("SE01",2000,500,0,1000,null,true);

	Zoom("絵ＥＶ", 2000, 1800, 1800, null, false);
	Move("絵ＥＶ", 2000, 400, -160, null, false);
	Fade("絵暗転", 2000, 0, null, true);

	OnSE("se特殊_電撃_放電01",1000);
	Fade("絵暗転", 100, 500, null, true);
	FadeDelete("絵暗転", 500, false);
	Zoom("絵ＥＶ", 500, 1000, 1000, Axl2, false);
	Move("絵ＥＶ", 500, 0, 0, Axl2, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　最后的电磁拔刀。

　以剑胄为鞘，
　以自身为刃，
　挥出最后的一击。

　我化作了一道光。

　什么都看不到。
　仿佛被白色的闪光埋没。又好似被锁入深深的黑暗。

　我看不到银星号。
　正如银星号现在看不到我一般。

　但这并非我的劣势。

　我能清楚地感受到对方。
　敌人正从正上方笔直地向我冲来。

　因此我只要直线向上前进就可以了。

　抛下唯一的装甲，紧紧地握住右拳。
　向着天顶。

　我的拳绝对会击中敌骑。

　然而——
　银星号无法捕捉到我身影——即使它已经以它那
超常的感官预料到了这一状况——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆交差
//◆銀星号の蹴り
//◆それをすり抜ける景明
	CreateSE("SE01","se戦闘_攻撃_振る04");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	CreateTextureSP("絵演", 18050, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Zoom("絵演", 0, 1100, 1100, null, true);
	Request("絵演*", Smoothing);

	Fade("絵演*", 0, 1000, null, true);
	Zoom("絵演上", 200, 1200, 1200, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	WaitKey(500);

	DrawDelete("絵演", 150, 100, "circle_01_00_1", true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/mb04/012vs0030a14">
「……!!」


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/012vs0040a00">
「——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　然后——
　在双方错身而过的一瞬间，银星号的所有装甲防御都集
中在了要作为打击点的脚部。

　其他部位都处于格外薄弱的状态。
　此时的银星号根本不具备——<k>足以承受与村正的
装甲撞击的强度——!!

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆どがーん。ぶつかった。
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_衝撃_攻撃交錯02");
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	CreatePlainSPadd("絵板写", 19990);
	SetBlur("絵板写", true, 3, 500, 30, false);

	MusicStart("SE01",0,1000,0,750,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1150, 1150, null, false);
	Fade("絵色白", 200, 1000, null, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵白転", 20000, "#FFFFFF");
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");
	FadeDelete("絵白転", 2000, true);
	WaitPlay("SE02", null);

//◆べきぼきばき。生々しい破壊の音
	CreateSE("SE03","se戦闘_破壊_銀星号破壊");
	MusicStart("SE03",0,1000,0,1000,null,false);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　砍裂钢铁的触感。
　剜出血肉的触感。
　粉碎骨头的触感。

　……我正在击毁自己的妹妹。
　我在脑髓深处感受着这一行为所带来的每一个细微的
触感。

　感受所有的触感。
　一丝不落地感受令全身战栗的厌恶感。

　我一直以来都是为此，为了达到这一目的，
　而战斗着。

　这并非我所祈求、所希望的。
　即便如此，我仍以自己的意志，选择了这样的结局。

　因此——
　
　我将击碎妹妹心脏的触感，深深地铭刻进了我的右拳。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆完全破壊
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateSE("SE02","se特殊_鎧_装着03");
	CreateSE("SE03","se特殊_ヒロイン_惨殺03");

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);

	WaitKey(2000);

	SetVolume("SE*", 2000, 0, null);
	Wait(2000);

//	ClearWaitAll(3000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_013.nss"

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


function FlyMoving()
{

$t = $ループムーブタイム;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名", $t, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function FlyMoving2()
{

$t2 = $ループムーブタイム２;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名２", $t2, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}
