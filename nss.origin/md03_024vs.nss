//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_024vs.nss_MAIN
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
	#ev225_技術解説地摺り青眼_a=true;
	#ev225_技術解説地摺り青眼_b=true;
	#ev225_技術解説地摺り青眼_c=true;
	#ev225_技術解説地摺り青眼_d=true;

	#bg056_建長寺三門前_03=true;
	#ev925_野太刀断片_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_025vs.nss";

}

scene md03_024vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_023.nss"


//◆シャキーン。抜刀
//◆黒瀬下段ＳＴ


	PrintBG("上背景", 30000);
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	StR(1000, @0, @0, "cg/st/st景明汚染_戦闘_制服.png");
	FadeStR(0, true);
	CreateTextureSP("絵ＳＴＣ100", 1500, 0, InBottom, "cg/st/st黒瀬_通常_私服.png");
	Delete("上背景");

	OnSE("se人体_動作_一歩", 1000);
	FadeDelete("絵ＳＴＣ100", 300, false);
	DeleteStR(300, true);
	WaitKey(500);

	SoundPlay("@mbgm13",0,1000,true);


	OnSE("se戦闘_動作_刀構え01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　黑衣男人拔出太刀，将刀尖朝下摆于下段。
　不，比下段更低——刀尖几乎触及地面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_一歩", 1000);

//inc久保田　preわけしました。
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　然后保持那个姿势踮着碎步朝我逼近。
　好快。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬下段ＳＴ、ややアップ
	CreateWindow("絵演窓上", 1000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 1050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 1100, 100, -44, "cg/bg/bg056_建長寺三門前_03.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 1200, -500, -250, "cg/st/resize/st黒瀬_戦闘_私服l.png");
	Request("絵演窓上/絵立絵", Smoothing);
	Zoom("絵演窓上/絵立絵", 0, 800, 800, null, true);

	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 2000, @0, @-400, AxlDxl, false);
	Move("絵演窓上/絵立絵", 2000, @0, @-1000, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(1000);


//	OnSE("se人体_動作_スライディング", 1000);
	SetFwC("cg/fw/fw景明汚染_愉悦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md03/024vs0010a00">
（原来如此）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——地摺青眼吗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解
	CreateTextureEX("絵ＥＶ30", 3000, Center, Middle, "cg/ev/ev225_技術解説地摺り青眼_a.jpg");
	Fade("絵ＥＶ30", 500, 1000, null, true);
	Delete("絵演*");
	Delete("絵色100");
	WaitKey(1000);
//	Delete("絵ＳＴＣ100");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
　这是古流剑术的技法。
　此技法需要剑士将太刀的位置压至最低，
快速拉近与对手间的距离……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ29", 2990, Center, Middle, "cg/ev/ev225_技術解説地摺り青眼_b.jpg");
	FadeDelete("絵ＥＶ30", 1000, true);

	WaitKey(1000);

	CreateTextureSP("絵ＥＶ28", 2980, Center, Middle, "cg/ev/ev225_技術解説地摺り青眼_c.jpg");
	FadeDelete("絵ＥＶ29", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
　而突然受袭的一方，则会在受到自下方而来的刀刃所
迫的同时，发现敌人的头部空门大开毫无防备，从而举
刀从上段砍下——<k>
　但是，若真的砍下的话，胜负会立刻分晓。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ27", 2970, Center, Middle, "cg/ev/ev225_技術解説地摺り青眼_d.jpg");
	FadeDelete("絵ＥＶ28", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040c]
　在身型不稳的下劈砍到对方之前，就会先一步被自下
往上挥来的刀尖刺穿喉咙或是胸口。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＳＴＣ100", 1500, 0, InBottom, "cg/st/st黒瀬_戦闘_私服.png");
	SetBlur("絵ＳＴＣ100", true, 2, 500, 50, false);
	Fade("絵ＳＴＣ100", 300, 1000, null, false);

//◆戻り
	FadeDelete("絵ＥＶ*", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　这是基于合理计算的，有实用价值的实战技术。
　但是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/024vs0020a00">
（状况判断错误了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　要有效地活用剑技、武技，就必须注意根据情况使
用相应的技能。
　没有万能之技。一切技能都有其适合用与不适用的
状况。

　地摺青眼成功的必备条件主要有两个。

　第一。攻击者必须比被攻击者在心理上处于优势。
　地摺青眼的关键是使对手动摇从而诱其大意进攻。
这招不能对思维冷静的对手使用。

　第二。被攻击者须对地摺青眼之技知之不详，且无
应对之法。
　这是一切技能的必要成功条件。

　敌人——黑濑在两个条件都不成立的情况下攻了过来。

　真失策。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばっ。素早く動いた音
//◆ef003？を挟んで
//◆背景＋黒瀬下段ＳＴアップ。但し下段の刀を中心に
//◆表示する

	CreateTextureEX("たち", 9000, @-200, @-100, "cg/ev/ev925_野太刀断片_c.jpg");
//	Rotate("たち", 100, @0, @180, @-50, null, false);
	Request("たち", Smoothing);
	Zoom("たち", 0, 1200, 1200, null, false);
	Move("たち", 200, @100, @100, null, false);

	OnSE("se人体_動作_後ずさり01",1000);
	CreateTextureEX("まえ", 10000, @0, @0, "cg/ef/ef003_汎用移動.jpg");

	Request("絵ＳＴＣ100", Smoothing);
	Request("OnBG", Smoothing);

	Move("@OnBG*", 50, @0, @-50, null, false);
	Move("絵ＳＴＣ100", 50, @0, @-100, null, false);
	Zoom("@OnBG*", 50, 1200, 1200, null, false);
	Zoom("絵ＳＴＣ100", 50, 2000, 2000, null, false);


	Zoom("まえ", 100, 1200, 1200, null, false);
	Fade("まえ", 100, 1000, null, true);

	Delete("@OnBG*");
	Delete("絵ＳＴＣ100");

//	CreateColorSP("黒幕１", 9000, "BLACK");
	Fade("たち", 0, 1000, null, false);
	Zoom("たち", 200, 1500, 1500, null, false);

	Zoom("まえ", 200, 1400, 1400, null, false);
	FadeDelete("まえ", 200, true);

//	Fade("まえ", 100, 0, null, false);
//	Zoom("まえ", 100, 1500, 1500, null, false);

	SetFwC("cg/fw/fw黒瀬_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/024vs0030b26">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　在黑色覆面隙间的双眸惊讶地动摇了。

　现在他手握的太刀离我的身体距离极近。
　因为我身型下移，曲起了身体。

　锐利的刀尖近在眼前。
　危险——<k>不。

　<RUBY text="···">太近了</RUBY>。
　在这个距离无论是突刺还是斩击，都无法重创我。
要确保杀伤力是需要相应的加速距离的。

　咽喉这处要害由于我们的位置关系而被下颚阻挡，
不能攻击。
　眼睛不仅目标小难以击中，而且未必会造成致命伤。
就算想贯穿大脑，刀刃也会被眼窝骨给卡住。

　如此一来，敌人只剩一个选择。
　把太刀高举过顶——从上方斩下——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetBlur("たち", true, 2, 500, 50, false);

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Move("たち", 300, @-2000, @-300, null, false);
	Rotate("たち", 300, @0, @0, @-60, Dxl3, false);
//	Rotate("たち", 200, @0, @0, @60, Axl3, false);
	Fade("たち", 300, 0, null, false);
	SetFwC("cg/fw/fw黒瀬_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/024vs0040b26">
「喝！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ばっ。素早く動く音
//◆ef001？
//◆をノーワイプで消して横薙ぎ剣撃
//◆ガキーン。装甲に当たった音。

	CreateTextureEX("ido", 10002, 50, -50, "cg/ef/ef001_汎用移動.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Move("ido", 200, @-250, @150, Dxl1, false);
	Fade("ido", 200, 1000, null, true);
//	Zoom("ido", 150, 1000, 1000, DxlAuto, false);
	WaitKey(100);
	Fade("ido", 400, 0, null, false);

//	SetVolume("@mbgm*", 300, 0, null);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateTextureSP("絵演", 10011, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	EffectZoomadd(12000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

//	DrawTransition("絵演", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);
	WaitKey(100);
	OnSE("se戦闘_攻撃_刀_ヒット01",1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　——我一刀横扫黑濑空门大开的腿部。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸ＶＳ村正
//◆格闘戦。村正劣勢


	CreateColorSP("黒幕２", 16000, "BLACK");
	DrawTransition("黒幕２", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵演");
	Delete("黒幕１");
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	StL(1000, @0, @0, "cg/st/st村正_戦闘_私服.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);


	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服b.png");

	WaitKey(1000);

	DrawDelete("黒幕２", 300, 100, "slide_01_01_1", true);

//	SoundPlay("@mbgm11", 0, 1000, true);
	WaitKey(500);
	OnSE("se人体_衝撃_転倒01", 1000);
	FadeStR(300, false);
	FadeStL(300, false);
	Move("@StL*", 300, @0, @30, DxlAuto, false);

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/024vs0050a01">
「唔……！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0060a07">
「空手搏斗的话，六波罗全军中能与我势均力
敌的家伙一只手就能数完。
　对付你是大材小用了。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0070a07">
「老实说我都要犯困了。
　呼啊～」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/024vs0080a01">
「……你！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がしがし。

	Move("@StL*", 1000, @, @-30, DxlAuto, false);
	Shake("@StL*", 1000, 5, 0, 0, 0, 500, Dxl1, true);

	OnSE("se人体_動作_跳躍01", 1000);
	Move("@StL*", 100, @100, @0, Dxl1, false);
	DeleteStL(100, true);

	CreateTextureEX("ido", 15000, @0, @0, "cg/ef/ef002_汎用移動.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Fade("ido", 400, 1000, null, true);
	Zoom("ido", 150, 1000, 1000, DxlAuto, false);
	DeleteStR(0, true);
	OnSE("se人体_動作_腕を掴む01", 1000);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0090a07">
「哈——」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0100a07">
「揍扁你！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆どーん
	OnSE("se戦闘_攻撃_鎧攻撃命中", 1000);

	Fade("ido", 400, 0, Axl3, false);
	EffectZoomDXadd(16000, 500, 300, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", true);

	CreateTextureSP("どーん", 14000, @0, @0, "cg/bg/bg056_建長寺三門前_03.jpg");
//	Shake("どーん", 500, 20, 0, 0, 0, 1000, Dxl3, true);

	OnSE("se人体_衝撃_転倒03", 1000);
	Shake("どーん", 500, 0, 25, 0, 0, 1000, Dxl3, true);


	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	StR(1000, @100, @0, "cg/st/st茶々丸_通常_制服a.png");

	Fade("どーん", 300, 0, null, true);
	SetBlur("@StR*", true, 1, 50, 50, false);
	Move("@StR*", 300, @-100, @0, DxlAuto, false);
	FadeStR(300, true);
	Move("@StL*", 1000, @0, @30, DxlAuto, false);
	Shake("@StL*", 1000, 5, 0, 0, 0, 500, Dxl1, false);
	FadeStL(1000, false);

	Delete("ido");
	Delete("どーん");

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/024vs0110a01">
「唔……！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0120a07">
「切。
　真硬气。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0130a07">
「明明是个次品，倒还有点耐久力。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/024vs0140a01">
「……还给我……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0150a07">
「啊啊？」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/024vs0160a01">
「把主君还给我!!」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0170a07">
「不要!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突

	DeleteStL(200, false);
	DeleteStR(200, true);
	WaitKey(100);

	OnSE("se戦闘_攻撃_殴る05", 1000);
	CreateTextureEX("がつん", 10002, 0, 0, "cg/ef/ef040_汎用衝突.jpg");
	Zoom("がつん", 0, 1500, 1500, null, true);

	EffectZoomadd(15000, 1000, 100, "cg/ef/ef040_汎用衝突.jpg", false);

	Fade("がつん", 200, 1000, null, true);
	Zoom("がつん", 400, 1000, 1000, null, false);
	Fade("がつん", 400, 0, null, true);

	StL(1000, @50, @0, "cg/st/st村正_戦闘_私服.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);

	StR(1000, @-100, @0, "cg/st/st茶々丸_通常_制服x.png");

	Fade("どーん", 300, 0, null, true);
	SetBlur("@StR*", true, 1, 50, 50, false);
	Move("@StR*", 300, @100, @0, DxlAuto, false);
	FadeStR(300, true);
	SetBlur("@StL*", true, 1, 100, 50, false);
	Move("@StL*", 300, @-50, @0, DxlAuto, false);
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0180a07">
「怎么可能放手！
　那是我好不容易遇上的主人！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0190a07">
「终于有了能把我当道具来用的男人了。
　对苦于只是半个人类的我来说，
他是绝对必要的!!」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/024vs0200a01">
「我是不知道——」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0210a07">
「是啊你不知道吧！
　以人类的精神二十四小时一刻不停地听那地
底下的混蛋惨叫，压力究竟有多大!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/024vs0220a07">
「谁也，不知道……
　所以不必让别人同情。我只是自行
竭尽全力<RUBY text="·······">夺回被夺走之物</RUBY>而已!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぞがーん

	OnSE("se人体_動作_跳躍01", 1000);
	CreateTextureEX("ido", 15001, @0, @0, "cg/ef/ef001_汎用移動.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Move("@StR*", 100, @-50, @0, Axl1, false);
	Fade("ido", 100, 1000, null, true);
	Zoom("ido", 100, 1000, 1000, DxlAuto, false);
	DeleteStL(0, true);
	DeleteStR(0, true);
	CreateTextureSP("どーん", 14000, @0, @0, "cg/bg/bg056_建長寺三門前_03.jpg");

	OnSE("se戦闘_攻撃_鎧攻撃命中02", 1000);
	OnSE("se人体_衝撃_転倒03", 1000);
	Fade("ido", 400, 0, Axl3, false);
	EffectZoomDXadd(16000, 500, 300, "#FFFFFF", "cg/ef/ef042_汎用打撃.jpg", true);

	Shake("どーん", 1000, 40, 40, 0, 0, 1000, Dxl3, false);

	Wait(500);

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/024vs0230a01">
「唔……啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

//	ClearWaitAll(0, 0);

}

..//ジャンプ指定
//次ファイル　"md03_025vs.nss"