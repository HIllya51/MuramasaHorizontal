//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_032.nss_MAIN
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

	$GameName = "mc04_033vs.nss";

}

scene mc04_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_031.nss"


//◆景明とバロウズ


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg092_森の道a_01.jpg");
	Delete("上背景");
	SoundPlay("@mbgm09",0,1000,true);
	FadeDelete("黒幕１",1500,true);

	StC(1000, @0,@0,"cg/st/3dバロウズ_立ち_通常.png");
	FadeStC(500,true);



	Wait(500);
	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320010a00">
「……你这家伙……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一副猛禽的姿态降落树梢，发出钝暗光芒的
骑体俯视着我。
  俯视着我——正俯视着我。

　只为单方面掠夺生命而来。
　也可以说是为享受狩猎的乐趣而来。
　
　丝毫没有掩盖如此傲慢的来意，眺望着我。

　手下意识地动起来，紧紧握在胸前。
　……想忘也不可能忘得掉。

　杀害养父的骑士!!

　报仇之念在胸中汹涌翻腾。
　冲动随着血之脉动在全身奔涌，几乎就要冲出
去，脑中只剩一个目的。

　哪里还有不冲出去的理由。
　那种理由哪里也——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック：ガッタイダー

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想01", 5000, Center, -50, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);
	Delete("絵回想*");

	EfRecoOut2(600,true);


	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320020a00">
（……！）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　沸腾脑浆中的一部分瞬时冷却下来。
　莫非……这个骑士也是，<RUBY text="··">那个</RUBY>的同伴？

　若对凑斗景明抱有正当的憎恶……
　
　若是如此，那我就没有憎恨这个骑士的资格。

　但是，我感性的部分未必同意这个推测。

　……那个怪物骑和眼前的骑士，总觉得差异很大。

　虽然周身都笼罩着恶意与杀意这点是相同的，不过。
　那怪物的恶意杀意是为复仇而疯狂的结果，是原本
的善意与爱情逆转而成的产物。

　相比起来，这个骑士的则在坏的意义上说更为<RUBY text="··">纯粹</RUBY>。
　既没有扭曲也没有疯狂。硬要说的话从根本开始就
已经扭曲疯狂。并非是错误的结果，而是正确的状态，充
斥着恶意与杀意……

　不禁这样认为。
　但是，没有任何根据。

　
  也有可能是养父被杀的仇恨蒙蔽了我双眼。
　
　







   ……有必要确认一下。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320030a00">
「……骑士。
　虽然看来已经无须多言，但还请允许我
多问一句。」


{	FwL("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0320040a03">
「……」


{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320050a00">
「你是立誓要向凑斗景明复仇之人吗？
　是被我杀害近亲，
怀此怨恨欲取我性命之人吗？」


{	FwL("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0320060a03">
「…………」


{	FwL("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320070a00">
「若是如此，本人已有受戮准备。
　以同样缘由，已有一人即将对我进行裁决，
可与其先行商谈……」


{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320080a00">
「如何？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//	DeleteStC(500, false);

	WaitKey(1500);
//◆小ウェイト

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　回答是，<k>
　
　连声音也不屑发出的嘲笑。

　没有言语，嘴角的弯曲也被覆盖在盔甲之下，
　骑士仅用视线与气氛嘲讽、讥笑着我。

  ——这算什么话，无趣透顶……
　
　做出了如此的宣告。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320090a00">
「你这家伙……
　果然。」


{	FwL("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0320100a03">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	StC(1000, @0,@0,"cg/st/3dバロウズ_立ち_戦闘.png");
	FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　接着骑士用手中石弓一指。
　并非对着我——

　东。
　山庄所在的方向。

　沉默表达的意思，这回也很明了。
　
　——如果你<RUBY text="····">继续磨蹭</RUBY>的话，就先把那边
的收拾掉。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320110a00">
「果然，是为杀大鸟大尉而来的追兵吗！」


{	FwL("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0320120a03">
「……」


{	FwL("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320130a00">
「休想!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　刹那间，平静等待死亡的心境消失得无影无踪。
　取而代之的，是翻腾的激烈情感卷起的漩涡。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320140a00">
「村正。
　最后一次……再陪陪我吧。」


{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320150a00">
「最后一件，不得不做的事来了。」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0320160a01">
《主君。》


{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320170a00">
「拜托了。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　绝不能让他杀死大鸟大尉。

　也绝不能让她以外的人，<RUBY text="··">将我</RUBY>杀死。

　与这个骑士战斗。

　与这个——
　杀害养父的骑士！

　战斗!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆装甲開始
	SetVolume("@mbgm*", 500, 0, null);
	SoundPlay("@mbgm10",0,1000,true);


	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("フラ", 300, 1000, null, true);

	PrintGO("上背景", 15000);
	CreateColorSPadd("フラ", 10000, "#FFFFFF");

	DeleteStL(0,true);

	OnBG(100,"bg092_森の道a_01.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	Delete("上背景");
	FadeDelete("フラ*", 1600, true);


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/bg022_山林a_01.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

//	DrawEffect("絵演窓上/絵演背景", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -220, "cg/st/resize/st景明_装甲_私服aex.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵暗転", 500, true);

	Wait(300);

	Move("絵演窓上/絵演背景", 600, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @-200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	SetFwL("cg/fw/fw景明_戦闘.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320180a00">
「遇鬼斩鬼，
　逢佛弑佛。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演窓上/絵立絵2", 16200, -140, -220, "cg/st/resize/st景明_装甲_私服bex.png");
	SetBlur("絵演窓上/絵立絵2", true, 3, 500, 70, false);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	EffectZoomadd(17000, 600, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("絵演窓上/絵立絵", 200, 0, null, false);
	FadeF4("絵演窓上/絵立絵2", 200, 1000, 400, 0, 0, Dxl2, true);

//	Wait(300);

	CreatePlainSP("絵板写", 20000);
	Delete("絵演窓*");
	Delete("絵色*");
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	Zoom("絵板写", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵板写", 300, true);

	SetFwL("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320190a00">
「剑胄之理，正在于此！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆装甲。ガキーン


//	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

/*
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	Fade("フラ", 300, 1000, null, true);


	DeleteStA(0,true);

	StR(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	StL(1000, @0,@0,"cg/st/3dバロウズ_立ち_通常.png");
	FadeStL(0,true);
	FadeStR(0,true);

*/

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常l.png");
	Move("絵背景100", 0, -563, -569, null, true);

	Move("絵背景100", 2000, -563, -539, null, false);
	Fade("絵フラ", 500, 0, null, true);

	WaitKey(1000);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵背景100");
	Delete("絵背景100");

	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");

	CreateTextureSP("絵演窓右/絵演右", 4100, -235, -152, "cg/bg/bg092_森の道a_01.jpg");
	Zoom("絵演窓右/絵演右", 0, 2000, 2000, null, true);
	SetShade("絵演窓右/絵演右", HEAVY);
	CreateTextureSP("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常m.png");
	Move("絵演窓右/絵背景100", 0, -35, -354, null, true);

	CreateTextureSP("絵背景200", 3100, Center, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	Move("絵背景200", 0, -1069, -917, null, true);
	CreateTextureSP("絵演左", 3000, -385, -300, "cg/bg/bg092_森の道a_01.jpg");
	Zoom("絵演左", 0, 2000, 2000, null, true);
	SetShade("絵演左", HEAVY);


	Move("絵背景200", 3000, -1069, -867, Dxl2, false);
	Move("絵演窓右/絵背景100", 3000, -35, -404, Dxl2, false);
	Move("絵演窓右/絵演右", 3000, @0, @60, Dxl2, false);
	Move("絵演左", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d村正標準_立ち_通常.png");
//	FadeStR(0,true);

	OnSE("se戦闘_動作_刀構え02",1000);
	OnSE("se戦闘_動作_刀構え03",1000);

	FadeDelete("絵フラ", 1000, true);

	Wait(300);

//	FadeDelete("フラ", 2000, true);
	WaitKey(500);

//◆村正上昇
//◆バロウズ上昇

	CreateSE("SE03","se戦闘_動作_空上昇01");
	OnSE("se戦闘_動作_空突進02", 1000);
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorSP("白幕１", 30000, "WHITE");
	DrawTransition("白幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	SetVolume("SE*", 2000, 0, null);
	Wait(2000);

/*

	DrawDelete("@StR*", 150, 100, "slide_02_01_0", false);
	DrawDelete("@StL*", 150, 100, "slide_02_01_0", false);

	CreateColorSP("絵黒", 1, "#CC0000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/beam_04_00_1.png", true);
	CreateTextureSP("tobu", 1000, 0, -500, "cg/ef/resize/ef020_村正突貫02tl.jpg");
	Request("tobu", Smoothing);
	SetBlur("tobu", true, 3, 500, 50, false);
	Zoom("tobu", 0, 2000, 2000, null, true);
	DrawDelete("絵黒", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("tobu", 600, @0, -1200, DxlAuto, false);
	Zoom("tobu", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("tobu", 4000, @0, -580, DxlAuto, true);



*/

//	ClearWaitAll(1000, 500);



}

..//ジャンプ指定
//次ファイル　"mc04_033vs.nss"