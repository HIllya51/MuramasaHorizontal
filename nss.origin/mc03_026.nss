//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_026.nss_MAIN
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
	#ev180_落ちてゆくガッタイダー·ヘッド_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#aw_ヘッド=true;

	$PreGameName = $GameName;

	$GameName = "mc03_027.nss";

}

scene mc03_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_025.nss"


//◆村正視点
//◆落ちるガッタイダーヘッド
	#aw_ヘッド=true;

	PrintBG("上背景", 30000);
	CreateColorSP("ホワイトイン", 5000, "White");
	Fade("ホワイトイン", 0, 1000, null, true);
	CreateColorSP("下黒", 1200, "BLACK");

	CreateSE("ドドドドド", "se戦闘_動作_空走行02_L");
	MusicStart("ドドドドド", 500, 1000, 0, 1000, null,true);

//■前のBGMと繋がってるほうがいいような気がするので継続 inc櫻井
	SoundPlay("@mbgm15", 0, 1000, true);
	Delete("上背景");
	FadeDelete("ホワイトイン",1500,true);

	SetFwC("cg/fw/fw小夏_憎悪.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/0260010b33">
《凑斗景明——!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("恨み", 5100, RED);
	Fade("恨み", 200, 1000, null, true);
	StC(1300, @0, @0, "cg/st/st小夏_通常_制服.png");
	FadeStC(0, true);

	Fade("恨み", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　憎恶的吼叫贯穿了我的脑髓。

　怨念的长枪。
　复仇的箭尖。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw小夏_憎悪.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/0260020b33">
《不可原谅！》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/0260030b33">
《不可原谅————————————!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("恨み", 0, 1000, null, true);
	DeleteStC(1000,false);
	FadeDelete("恨み", 1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　弹劾。

　断罪。

　她是知道的。
　我做过什么，我对她重要的人做了什么，
　她是知道的。

　那是来栖野小夏以杀害新田雄飞的罪名对我进行的裁
决宣判。
　完整无缺的正义宣张。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	MusicStart("ドドドドド", 1000, 1000, 0, 1000, null,true);

	StL(1001, @-80, @180, "cg/st/3d村正標準_騎航_通常3b.png");
	StC(1000, @256, @250, "cg/st/3dガッタイダーＨ_騎航_通常.png");
	Zoom("@StC*", 0, 50, 50, null, false);

	FadeStC(0, false);
	FadeStL(0, true);
	Move("絵背景10", 10000, @-50, @-20, null, false);
	Shake("@StL*", 60000, 1, 1, 0, 0, 1000, Dxl2, false);
	Shake("@StC*", 60000, 1, 1, 0, 0, 1000, null, false);
	FadeDelete("下黒",1000,false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0260040a00">
「呜——」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0260050a00">
「啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆救いに向かう。地表方向へ突進。

	OnSE("se戦闘_動作_空突進01", 1000);
	Zoom("絵背景10", 1800, 1500, 1500, null, false);
	Zoom("@StL*", 1800, 500, 500, null, false);
	Move("@StL*", 1800, @200, @0, null, false);
	Zoom("@StC*", 1800, 75, 75, null, false);

	WaitKey(1300);

	CreateColorSP("黒幕１", 5001, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	Delete("黒幕*");
	Delete("絵背景10");
	Delete("@St*");

	CreateTextureSP("絵演背景", 100, -490, -900, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	Move("絵演背景", 120000, -10, -5490, DxlAuto, false);
	Shake("絵演背景*", 120000, 1, 1, 0, 0, 1000, null, false);

	CloudZoomSet(1000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@512,@-288,null,false);

	StR(1000,@500,@0,"cg/st/3d村正標準_騎航_通常.png");
	FadeStR(0,true);
	OnSE("se戦闘_動作_空上昇01",1000);

	Shake("@StR*", 30000, 1, 0, 0, 0, 1000, null, false);
	Move("@StR*", 0, @-700, @200, Dxl1, false);

	MoveFFP1("@StR*",1000);

	Delete("上背景");
	DrawDelete("黒", 300, 100, "slide_04_01_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　不————不行。
　不行不行不行不行。

　绝对，绝对不行！

　不能让她死!!

　绝对不允许让她死!!

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	CloudZoomDelete(5000,false);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/0260060a01">
《主君！
　已经不行了！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/0260070a01">
《停下吧，这样下去——》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　吵死了!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆突進。速度上昇上昇。
	MoveFFP1stop();
	Move("@StR*", 500, @-512, 1152, Dxl1, false);

	CreateSE("SEP02","se戦闘_動作_空突進08");
	MusicStart("SEP02",0,1000,0,1200,null,false);

	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	Wait(10);

	Fade("絵フラ", 900, 0, null, false);
	DrawDelete("絵フラ", 600, 1000, "slide_07_00_0", true);

	CreateColorSPadd("絵フラ２", 25000, "WHITE");
	DrawTransition("絵フラ２", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("@St*");
	Delete("絵演背景*");
	Delete("絵フラ");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateTextureSPadd("移動", 15000, @0, @0, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵背景10", 10000, 5000, 5000, null, false);

	CreateColorSP("下黒", 5, "BLACK");
	CreateTextureEX("絵演3", 9, Center, InBottom, "cg/st/st小夏_通常_制服.png");

	DrawTransition("絵フラ２", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("絵フラ２");

	Fade("絵演3", 0, 800, null, false);

	FadeDelete("絵背景10", 10000, false);
	FadeDelete("移動",1500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　救她。
　救她。
　救她。
　救她。

　接近了地面。那又如何。
　这样下去我也会撞上地面。那又如何。

　我向无罪的少女伸出了手。

　————够不到！

　来这边！
　向这边靠一些！

　一点点就可以。只要一点点。
　把身体，向我这边靠过来——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("下敷き2", 5000, "BLACK");
	Fade("下敷き2", 1500, 1000, null, true);
	Delete("絵背景10");
	SetVolume("ドドドドド", 1000, 0, null);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Delete("下*");
	Delete("絵演*");

	CreateTextureSP("絵ＥＶ", 100, -512, -288, "cg/ev/resize/ev180_落ちてゆくガッタイダー·ヘッド_cl.jpg");
	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 0, 500, 500, null, true);
	Zoom("絵ＥＶ", 16000, 2000, 2000, null, false);
	FadeDelete("絵色白", 200, true);

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0260080a00">
《不要死!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw小夏_憎悪.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/0260090b33">
《死吧————!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1600, 0, null);

	CreateColorEX("絵色黒", 20000, "#000000");

	SetBlur("絵ＥＶ", true, 2, 500, 60, false);
	Zoom("絵ＥＶ", 1000, 500, 500, AxlDxl, false);
	Fade("絵色黒", 1000, 1000, null, true);

	Delete("絵ＥＶ");

	WaitPlay("@mbgm*", null);

//◆落ちた。ずどーん。
	CreateSE("SE01","se戦闘_動作_空落下02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(3000);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE02","se戦闘_衝撃_衝突01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	WaitPlay("SE02", null);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_027.nss"