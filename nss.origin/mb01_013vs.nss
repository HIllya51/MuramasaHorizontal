//<continuation number="1950">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_013vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb01_013vs.nss","Shoushiken",true);
	
//コックピット用Ｓｅｔ
	CP_AllSet("村正");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg022_山林a_01=true;
	#ev915_鍔競り合う村正と正宗=true;
	#bg025_山脈と森a_01=true;
	#ev916_正宗飛蛾鉄炮·弧炎錫=true;
	#bg022_山林b_01=true;
	#ev902_村正電磁抜刀レールガン_c=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev115_一条の髪に触れる景明_a=true;
	#ev917_正宗朧焦屍剣=true;
	#ev141_正宗ＶＳ村正初戦_a=true;
	#ev141_正宗ＶＳ村正初戦_b=true;
	#bg018_署長執務室_01=true;
	#ev158_一導の最期=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb01_014.nss";

}

scene mb01_013vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_012.nss"



//◆戦闘開始
	PrintBG("上背景", 30000);

	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 3000, 3000, null, true);
	Fade("絵効果雨", 0, 200, null, true);

	CreateTextureSP("絵背景正宗太刀", 7500, Center, Middle, "cg/st/resize/3d正宗_騎航_戦闘al_ex.png");
	CreateTextureSP("絵背景100", 7000, Center, Middle, "cg/bg/resize/bg022_山林a_01.jpg");
	SetShade("絵背景100", HEAVY);
//	Move("絵背景正宗太刀", 0, -1541, -19, null, true);
	Move("絵背景正宗太刀", 0, -1641, -539, null, true);

	CreateSE("SE01","se人体_動作_跳躍03");

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景正宗太刀", 200, -2041, -219, Dxl2, false);
	Move("絵背景100", 200, @-20, @-10, Dxl2, false);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);
	Wait(50);

	Move("絵背景正宗太刀", 950, -1341, 19, Axl2, false);
	Move("絵背景100", 950, @-100, @-50, Axl2, false);

	WaitKey(800);

	CreateColorSP("絵暗転", 18000, "#000000");
	DrawTransition("絵暗転", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	OnSE("se戦闘_動作_刀構え01",1000);

	Delete("絵背景正宗太刀");
	Delete("絵背景100");
//おがみ：コックピット動作定義========================
	Cockpit_AllFade2(300,780,0);
	MyTr_Count(0,352);
	MyLife_Count(0,720);

	CP_SpeedChange(0,0,null,true);
	CP_HighChange(0,0,null,true);
	CP_AziChange(0,160,null,false);


//おがみ：コックピット動作定義========================

	Fade("絵効果雨", 0, 300, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	OnBG(100,"bg022_山林a_01.jpg");
//	StC(1000, @0,@0,"cg/st/3d正宗_立ち_通常.png");
	StC(1000, @0,@0,"cg/st/3d正宗_立ち_戦闘a.png");
	FadeBG(0,true);
	FadeStC(0,true);



	DrawDelete("絵暗転", 150, 100, "slide_03_01_0", true);
	SoundPlay("@mbgm08",0,1000,true);


	//FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条——正宗拔出太刀。
　好长。

　虽不及现已丢失的村正野太刀。
　但具备可称之为斩马刀的刃长与刃宽。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0010a00">
「镰仓末期的典型代表……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0020a01">
《没错。
　开始将太刀长大化时期的产物。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -144, "cg/bg/bg022_山林a_01.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -455, -500, "cg/st/resize/3d正宗_騎航_戦闘al_ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);
	Move("絵演窓上/絵立絵", 0, -1441, 69, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵立絵", Smoothing);
	SetShade("絵演窓上/絵演背景", HEAVY);


	Move("絵演窓上/絵立絵", 30000, -2041, -219, null, false);
	Move("絵演窓上/絵演背景", 30000, @-100, @-50, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　从镰仓时代末期起，人们对太刀的喜好逐渐趋于长而
大，这种风潮一直延续到下一个时代。
　进入战国时期，伴随着使用长枪、步枪的集团战术的
发达而风头不再，但依然盛行于武者之中。

　据说侍奉朝仓氏的豪将真柄十郎左卫门等人使用的就
是长达七尺三寸的大太刀。
　关于这种风潮产生的契机，众说纷纭、尚无定论。

　有一种说法称，其原因在于元日战争。
　据说——苦于对蒙古武者坚固甲铁束手无策的大和武
者，渴求能将其击败的强刀。

　若不具备操纵自如的力量，这种大太刀便只不过是无
用之物罢了。
  何况还受周围环境的限制。

　不适合在地面上、特别是障碍物较多之处使用。
　若按照常理来讲，一条应转为飞行状态——但。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

	Fade("絵色100", 300, 0, null, false);
	Fade("絵演窓上*", 300, 0, null, true);
	Delete("絵演窓上*");
	Delete("絵色100");

	Wait(500);

//◆剣閃数度
//◆木が倒れてくる。ざざー。
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateMovie("絵動画剣戟乱", 18000, Center, Middle, false, false, "dx/mv剣戟_チャキーンチャキキーン.ngs");

	$残時間=RemainTime("絵動画剣戟乱");
	WaitKey($残時間);

	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01c","se自然_森_木々倒れる01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5100, "#FFFFFF");
	Delete("絵動画剣戟乱");
	DeleteStA(0,true);
	Wait(100);
	CreateTextureEX("絵演震", 2000, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	Fade("絵演震", 0, 600, null, true);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Shake("絵演震", 5000, 0, 0, 0, 20, 1000, Axl1, false);
	FadeDelete("絵色白", 800, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0030a00">
「！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0040a01">
《将树木……!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_衝撃_衝突01");
	CreateSE("SE03","se戦闘_衝撃_衝突01");
	MusicStart("SE02",0,800,0,1200,null,false);
	Shake("絵演震", 300, 30, 14, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一条的选择出乎我的意料。
　她当场挥起太刀——一次——两次——三次。

{	MusicStart("SE03",0,800,0,800,null,false);
	Shake("絵演震", 600, 30, 30, 0, 0, 1000, Dxl1, false);}
　从及膝之处被砍断的树木纷纷倒下。
　朝我站立的方向倒来……但这本身对我构不成任何威
胁。

　她这样做另有所图。
　——飘落的树叶霎那间将深蓝色的敌骑遮盖。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0050a00">
（这一招是!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　遵循于脑中盘旋的警钟，我离开了那里。
　直飞而下——可<RUBY text="··">唰唰</RUBY>而来的锐锋
仍从我视野中央逼迫而来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演震");
//◆刺突
//◆弾く。キーン。
	CreateTextureSP("絵背景林", 100, Center, Middle, "cg/bg/resize/bg022_山林a_01.jpg");
	Request("絵背景林", Smoothing);
	Zoom("絵背景林", 0, 500, 500, null, true);
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef016_汎用正面軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 11000, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵背景*", Smoothing);
	SetBlur("絵背景300", true, 3, 100, 100, false);
	Zoom("絵背景300", 0, 700, 700, null, true);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟03");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_山林a_01.jpg", false);
	Zoom("絵背景300", 400, 2000, 2000, Axl3, false);
	Zoom("絵背景林", 400, 700, 700, Axl3, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1300, 1300, Axl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef013_汎用斜め軌道.jpg", true);
	Delete("絵背景100");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　拔出太刀，自下而上抄起，将其打飞。
　此时我已看到。

　色泽鲜艳的相州正宗。
　有如操纵魔术一般，已然<RUBY text="··">移动</RUBY>
至我的面前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0060a01">
《什么——难道是阴义!?》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0070a00">
（不。
　是<RUBY text="··">缩地</RUBY>）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0080a01">
《什么？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_鎧_着地02",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　脚步交替中将偏后的重心推向前方。
　接着直接向前跨步，挥出一刀。

　自右肩向左斜下劈斩。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆逆袈裟
//◆ガキーン
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 11000, 100, Middle, "cg/st/3d正宗_立ち_戦闘a.png");
	Request("絵背景*", Smoothing);
	SetBlur("絵背景300", true, 3, 200, 200, false);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く01");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_山林a_01.jpg", false);
	Move("絵背景300", 400, @100, @50, Axl2, false);
	Zoom("絵背景300", 400, 1100, 1100, Axl3, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 1000, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_汎用斜め軌道.jpg", true);
	Delete("絵背景100");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, false);
	CP_AziChange(800,185,Dxl1,false);
	Move("絵背景林", 800, @100, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　不知是否已经料到，一条举太刀迎击。
　虽抵住了我的剑势——但一条的剑亦被弹开。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景300", 11000, 100, Middle, "cg/st/3d正宗_立ち_戦闘a.png");
	SetBlur("絵背景300", true, 3, 150, 150, false);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	Fade("絵背景300", 100, 1000, null, false);
	Move("絵背景300", 200, @-200, @0, Dxl2, false);
	CP_AziChange(200,175,Dxl2,false);
	Move("絵背景林", 200, @-50, @0, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
　被弹开的剑——
　<RUBY text="····">趁势盘旋</RUBY>。

　一条一把将在头顶上回旋的太刀摔出。

　如我所料。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
//◆ガキーン
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Request("絵背景*", Smoothing);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く03");

	Move("絵背景林", 400, @-100, @0, Axl2, false);
	Move("絵背景300", 400, @200, @0, Axl2, false);
	Zoom("絵背景300", 400, 1500, 1500, Axl2, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 1000, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_汎用斜め軌道.jpg", true);
	Delete("絵背景100");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, false);
	CP_AziChange(600,110,Dxl1,false);
	Move("絵背景林", 600, @-100, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　这是方才过招的角色互换。
　一条砍入，换我接招。

　接着，这次由我利用弹开的势头进行斩击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆逆袈裟
//◆ガキーン
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Request("絵背景*", Smoothing);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟03");

	Wait(200);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 1000, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef010_汎用斜め軌道.jpg", true);
	Delete("絵背景100");
	FadeDelete("絵背景200", 500, false);
	CP_AziChange(600,165,Dxl1,false);
	Move("絵背景林", 600, @100, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　同样的砍击。
　同样的招架。

　若有人从旁观战，想必会疑惑不解吧。
　会想——这是在练习吗？
　
　这个感想极为接近真相。

　使用相同招数的敌我对决，实际上正如练习一样。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateColorEX("絵色100", 100, "BLACK");
	Fade("絵色100", 0, 500, null, true);

	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, middle, "cg/bg/resize/bg022_山林a_01.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, -400, "cg/st/3d正宗_立ち_戦闘a.png");
	Request("絵ＷＬ*", Smoothing);

	Move("絵ＷＬ/絵背景Ｌ100", 0, @312, @0, null, true);
//	Zoom("絵ＷＬ/絵背景Ｌ100", 0, 2000, 2000, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @230, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureEX("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/resize/bg022_山林a_01.jpg");
	CreateTextureEX("絵ＷＲ/絵ＳＴＲ", 500, Center, -400, "cg/st/3d村正標準_立ち_戦闘.png");
	Request("絵ＷＲ*", Smoothing);

	Move("絵ＷＲ/絵背景Ｒ100", 0, @-212, @144, null, true);
//	Zoom("絵ＷＲ/絵背景Ｒ100", 0, 2000, 2000, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);



	Move("絵ＷＬ/絵背景Ｌ100", 500, @-380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 500, @-190, @0, Dxl2, false);



	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(300);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0090a02">
「……唔。
　你，莫非……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　见双方招式如出一辙，拉开些距离后，一条在头盔内
喃喃低语。语气中包含着些许惊讶。
　我的心情也一样。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵ＷＲ*", 300, 1000, null, false);
	Move("絵ＷＲ/絵背景Ｒ100", 500, @380, @0, Dxl1, false);
	Move("絵ＷＲ/絵ＳＴＲ", 500, @190, @0, Dxl2, true);
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0100a00">
「果然是吉野御流吗。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0110a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0120a00">
「最开始布下的圈套是吉野御流，猿隐。
　接下来的极速踏步乃是通过<RUBY text="··">松膝</RUBY>
实现的吉野御流秘传之缩地法。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0130a00">
「而后回击的对打，既是技法也是
练习法——木灵打……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0140a02">
「……是吗。
　你也……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0150a00">
「吉野御流合战礼法。
　虽未得真传，但得秘传。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0160a02">
「吉野御流堂上礼法。
　真传与秘传我都不知，但大致上整套技法
已习完。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……堂上礼法。
　我对这个名称有印象。在系谱上是吉野御流合战礼法
源流的流派。

　双方招式如此酷似，不见得毫无事实依据。
　绝对有着什么深厚的联系。

　如此想来，迄今为止一条也曾数次展示过与我所学极
为相似的组打术。
　那时，我仅仅以为这是偶然的巧合。

　没想到居然是同系流派……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0170a00">
「难怪你会操纵剑冑。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0180a02">
「……意味着我们彼此都能看穿对方的意图。
　这种事……」


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0190a02">
「根本无所谓——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();

	Delete("絵ＷＬ*");
	Delete("絵ＷＲ*");
	Delete("絵色100");

//◆突進
	CreateTextureSP("絵背景林", 100, Center, Middle, "cg/bg/resize/bg022_山林a_01.jpg");
	Request("絵背景林", Smoothing);
	Zoom("絵背景林", 0, 500, 500, null, true);
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef009_汎用下上軌道.jpg");
	CreateTextureEX("絵背景300", 11000, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵背景*", Smoothing);
	SetBlur("絵背景300", true, 3, 100, 100, false);
	Zoom("絵背景300", 0, 500, 500, null, true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	OnSE("se戦闘_動作_空突進01",1000);

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_山林a_01.jpg", false);
	Zoom("絵背景林", 400, 600, 600, Axl3, false);
	Zoom("絵背景300", 400, 2000, 2000, Axl3, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　一条再次以缩地法迫近。
　朝我怀中逼入——太刀刀尖向下<RUBY text="····">反刀一击</RUBY>。

　逆流！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆逆流れ一閃
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);

	Zoom("絵背景林", 800, 500, 500, Dxl1, false);
	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef009_汎用下上軌道.jpg", true);
	Delete("絵背景100");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　向后方退避已来不及。
　飞起。

　朝上方一跃。
　就能避开从胯下呼啸而过的太刀刀风。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆跳躍
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se人体_足音_鎧歩く03",1000);
	Delete("絵背景林");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg025_山脈と森a_01.jpg");
	Move("絵背景50", 0, -512, -576, null, true);

//おがみ：コックピット動作定義========================
	CP_HighChange(5000,412,Dxl3,false);
	CP_SpeedChange(5000,315,Dxl2,false);

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@絵背景50",1);

//おがみ：コックピット動作定義ここまで========================
	Move("絵背景50", 5000, @0, -288, Dxl3, false);
	DrawDelete("黒幕１", 300, 100, "slide_02_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　就算不给飞行推进器点火，这种程度的飞跃也不成问
题。
　穿过林间缝隙，圆往寺一带尽收眼底。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0200a01">
《直接转为骑航战也是一招哦？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0210a00">
「不——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我没有同意剑冑的提案，朝向地面持稳太刀。
　武者之能俱在空中。从这个意义上来说，村正的提议
是对的。

　但现在是雨天。
　探查功能大受限制。

　在这种情况下进行飞行战，已经不能称之为战斗了。
　而是赌博。想必一条会心生厌恶，手持那把大太刀
的同时将翼型装甲收起吧。

　而我，也无法以这种投机的心绪去面对战斗。
　
　就算有这般心情，现在也不行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0220a00">
「没那个时间。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0230a01">
《——!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗飛翔
//◆一閃
//◆がきゃーん
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 11000, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Rotate("絵背景300", 0, @0, @0, @50, null,true);
	CreateTextureEX("絵背景400", 18000, Center, Middle, "cg/ev/ev915_鍔競り合う村正と正宗.jpg");
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	SetBlur("絵背景400", true, 3, 300, 80, false);


	Move("絵背景300", 0, @0, @300, null, true);


	Request("絵背景*", Smoothing);
	SetBlur("絵背景300", true, 3, 100, 100, false);
	Zoom("絵背景300", 0, 500, 500, null, true);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg025_山脈と森a_01.jpg", false);
	Rotate("絵背景300", 800, @0, @0, @-50, Axl1,false);
	Move("絵背景300", 800, @0, @-300, Dxl1, false);
	Zoom("絵背景300", 800, 2000, 2000, Axl3, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(400);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 2000, 2000, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 200000, 2, 3, 0, 0, 1000, null, false);
	Shake("@絵背景300", 200000, 2, 1, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef003_汎用移動.jpg", true);
	Delete("絵背景100");
	Zoom("絵背景50", 0, 2000, 2000, null, true);

	Zoom("絵背景400", 500, 1000, 1000, Dxl2, false);
	Fade("絵背景400", 500, 1000, null, true);

	FadeDelete("絵背景200", 500, true);
	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　相当于高射炮的一发炮弹。
　正宗为追逐我而跃起的一击。

　没有翅膀，武者在空中就不能自如活动。
　无法回避，只能正面挡住。

　村正的刚力勉强抵住这重重一击。
　激烈交锋。在没有立足点的半空，毫不留情地互袭。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0240a00">
「以卧龙逼敌腾空，再以升龙给予致命一击。
　……正统的完美配合。」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0250a02">
「随你怎么说！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	FadeDelete("絵背景400", 300, false);
	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	Move("絵背景300", 200, @0, @100, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　彼此的骑体都受到地心引力的牵制。
　正宗的一只脚与我的脚从内侧缠在一起。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");

	CreateSE("SE01","se特殊_鎧_駆動音01");
	CreateSE("SE02","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_RollBarMove("@絵背景50", 1000, @-180, AxlDxl, false);
	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	Move("絵背景300", 300, @0, @100, Dxl2, true);
//	Fade("絵背景100", 400, 1000, null, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵背景300", 400, @0, @-200, AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
　趁势挤入。
　以钳住的脚为轴，转变体势。

　正宗在上。村正在下。
　敌骑的太刀，瞄准我的咽喉——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0260a00">
（怎能让你得逞）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　吉野御流为“二虎竞落”之法。
　仿效过于专心争斗而从山上滚落，却都还咬着对方咽
喉不放的二虎的故事。空中战斗中若双方骑体相缠，则
要占据上方位置。

　落地后，将敌方压向地面挤压致死。
　此技法决不简单，然而一条掌握了。

　可见为良师所传授。
　但——我也是。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_鎧_打撃01",1000);


	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	CP_RollBarMove("@絵背景50", 1000, @-180, AxlDxl, false);
//	Rotate("絵背景100", 600, @0, @0, @180, null,false);
//	Fade("絵背景100", 400, 0, null, true);

	Wait(500);

//◆更に逆転
	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0270a02">
「……!?　这——」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0280a00">
「这是<RUBY text="··">回敬</RUBY>。
　知道吗？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

//おがみ：コックピット動作定義========================
	CP_HighChange2(500,0,null,false);
	CP_SpeedChange2(500,0,null,false);

	MyLife_Count(0,264);

	CP_AltChange2(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_RollBarMove2(0,0,null,true);

//	CP_AltChangeA();
//	CP_RollBarMoveA();
	BGMoveDelete();

//おがみ：コックピット動作定義ここまで========================

	Cockpit_AllFade0();
	Delete("絵背景*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　我模仿一条的做法，以缠绕的脚为轴反转。
　但——不同于一条的纵向旋转，而是横向。

　上下位置逆转。
　村正在上。正宗在下。

　优势在我。
　但一条的反应也很迅速。

　她立刻翻转体势，再次据上位。

　而我又一次翻转，重占优势。

　——数次变化。
　落地的瞬间哪方获胜，无从知晓。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SE01","se戦闘_衝撃_鎧転倒02");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	CreateTextureSP("絵背景150", 100, Center, Middle, "cg/bg/bg022_山林a_01.jpg");

	DrawDelete("黒幕１", 300, 100, "slide_02_01_0", true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵背景150", 1000, 0, 20, 0, 0, 500, null, false);

	Wait(700);

//◆墜落
	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0290a02">
「唔!!」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0300a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　双方都没能得逞。
　这一点再清楚不过。

　从悬浮到着陆的急速过渡伴随着平衡感的紊乱，阻
碍了想要迅速站起的双足。
　恢复姿势不过在呼吸之间——却仿佛千年般漫长。

　但深蓝色的敌骑同样需要花费漫长的瞬间。
　仿佛镜中人般同时站起、对峙。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_山林a_01.jpg", true);

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0310a02">
「呀啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　找准时机、计算呼吸——看来这种<RUBY text="····">磨磨蹭蹭</RUBY>的思量与
这位少女无缘。
　迸发出丝毫不显虚弱的狰狞气势袭来。急促的劲头宛如
炮弹。

　愚直而又刚直的直线突进。
　若速度够快便能构成巨大威胁，而一条／正宗的脚力超
出了所需速度的五成。

　——但。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0320a00">
（太过正直……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se人体_動作_跳躍01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　以可称之为迅雷的极速突入击尺距离，一条举起太刀。
　利刃一旋——

{	MusicStart("SE02",0,1000,0,1000,null,false);}
　于此之前。
　我在将剑掷出的同时踏出半步，屈身探入对方怀中。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 16200, Center, 0, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");

	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/bg022_山林a_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16300, -550, -500, "cg/st/3d正宗_騎航_戦闘a.png");
	CreateTextureEX("絵演窓上/絵立絵２", 16300, 200, -200, "cg/st/3d村正標準_騎航_通常.png");

//	Rotate("絵演窓上/絵立絵", 0, @0, @0, @180, null,true);
	Request("絵演窓上/絵演背景", Smoothing);

	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	Move("絵演窓上", 0, @0, @-338, null, true);

	OnSE("se戦闘_動作_空突進01",1000);


	Move("絵演窓上", 300, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, true);
	Move("絵演窓上/絵立絵", 300, @200, @0, Dxl2, false);
	Move("絵演窓上/絵立絵２", 300, @-200, @0, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, false);
	Fade("絵演窓上/絵立絵２", 300, 1000, null, true);


	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0330a02">
「……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0340a00">
「<RUBY text="····">借我一用</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("絵演窓*", 300, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　你自己的力量。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演窓*");
	CreateSE("SE01","se特殊_鎧_装着05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoom(10000, 300, 100, "cg/bg/bg022_山林a_01.jpg", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
　右手从敌骑身侧插入，绕至背部。
　配合腰身横扫右脚。

　扫腰（注：柔道的一种招式）。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 16200, Center, 0, 1024, 288, true);
	SetAlias("絵演窓上","絵演窓上");

	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/bg022_山林a_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16300, -135, -950, "cg/st/3d正宗_騎突_戦闘.png");

	Rotate("絵演窓上/絵立絵", 0, @0, @0, @180, null,true);
	Request("絵演窓上/絵演背景", Smoothing);

	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	Move("絵演窓上", 0, @0, @-288, null, true);

	OnSE("se戦闘_動作_空突進01",1000);


	Move("絵演窓上", 300, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, false);

	Move("絵演窓上/絵立絵", 300, @-200, @1000, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	SetFwC("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0350a02">
「啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	Move("絵演窓上/絵立絵", 200, @0, @400, Axl2, false);
	DrawTransition("絵演窓上*", 200, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", false);
	FadeDelete("絵演窓上*", 300, true);
	FadeDelete("絵背景200", 300, true);

	Wait(300);
	OnSE("se戦闘_衝撃_鎧転倒03",1000);

	Shake("絵背景150", 1000, 0, 10, 0, 0, 500, null, false);

	Wait(1000);
	Delete("絵背景150");
//◆投げられる正宗
//◆どんがらごろごろ



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　……以极其基本的摔技，凭借恨不得申请写入教科书
的完美动作决出胜负。
　转了一圈后背部着地，一条的身体随着余势不停地大
幅翻滚。

　我拾起太刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0360a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　村正的声音催促着我。
　不用说我也知道。

　现在是绝佳时机。

　制胜的机会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0370a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0380a00">
「真是难得的经历啊，一条。
　对于将生命托付给天空的武者来说，<RUBY text="···">被摔出</RUBY>
的机会十分罕见。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0390a02">
「唔……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0400a00">
「虽然你技法出色、训练有素，但若仅仅依靠
技法，战术的施展范围就会大受限制。
　我要告诉你，还有攻其不备这一手。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0410a00">
「比如说方才的……
　不过是最基本的柔术罢了，但若正确把握使
用的时机，就会变成非常奏效的招数。武者技
法并不是只有甲冑剑法。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0420a02">
「……趁人不备。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え03",1000);
	StC(1000, @0,@100,"cg/st/3d正宗_立ち_抜刀.png");

	Move("@StC*", 500, @0, @-100, Dxl2, false);
	FadeStC(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　一条站了起来。
　令人佩服的是她的手从未放开大太刀。

　她用愠怒的目光看着我。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0430a02">
「没有乘胜追击而是解说招式吗。
　你从刚才起就一味地防御。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0440a01">
《……》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0450a02">
「真游刃有余啊……
　攻其不备吗。啊，是吗。如果你喜欢这一手
的话我就让你见识见识……」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0460a02">
「正宗！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01",1000);

	StC(1000, @50,@0,"cg/st/3d正宗_立ち_戦闘b.png");
	FadeStC(300,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　蓝色武者伸出一只手臂。
　就像长枪一样。手中什么也没拿。

　手腕部分是……筒形器具。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0470a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　……炮口？
　不会，怎么可能。

　镰仓时代的剑冑不可能有这种装备。
　但一条却在这一点上注入战气，吐出短短一个词。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0480a02">
「吞。」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0490b40">
《明白。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);


//◆鉄板が曲がる音＆肉を裂く音
	CreateSE("SE01","se戦闘_正宗_鉄砲準備02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1000);

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0500a02">
「唔啊——」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0510a01">
《……!?》


{	FwR("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0520a02">
「唔，啊，呀——!!」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0530a00">
「什——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　——在干什么？

　这种<RUBY text="··">剥离</RUBY>的声音……
　是什么——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0540a02">
「啊啊啊，啊,啊啊——!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	SetVolume("SE*", 1000, 0, null);
	DeleteStC(300,false);
	Fade("絵効果雨", 300, 0, null, false);


//◆「鉄炮」射出
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev916_正宗飛蛾鉄炮·弧炎錫.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 300, 200, false);

	CreateSE("SE01","se戦闘_正宗_鉄砲発射01");

	EffectZoomDXadd(10000, 500, 500, "#FFFFFF", "cg/ev/ev916_正宗飛蛾鉄炮·弧炎錫.jpg", false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 1000, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 100, 1000, null, true);
	Wait(1500);
	Delete("絵効果雨");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　炮筒开火。

　射出——炮弹。
　那的确是炮。不可能存在的炮。

　不。

　……不对。
　要说是炮弹，却既无速度、也无威力。

　简直就像安上发条射出的一般。
　若说那是炮弹，未免太过懈怠。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//◆読み「だぁぁぁい」
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0550b40">
《ＤＡＡＡＡＡＡＡＡＡＡＩＩＩＩ——》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　虽是极近距离的炮击，但还是有果断躲避的余裕。
　我微微扭身。如此便足够。

　炮弹向村正的甲铁接近。却未打中。
　失去目标的炮弹渐渐远去。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/ev/ev916_正宗飛蛾鉄炮·弧炎錫.jpg", false);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//◆読み「だらぁーーーー!!」
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0560b40">
《ＤＡＡＡＲＡＡＡＡＡＨＨＨＨＨＨＨＨ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 1500, "WHITE");

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	Zoom("絵背景100", 100, 2000, 2000, Axl2, false);

	Fade("絵色100", 100, 1000, Axl2, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　
　　　　　　　时间和空间都消失了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「鉄炮」爆砕。
//おがみ：素材定義
	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateColorEXadd("絵色100", 17500, "WHITE");
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1200, 1200, null, true);
	SetBlur("絵背景500", true, 2, 200, 70, false);

	CreateSE("SE05","se戦闘_破壊_大爆発01");
	CreateSE("SE01","se戦闘_破壊_爆発07");


//おがみ：爆発動作
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);

	FadeDelete("黒幕１", 100, false);
	Fade("絵色100", 150, 0, null, false);
	Fade("絵背景400", 0, 1000, null, true);
	DrawTransition("絵背景400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("絵背景400", 0, -312, -100, null, true);
	Wait(50);
	Move("絵背景400", 0, -350, -150, null, true);
	Wait(50);
	Move("絵背景400", 0, -510, -120, null, true);


	Fade("絵色100", 50, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景400");
	Delete("疾走カー2");

	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);
	FadeDelete("絵色100", 2000, true);



	Wait(2000);

	PrintGO("上背景", 20000);

	CreateColorSP("絵色100", 19000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	FadeDelete("上背景", 3000, true);

	Wait(2000);

	CreateSE("SE10","se自然_水_雨音02_L");
	MusicStart("SE10",3000,1000,0,1000,null,true);


//◆辺り一面ふっ飛ばしましたって感じ。破壊力過剰。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　忘我。

　幽离。

　……苦痛。
　将我那曾一度消逝无踪的的世界重新构筑起来的，是
贯穿全身的疼痛。

　铁甲所感觉到的冰冷。
　令我意识到雨仍在下。

　雨点从正面浇灌而来。
　看来我在丧失意识的刹那，倒在了地上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 500, null);


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0570a00">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MyLife_Count(0,243);
	CP_IHPChange(0,4,null,false);


	Cockpit_AllFade2();

	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg022_山林b_01.jpg");
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg022_山林b_01.jpg");
	CreateTextureSP("絵背景300", 100, Center, InBottom, "cg/st/3d正宗_立ち_抜刀.png");
	CreateTextureSP("絵背景400", 100, Center, InBottom, "cg/st/3d正宗_立ち_抜刀.png");
	Zoom("絵背景200", 0, 1100, 1100, null, true);
	FadeF4("絵背景200", 0, 300, 10000, 0, 0, Dxl3, false);
	FadeF4("絵背景400", 0, 300, 10000, 0, 0, Dxl3, false);

	OnSE("se特殊_鎧_駆動音02",1000);
	SetVolume("SE10", 6000, 0, null);
	SoundPlay("@mbgm13",0,1000,true);


	FadeDelete("絵色100", 1000, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　猛地坐起上半身。
　昭示着多处负伤、炙烤着神经。

　敌骑伫立在前方。
　散发着昏暗光芒的骑体看上去正在奇妙地摇晃。似乎
是视野不稳定所致。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_コックピット_起動音04");



	Fade("絵背景200", 300, 0, null, false);
	Fade("絵背景300", 300, 0, null, false);
	Fade("絵背景400", 300, 0, null, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0580a00">
「刚才那是…………
　村正。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0590a00">
「村正。」


{	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(100);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0600a01">
《——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵背景200");
	Delete("絵背景300");
	Delete("絵背景400");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　不知道是不是冲击使功能暂时休止了。
　剑冑的反应延迟了数秒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0610a01">
《主君……》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0620a00">
「告诉我损伤情况。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0630a01">
《……浑身布满箭头……
　简直就像刺猬。》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0640a01">
《将严重妨碍战斗行动。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0650a00">
「箭头？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0660a01">
《是小铁片。
　扎满全身各处。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　…………也就是说。
　刚才的炮弹，是榴弹的一种吗。

　其目的并非击中目标，而是在炸药破裂的同时使弹内
铁片四散，藉此杀伤敌人。
　……但。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0670a00">
「为何……？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0680a01">
《…………》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0690a00">
「为何老式剑冑会有这种装备……」


//◆読みは「てつほう」か。
{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0700a01">
《……步枪。》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0710a00">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　……步枪？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0,@0,"cg/st/3d正宗_立ち_抜刀.png");
	FadeStC(300,true);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0720b40">
《即便误入歧途，也勉强算个锻造师。
　看来汝并未怠慢过去所学。》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0730a01">
《……答对了吗。
　虽然难以置信。》


//◆ボイスは「てつほう」
{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0740b40">
《诚然，此乃“步枪”……
　正宗七机关之一。》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0750b40">
《该武器过去蒙古曾用过。》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0760a00">
「！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　原来如此。
　著名的竹崎季长所绘的元日战争画卷。

　其中所描绘的古怪兵器“步枪”——
　曾被称为震天雷的黎明火器。

　如此想来，相州正宗会知道也就不奇怪了……！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0770a01">
《……那种东西。
　居然让他给造出来了。》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0780a00">
「恐怕是将武者的热量转化为一种气体炸药，
以代替常规炸药，铁片的作用则是割伤甲铁
……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　的确，绝非平凡构想。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0790a01">
《嗯。
　但是，不是那么回事哟。主君。》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0800a00">
「……？」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0810a01">
《那个武器的原料的确是甲铁。
　是与操纵者肉体<RUBY text="···">一体化</RUBY>的甲铁。》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0820a01">
《<RUBY text="··">撕裂</RUBY>自己的肉体来杀敌，
你觉得这种攻击手段可能存在吗？》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0830a00">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　我重新看了看一条。

　……她呼吸紊乱。
　而且似乎脚下不稳的样子。

　刚才所看到的摇晃，并不是错觉。
　一条很痛苦。

　……如同将自己的肉体割裂、扔向敌人的攻击法。
　难怪她会这样。

　而且——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0840a01">
《缺陷严重的兵器。》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0850b40">
《……》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0860a01">
《与射程较短相反，攻击范围则<RUBY text="··">过广</RUBY>。
　……你自己也中招了吧。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　正如村正所说
　很明显，方才的爆炸使正宗也受到了损伤。

　当然，直接遭受攻击的是我方……不，或许并无太大
区别。
　一条全身也插着多根锐利的铁针。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0870b40">
《呵呵呵……
　咕哈哈哈哈哈哈哈哈哈哈!!》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0880b40">
《<RUBY text="··">那又</RUBY>如何？
　邪甲之流！》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0890a01">
《……你说什么？》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0900b40">
《莫侮辱。
　吾之理念。吾主之信念！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0910b40">
《正宗<RUBY text="·····">将贯彻正义</RUBY>。
　此乃重点。其余皆琐事。》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0920b40">
《耗费己之甲铁，此法才最奏效。
　若不舍殃及自身，便威力不足。》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0930a02">
「没错……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0940b40">
《粉碎邪悪之刚强！
　正宗有此便足够。别无所求！》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0950a02">
「对。
　没错。正宗。」


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0960a00">
「……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0970a01">
《……太乱来了。》


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え03");
	CreateTextureEX("絵背景300", 100, Center, InBottom, "cg/st/3d正宗_立ち_戦闘a.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStC(160,true);
	Fade("絵背景300", 240, 1000, null, true);


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0761]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0980b40">
《藐视吾吗，村正……
　然汝乃蒙昧无知。尚不知灵魂献予正义之士的
不屈不挠。》


//◆読み「だぁぁいあぁぁぁぁ!!」
{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0990b40">
《待会就会明白了!!
　ＤＡＡＡＩＩＡＡＡＡＡＨＨＨＨＨ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景400", 100, Center, -200, "cg/st/3d正宗_騎突_戦闘.png");
	CreateTextureEX("絵背景150", 100, -512, -288, "cg/bg/resize/bg022_山林b_01.jpg");
	Zoom("絵背景150", 0, 600, 600, null, false);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟03");



	OnSE("se戦闘_動作_空突進01",1000);

	FadeDelete("絵背景300", 200, false);
	Fade("絵背景150", 350, 1000, null, false);
	Zoom("絵背景150", 350, 1000, 1000, Axl2, false);
	Zoom("絵背景400", 350, 2000, 2000, Axl2, false);
	Fade("絵背景400", 150, 1000, null, true);

	Wait(100);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	FadeDelete("絵背景400", 200, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/bg/bg022_山林b_01.jpg", true);


//◆正宗、突進
//◆一撃。ガシーン。


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1000a00">
「……唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　一条不顾浑身是伤，直冲而来。
　一击。

　而我方反应相对稍迟缓。
　束手无策，只能承受这一冲击。

　振动传遍全身铁甲，连骨头都麻痹了。
　于此，再一打——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆もう一撃
//◆がーん。
	CreateTextureEX("絵背景300", 100, Center, InBottom, "cg/st/3d正宗_立ち_戦闘a.png");

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	Fade("絵背景300", 200, 1000, null, true);


	CreateTextureEX("絵背景500", 18000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Request("絵背景*", Smoothing);

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟03");

	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵背景150", 200, @300, @0, Axl2, false);
	Move("絵背景300", 400, @200, @0, Axl2, false);
	Zoom("絵背景300", 400, 1500, 1500, Axl2, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景500", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景500", 0, 1000, null, true);

	Wait(150);
	CP_AziChange(1000,205,Dxl1,false);
	Move("絵背景150", 1000, @-200, @0, Dxl2, false);
	Zoom("絵背景200", 1000, 1000, 1000, Dxl2, false);
	Zoom("絵背景200", 1000, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_汎用斜め軌道.jpg", true);
	Delete("絵背景500");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, true);


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1010a00">
「唔……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1020a01">
《主君！》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1030a00">
「没有大碍。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　将脚步不稳的腿向后踢——佯装后退，转了一圈，
从敌骑侧面逃开。
　方才遭受弹击的糟糕影响只允许我使出这种小花招。
果然肌肉的力量尚未完全恢复吗。

　一瞬迷失目标的一条，再次捉捕我，并咋起舌来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1040a02">
「啧……真顽固。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1050b40">
《恶名昭著之甲铁。
　令人恶心……》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1060a02">
「但是，并没有什么了不起。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1070b40">
《诚然。
　若无法斩击，将其<RUBY text="··">击碎</RUBY>便是。》


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1080a02">
「嗬啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗進撃

	CreateTextureEX("絵背景300", 100, Center, InBottom, "cg/st/3d正宗_立ち_戦闘a.png");
	Move("絵背景300", 0, @100, @0, null, true);
	SetBlur("絵背景300", true, 2, 500, 100, false);


	OnSE("se人体_動作_跳躍02",1000);
	EffectZoomDX(18000, 300, 100, "#FFFFFF", "cg/ef/ef003_汎用移動.jpg", false);
	CP_AziChange(200,165,Dxl2,false);
	Move("絵背景150", 200, @-200, @0, Dxl2, false);
	Move("絵背景300", 200, @-100, @0, Dxl2, false);
	FadeDelete("絵背景150", 200, false);
	Fade("絵背景300", 200, 1000, null, true);

	Wait(200);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1090a01">
《……说话也不积点口德。
　主君？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1100a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1110a01">
《我们将那家伙击碎。
　没问题吧？》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1120a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正帯電
	CreateColorEXadd("絵色100", 1500, "BLUE");

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 150, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 50, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("絵色100", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　我回应村正的要求，运气丹田。
　释放热量。

　渐渐逼近的一条，乍一看是鲁莽的冒进。
　但其姿势较低，重心也在下。

　想必是吸取了上次的教训。
　很好——但果然还是太嫩了。

　看错了我方的<RUBY text="··">诱导</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1130a01">
《磁装·正极——》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1140a00">
「——磁力加速。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆磁力加速
//◆相互剣撃。ガキーン。
	Move("絵背景300", 300, @100, @50, Axl2, false);
	Zoom("絵背景300", 300, 1200, 1200, Axl2, false);
	FadeDelete("絵背景300", 300, false);

	Wait(200);
	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
	EffectZoomDX(18000, 500, 0, "#FFFFFF", "cg/ef/ef011_汎用斜め軌道.jpg", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　用与正宗的刀击对称的一击迎敌。
　互击。彼此弹回对方的攻击，却又直接转入下一次
的攻击。

　吉野御流,木灵打。
　若双方用此招对战，就会像刚才的实证所示，情况
如同练习。

　——但。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雷閃

	OnSE("se特殊_電撃_放電02",1000);
	EffectZoomadd(10000, 150, 100, "cg/ef/ef003_汎用移動.jpg", true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1150a02">
「——!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　不会成为练习。
　若剑速有显著差异，就不再是练习了。

　利用甲铁磁力侵蚀优化动作，消除多余的浪费。
　如同忘却关节存在般轻盈。

　太刀如虎添翼般舞动。
　
　——吉野御流，木灵打之村正版。

　飞燕打。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一撃
//◆ばきゃーん。

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ef/ef009_汎用下上軌道.jpg");

	CP_PowerChange(300,400,null,false);

	OnSE("se戦闘_攻撃_剣戟弾く02",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);
	Fade("絵背景200", 100, 1000, null, false);
	EffectZoomadd(10000, 200, 200, "cg/ef/ef003_汎用移動.jpg", true);
	FadeDelete("絵背景200", 1000, true);


	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1160a02">
「呃……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　没有招式能对付这种<RUBY text="·····">犯规的手法</RUBY>。
　将近在眼前、甚至能感觉到呼吸的敌人吹散。

　吹散——
　没错，并非被斩。而是刀被弹开。

　惊人的坚硬之感。
　能与村正的坚固相匹敌。

　要斩断如此坚硬的甲铁……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1170a01">
《主君，别给她时间！
　就是现在！》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1180a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　结论一致。
　将大刀收回鞘中。

　必须趁此机会决一胜负。

　体内力量游走。
　再次。却无可比拟的力量。

　目标只有一个。
　——终焉之太刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1190a02">
「混蛋……啊！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1200b40">
《主君！　站起来！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @-50,@80,"cg/st/3d正宗_立ち_抜刀.png");

	OnSE("se人体_足音_鎧歩く03",1000);

	Move("@StC*", 500, @50, @-50, Dxl2, false);
	FadeStC(500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　虽说攻击并不彻底，但毕竟吃了武者一太刀，可一
条的恢复速度却超乎常理的迅速。
　她已直起膝盖，重新握剑。

　而且——
　
　那是什么。

　太刀周围升起阳炎，近旁的雨都化作雾气散开。
　…………在向太刀内注入热量吗？

　这搞不好也和方才的步枪一样，是五郎正宗自带的装
备。
　但，我不会给他们炫耀性能的机会。

　我的动作比较快！
　垂死挣扎，为时已晚。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);

	CreateSE("SE01","se特殊_陰義_レールガン穿_準備");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景200", 500, 1000, 1000, Dxl2, false);
	Fade("絵背景200", 500, 1000, null, true);

	Delete("絵効果雨");

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1210a00">
「电磁拔刀——“祸”。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぎゅいーん。エネルギー充填
//◆エネルギー解放。どがー。
	CreateColorEXadd("絵色100", 18000, "WHITE");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg");
	Request("絵背景300", AddRender);
	Zoom("絵背景300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se特殊_電撃_帯電01");

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("絵背景300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("絵色100", 1000, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景300");

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 2000, 0, null);

	Wait(500);

//◆そこへ割り込み画像
//◆笑顔の一条、罪のイメージ、殺すと告げる一条等
	CreateTextureEX("絵背景400", 17500, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	CreateTextureEX("絵背景500", 17500, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_a.jpg");

	Fade("絵背景400", 0, 1000, null, true);
	Fade("絵色100", 500, 200, null, true);

	Wait(500);
	Fade("絵色100", 200, 1000, null, true);
	Fade("絵背景500", 0, 1000, null, true);
	Fade("絵色100", 200, 200, null, true);

	Wait(500);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景400");
	Delete("絵背景500");

//◆レールガン
//◆空振り
	CreateSE("SE03","se特殊_陰義_レールガン穿_発動");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(2500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1220a01">
《……主君!?》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1230a00">
「唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Cockpit_AllFade0();
	FadeDelete("絵色100", 2000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　——打——偏了——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1240a02">
「呃……」


{	FwC("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1250a02">
「好……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗の太刀が灼熱。但し腕ごと。
//◆ヒートサーベル
	CreateColorEXadd("絵色100", 1500, "WHITE");
	CreateColorEXadd("絵色下敷き", 120, "WHITE");

//	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
//	Zoom("絵背景200", 0, 2000, 2000, null, true);
//	SetBlur("絵背景200", true, 3, 300, 200, false);

	CreateSE("SE02","se戦闘_正宗_朧焦屍剣");
	CreateProcess("プロセス１", 12000, 0, 0, "Shoushiken");

	Fade("絵色100", 200, 1000, null, true);
	Fade("絵色下敷き", 0, 1000, null, true);
	MovieSESet(150,"mv焦屍剣","se戦闘_正宗_朧焦屍剣");

	Fade("絵色100", 300, 0, Axl2, false);
	MovieSEStart(0);
	Request("プロセス１",Start);

	Fade("絵色100", 200, 1000, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
//	Fade("絵背景200", 0, 1000, null, false);




	CreateSE("SE01","se戦闘_正宗_朧焦屍剣");
	CreateSE("SE02","se戦闘_攻撃_火炎放射");
	MusicStart("SE01",0,1000,0,1000,null,false);
//◆正宗ヒートソード
	CreateTextureEX("絵正宗演出用", 100, Center, Middle, "cg/ev/resize/ev917_正宗朧焦屍剣l.jpg");
	CreateTextureEXadd("絵正宗炎", 100, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	CreateTextureEX("絵正宗２", 100, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
	SetBlur("絵正宗演出用", true, 2, 500, 70, false);
	SetBlur("絵正宗炎", true, 2, 500, 200, false);
	Zoom("絵正宗炎", 0, 2000, 2000, null, true);
	Rotate("絵正宗炎", 0, @0, @0, @-30, null,true);

	DrawEffect("絵正宗炎", 50, "LowWave ", 0, 100, null);

	Delete("絵色下敷き");

	Fade("絵正宗炎", 0, 1000, null, true);
	FadeDelete("絵色100", 300, false);
	Fade("絵正宗演出用", 200, 1000, null, false);
	Move("絵正宗演出用", 500, -1024, 0, Dxl2, true);

	Delete("絵正宗");

	WaitKey(300);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵正宗炎", 1000, false);
	Zoom("絵正宗演出用", 800, 500, 500, Axl3, false);
	Move("絵正宗演出用", 800, -512, -288, Axl3, false);

	Wait(500);

	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ev/ev917_正宗朧焦屍剣.jpg", false);
	Fade("絵正宗２", 200, 1000, null, true);
	Delete("絵背景効果線");
	Delete("絵正宗");


//	Zoom("絵背景200", 1500, 1000, 1000, Dxl3, true);
	Wait(1000);
	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1260a02">
「唔啊啊啊啊啊!!」


//◆読み「だぁいだらーーー!!」
{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1270b40">
《ＤＡＡＩＥＤＡＲＡＡＡＡＡＡＡＨＨＨ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ヒートソード一閃
//◆ずばー。
//◆斬られました。

	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
	Request("絵背景300", AddRender);
	SetBlur("絵背景300", true, 3, 300, 200, false);

	CreateColorEXadd("絵色100", 18000, "WHITE");

	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);


	Fade("絵背景300", 1000, 1000, null, false);
	Zoom("絵背景300", 2000, 2000, 2000, Axl3, false);
	Fade("絵色100", 2000, 1000, Axl3, true);

	Delete("絵正宗*");

	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE04","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(1000);
	MusicStart("SE04",0,1000,0,1000,null,false);

	Wait(2500);

	SetVolume("SE*", 3000, 0, null);


	Delete("絵背景200");
	Delete("絵背景300");

	Request("プロセス１", Stop);
	Request("プロセス１", Disused);
	Delete("プロセス１");


	PrintGO("上背景", 25000);
	CreateColorSP("絵色100", 15000, "BLACK");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg022_山林b_01.jpg");
	FadeDelete("上背景", 3000, true);

	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

	Wait(2000);

	FadeDelete("絵色100", 1500, true);

	Wait(500);

//◆正宗視点

	CreateSE("SE10","se自然_水_雨音02_L");
	MusicStart("SE10",3000,1000,0,1000,null,true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1280b40">
《呀哈哈哈哈哈哈——!!
　如何……可懂得了？妖甲！》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1290b40">
《恶有恶报！
　正义终将胜利！
　世间真理，在此验证！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 3000, 0, null);

	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ev/ev141_正宗ＶＳ村正初戦_a.jpg");
	Fade("絵背景200", 1000, 1000, null, true);

	Delete("絵効果雨");
	Delete("絵背景100");

	SoundPlay("@mbgm31",0,1000,true);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　凑斗景明靠在树上。

　很明显，他已失去站起的力气。
　遭受如此斩击，肯定动弹不得。

　伤口<RUBY text="··">滋滋</RUBY>作响。

　仿佛在燃烧一般。
　还未冷却的烈焰。

　与之相似的声音，也从自己的右臂传来。
　握着太刀的手感到灼热。

　没有痛感。
　大概，神经已经被烧断了吧。

　手臂与太刀烧粘在一起，已如一根棒子。
　但仍然可以活动。

　正宗，只要武者渴望战斗，就会给予其力量。

　走近深红色的武者面前。
　将炙烤雨点，燃起白烟的刀，架在他脖子上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1300a02">
「我要……杀了你……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1310a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　没有回答。
　看眼睛就知道他在听着。却没有任何反应。

　不仅是语言，连目光都不曾有。
　令人没来由地火大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1320a02">
「以为我做不到吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
　是错觉吗。
　总觉得是第二次说这话。

　若果真如此，我为何如此眷恋地重复这句话呢。
　明明不记得他曾经否认过。

　头好疼。
　然而，某些远远超出头疼的痛苦，
从内心深处翻涌而上。

　不行。

　这样不行。
　这男人不是好人。

　应该结束这一切。
　砍下罪人的首级吧。

　这男人是个杀人犯。
　杀了好几个与六波罗和银星号毫无瓜葛、无辜的人。
他自己也承认了。

　我不会原谅这种人。
　既然现已得到正宗的力量，消灭这种人就是我的
责任。

　正义的伙伴根本不存在。
　所以，由我来支持正义。

　身为拥有非凡力量的武者，却用这种力量杀害弱者。
这种家伙，我要亲手消灭。
　不管理由为何，决不饶恕。

　不可以原谅。
　有人这样教诲我。

　………………………………是谁？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1330a02">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　心脏停了一拍。
　呼吸停滞，浑身颤抖。

　快点动手吧。
　既然无法饶恕恶，那就杀掉便好。

　很快就能结束。
　一剑刺下就结束了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1340a02">
「为什么啊……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1350a00">
「……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1360a02">
「为什么……
　一句话都不说。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
　是谁在固执地质问着凑斗景明。
　我明明已经决定不原谅他了。

　真烦……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1370a02">
「说啊！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1380a00">
「……」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1390a02">
「有苦衷的吧!?
　无可奈何对吧!?」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1400a02">
「你只能那样做，不是吗!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 12000, Center, Middle, "cg/bg/bg018_署長執務室_01.jpg");
	Delete("絵効果雨");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw署長_沈黙.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1410a11">
「……是诅咒。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1420a02">
「诅咒……？」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1430a11">
「村正被称为妖甲的缘由，就是
　……善恶相抵的铁则。就是那个咒缚。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1440a11">
「如果杀了一个恶人，
　就得再杀一个善人。」

//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1450a11">
「不受景明自己的意志控制。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1460a02">
「……什么……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1470a11">
「因为诅咒，第一个杀的是他自己的养母。
　那家伙首先杀死的人，就是他最珍惜的
人。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1480a11">
「所以他才无法退缩。
　就是那时开始的，为了终结一切的
……战斗之路。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1490a02">
「——」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1500a11">
「……即便如此，或许还是应该阻止他。
　大概。可能吧。一定是这样吧。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1510a11">
「但……我让景明继续战斗。
　无论是诅咒还是来龙去脉，我都清楚。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1520a11">
「因为，没有别的人选。
　能够与银星号战斗，破坏银星号的“卵”，
防止灾厄扩散的武者……」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1530a11">
「该受到指责的人，是我。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1540a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戻り
	EfRecoOut1(300);
	Delete("絵回想*");

/*
	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);
*/

	EfRecoOut2(600,true);


	Wait(500);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1550a00">
「……」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1560a02">
「……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1570a00">
「…………」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1580a02">
「你……这混蛋!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一突き
//◆ずさー。
	CreateTextureEX("絵背景300", 10000, Center, Middle, "cg/ev/ev141_正宗ＶＳ村正初戦_b.jpg");

	OnSE("se戦闘_攻撃_刀刺さる02",1000);
	OnSE("se人体_動作_後ずさり01",1000);

	CreateColorSPadd("絵色100", 1500, "RED");

	OnSE("se戦闘_特殊_鎧溶け出す",1000);

	EffectZoomadd(11000, 1000, 1000, "cg/ev/ev141_正宗ＶＳ村正初戦_b.jpg", false);
	Fade("絵背景300", 100, 1000, null, true);

	FadeDelete("絵色100", 1000, true);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
　手中重握太刀，以体重之力刺下。
　充斥着破坏性高温的刀尖，如同刺穿糖稀般贯穿了甲
铁。

　肉被烧焦。
　体内的内脏也燃烧起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1590a00">
「咕……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1600a02">
「如何……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1610a00">
「…………
　地方不对。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1620a02">
「……什么？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1630a00">
「就算被刺中那种地方……
　武者也不会死的。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1640a02">
「你这家伙……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
　凑斗景明说得没错。
　特意将架在脖子上的刀抽离，转而刺进胸膛……
这样又能如何。

　直接刺下去不就好了。
　……接下来就这样做吧。

　立刻。
　杀死这不可饶恕的罪人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1650a02">
「还有吧……」


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1660a02">
「还有话要说吧！」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1670a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1680a00">
「也不是……没有。」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1690a00">
「虽然没有……能说出口的理由……」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1700a02">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1710a00">
「……银星号就……拜托你了。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1720a02">
「………………」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1730a02">
「什么？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1740a00">
「如果是正宗的话……或许……
　能够阻止她。」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1750a00">
「拜托了……」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1760a02">
「不对吧!!
　我不想听这些!!」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1770a00">
「……？」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1780a02">
「你并不是恶人！
　所以，没理由被杀吧！」

//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1790a02">
「告诉我你的理由！
　告诉我啊，都是诅咒的错！」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1800a00">
「………………」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1810a02">
「这样的话……
　如果你告诉我的话……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1820a00">
「与那……无关。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1830a02">
「——」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1840a00">
「罪……就是罪。
　恶……就是恶。」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1850a00">
「想要制裁这些的你……是对的。
　与理由……无关……」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1860a00">
「恶……」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1870a00">
「和罪……」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1880a02">
「——」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1890a00">
「是不可饶恕的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラッシュバック
//◆切腹する一条父
//	SetVolume("@mbgm*", 1000, 0, null);
//	SetVolume("SE*", 1000, 0, null);

	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 100, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
//	Delete("絵効果雨");
	Delete("絵背景*");
	EfRecoIn2(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　
　　　　　　　不可阻止我

　
　　　　　　　不可原谅我

　
　　　　　　　　　　　憎恨

　
　　　　　　　　憎恨我所犯下的罪

　
　　　　　　　　憎恨我的恶行

　
　　　　　　　　　　　恨吧
　　　　　　　　　　　怒吧

//◆ウェイト

　
　　　　　　　　　　　杀吧

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("絵回想*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg022_山林b_01.jpg");
	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

	EfRecoOut2(600,true);

	Wait(500);

//◆村正視点
	Wait(500);

	SetFwC("cg/fw/fw一条_涙.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1900a02">
「……不要……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1910a00">
「一条……」


{	FwC("cg/fw/fw一条_涙.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1920a02">
「不要……父亲……
　我已经厌倦了……」

//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1930a02">
「不要死……」

//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1940a02">
「……父亲……
　………凑斗先生………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1950a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　我——
　只能看着抱着我、哭个不停的一条。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

	Delete("絵効果雨");

}

..//ジャンプ指定
//次ファイル　"mb01_014.nss"



function Shoushiken()
{

	CreateColor("焚き火光", 1400, 0, 0, 1024, 576, "RED");
	SetAlias("焚き火光","焚き火光");
	Fade("焚き火光", 0, 0, null, false);
	DrawTransition("焚き火光", 0, 100, 200, 990, null, "cg/data/out_slash_1.png", true);


	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}
