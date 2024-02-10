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

scene md04_004.nss_MAIN
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
	#ev805_戦争絵シリーズその３_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_005.nss";

}

scene md04_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_003.nss"


//◆鎌倉
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg013_鎌倉俯瞰a_03.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);
	SoundPlay("@mbgm34", 0, 1000, true);
	Wait(500);

	SetNwC("cg/fw/nw監視塔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／監視塔】
<voice name="ｅｔｃ／監視塔" class="その他女声" src="voice/md04/0040010e037">
《天台山监视塔呼叫防空本部！
　不明飞行物体接近！》

//【ｅｔｃ／監視塔】
<voice name="ｅｔｃ／監視塔" class="その他女声" src="voice/md04/0040020e037">
《对方对离开劝告毫无反应。
　请求适当的指示！》

//【ｅｔｃ／監視塔】
<voice name="ｅｔｃ／監視塔" class="その他女声" src="voice/md04/0040030e037">
《由波长推断是飞行舰。
　请求防空本部指示！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上空
//◆幕府竜騎兵十騎ほど

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	OnBG(100, "bg001_空a_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");
	OnSE("se戦闘_動作_空突進01", 1000);

	CreateTextureSP("やられ役EX01", 110, @-1700, @-400, "cg/st/3d九〇式竜騎兵_騎航_通常.png");
	Zoom("やられ役EX01", 0, 500, 500, null, true);
	SetBlur("やられ役EX01", true, 1, 500, 100, false);

	CreateTextureSP("やられ役EX02", 110, @-1700, @-600, "cg/st/3d九〇式竜騎兵_騎航_通常.png");
	Zoom("やられ役EX02", 0, 500, 500, null, true);
	SetBlur("やられ役EX02", true, 1, 500, 100, false);

	Move("やられ役EX01", 800, @3000, @0, null, true);
	Move("やられ役EX02", 800, @3000, @0, null, true);


	Delete("やられ役EX*");

	CreateSE("停滞", "se戦闘_動作_空中待機_L");
	CreateSE("SE空中", "se戦闘_動作_空突進05");
	OnSE("se戦闘_動作_空突進02", 1000);

	MusicStart("SE空中", 2000, 400, 0, 1100, null,true);
	MusicStart("停滞", 2000, 1000, 0, 1000, null,true);

	CreateTextureSP("やられ役隊長", 200, @-1700, @-400, "cg/st/3d九〇式竜騎兵_騎航_通常.png");
	SetBlur("やられ役隊長", true, 1, 500, 100, false);

	CreateTextureSP("やられ役01", 110, @-1700, @-400, "cg/st/3d九〇式竜騎兵_騎航_通常.png");
	Zoom("やられ役01", 0, 500, 500, null, false);
	SetBlur("やられ役01", true, 1, 500, 100, false);


	Move("@やられ役隊長", 800, @1400, @0, Dxl2, true);

	$ループムーブナット名２ = "@やられ役隊長";
	$ループムーブタイム２ = 20000;
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");
	Request("プロセス２", Start);


	Move("やられ役01", 600, @1830, @0, Dxl2, true);
	Move("やられ役01", 500, @-30, @0, AxlDxl, true);

	$ループムーブナット名 = "@やられ役01";
	$ループムーブタイム = 10000;
	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１", Start);


	SetNwC("cg/fw/nw防空隊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／防空隊Ａ】
<voice name="ｅｔｃ／防空隊Ａ" class="その他男声" src="voice/md04/0040040e256">
《队长，是二点钟方向！》

{	NwC("cg/fw/nw防空隊長.png");}
//【ｅｔｃ／防空隊長】
<voice name="ｅｔｃ／防空隊長" class="その他男声" src="voice/md04/0040050e258">
《……那个吗？》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆大型飛行艦（ガレーキープ級）

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	SetVolume("停滞", 1000, 0, null);

	Delete("@やられ役*");
	Delete("プロセス*");

	CreateTextureSP("絵背景100", 2000, @0, @0, "cg/ev/ev805_戦争絵シリーズその３_a.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 1, 500, 100, false);

	CreateTextureSP("絵背景200", 2000, @0, @0, "cg/ev/ev805_戦争絵シリーズその３_a.jpg");
	SetShade("絵背景200", HEAVY);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Zoom("絵背景200", 0, 2000, 2000, null, true);

	SetVolume("SE空中", 4000, 100, null);
	CreateSE("SE空中2", "se戦闘_動作_空突進05");
	MusicStart("SE空中2",1000,1000,0,100,null,true);


$ループムーブナット名２ = "@絵背景*";
$ループムーブタイム２ = 30000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

	Request("プロセス２", Start);
	CloudZoomStartB(700,1000,1000,800,900);
	CloudZoomVertex(0,1024,600,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_02_01_1", false);
	Zoom("絵背景*", 2000, 1700, 1700, null, true);
	SetVolume("SE空中2", 3000, 400, null);
	Fade("絵背景200", 2000, 0, Axl3, false);

	Zoom("絵背景*", 2000, 1050, 1050, AxlDxl, true);
	Delete("絵背景200");


	SetNwC("cg/fw/nw防空隊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／防空隊Ａ】
<voice name="ｅｔｃ／防空隊Ａ" class="その他男声" src="voice/md04/0040060e256">
《——“<RUBY text="Ｇａｌｌｅｙｋｅｅｐ">空中要塞</RUBY>”!!》

{	NwC("cg/fw/nw防空隊Ｂ.png");}
//【ｅｔｃ／防空隊Ｂ】
<voice name="ｅｔｃ／防空隊Ｂ" class="その他男声" src="voice/md04/0040070e257">
《这、这就是世界最大的飞行舰吗……》

{	NwC("cg/fw/nw防空隊長.png");}
//【ｅｔｃ／防空隊長】
<voice name="ｅｔｃ／防空隊長" class="その他男声" src="voice/md04/0040080e258">
《混帐ＧＨＱ，他们来真的。
　真的准备击溃六波罗。》

{	NwC("cg/fw/nw防空隊Ｂ.png");}
//【ｅｔｃ／防空隊Ｂ】
<voice name="ｅｔｃ／防空隊Ｂ" class="その他男声" src="voice/md04/0040090e257">
《怎么办，队长!?》

{	NwC("cg/fw/nw防空隊長.png");}
//【ｅｔｃ／防空隊長】
<voice name="ｅｔｃ／防空隊長" class="その他男声" src="voice/md04/0040100e258">
《敌骑只有那些吗？》

{	NwC("cg/fw/nw防空隊Ａ.png");}
//【ｅｔｃ／防空隊Ａ】
<voice name="ｅｔｃ／防空隊Ａ" class="その他男声" src="voice/md04/0040110e256">
《是，只有一艘。
　附近没有别的反应。》

//【ｅｔｃ／防空隊Ａ】
<voice name="ｅｔｃ／防空隊Ａ" class="その他男声" src="voice/md04/0040120e256">
《……我倒是不认为那家伙里面没藏着一群
龙骑兵。》

{	NwC("cg/fw/nw防空隊長.png");}
//【ｅｔｃ／防空隊長】
<voice name="ｅｔｃ／防空隊長" class="その他男声" src="voice/md04/0040130e258">
《正面战斗太鲁莽了。
　但是，不能让那种东西接近普陀乐城。》

//【ｅｔｃ／防空隊長】
<voice name="ｅｔｃ／防空隊長" class="その他男声" src="voice/md04/0040140e258">
《反复进行游击战法阻止对方前进。
　在增援到来之前必须拖延时间！》

{	NwC("cg/fw/nw防空隊Ｂ.png");}
//【ｅｔｃ／防空隊Ｂ】
<voice name="ｅｔｃ／防空隊Ｂ" class="その他男声" src="voice/md04/0040150e257">
《了解！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆突進しようとして
//◆上から奇襲。数騎撃墜

	OnSE("se戦闘_動作_刀構え01", 1000);

	CreateTextureSP("やられ役隊長", 199, @-200, @-400, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
	CreateTextureSP("やられ役01", 109, @100, @-400, "cg/st/3d九〇式竜騎兵_騎航_戦闘b.png");
	Zoom("やられ役01", 0, 500, 500, null, true);
	Request("やられ役*", Smoothing);


	FadeDelete("絵背景*",500,false);

	OnSE("se戦闘_銃器_構える01", 1000);
	Move("やられ役01", 1500, @-50, @30, Dxl2, false);
	Move("やられ役隊長", 1500, @-100, @50, Dxl2, false);
	Wait(1000);
	OnSE("se戦闘_動作_空突進02", 1000);

	CreateColorSPadd("絵フラ", 150, "#FFFFFF");
	DrawDelete("絵フラ", 300, 100, "slide_07_00_1", true);

	Delete("絵フラ");

	OnSE("se戦闘_破壊_鎧03", 1000);
	OnSE("se戦闘_破壊_鎧01", 1000);
	CreateTextureEX("どごーん", 15000, @0, @0, "cg/ef/ef022_汎用武者散華.jpg");
	EffectZoomDXadd(10000, 1500, 100, "#FFFFFF", "cg/ef/ef022_汎用武者散華.jpg", false);

	Fade("どごーん", 100, 1000, null, false);
	Shake("どごーん", 1000000, 2, 1, 0, 0, 1000, DxlAuto, false);
	Zoom("どごーん", 1000, 2000, 2000, Dxl2, true);

	Delete("やられ役隊長");
	Delete("やられ役01");

	FadeDelete("どごーん", 500, false);

	SetNwC("cg/fw/nw防空隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／防空隊長】
<voice name="ｅｔｃ／防空隊長" class="その他男声" src="voice/md04/0040160e258">
《————什么!?》

{	NwC("cg/fw/nw防空隊Ａ.png");}
//【ｅｔｃ／防空隊Ａ】
<voice name="ｅｔｃ／防空隊Ａ" class="その他男声" src="voice/md04/0040170e256">
《这……这家伙究竟从哪儿冒出来的!?》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆更に数騎落ちる
//◆敵騎クローズアップ。ＳＴ－０９

	OnSE("se戦闘_動作_空突進02", 1000);


	StC(1000, @1500, @200, "cg/st/3dユーウォーキー_騎航_通常.png");
	SetBlur("@StC*", true, 1, 500, 100, false);
	FadeStC(300, false);
	Move("@StC*", 150, @-2700, @0, null, true);

	OnSE("se戦闘_動作_空突進02", 1000);

	StR(1100, @1500, @200, "cg/st/3dユーウォーキー_騎航_通常.png");
	SetBlur("@StR*", true, 1, 500, 100, false);
	FadeStR(300, false);
	Zoom("@StR*", 0, 500, 500, null, false);
	Move("@StR*", 150, @-3000, @0, null, true);



	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 400, 300, null, "cg/data/circle_09_00_0.png", false);
	DrawTransition("ばく２", 0, 1000, 510, 200, null, "cg/data/circle_09_00_0.png", false);
	DrawTransition("ばく０", 0, 1000, 520, 100, null, "cg/data/circle_09_00_0.png", true);
	FadeDelete("ばく*", 300, false);
	Wait(50);


	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,900,0,1000,null,false);
	CreateColorSPadd("ばばく１", 17000, "#990000");
	CreateColorSPadd("ばばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばばく０", 15000, "#FFFFFF");
	DrawTransition("ばばく１", 20, 1000, 170, 300, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばばく２", 20, 1000, 180, 200, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばばく０", 20, 1000, 190, 100, null, "cg/data/circle_12_01_1.png", true);
	FadeDelete("ばばく*", 300, false);


	Waitkey(500);
	OnSE("se戦闘_動作_空突進03", 1000);

	Move("@StC*", 1500, @1200, @0, Dxl2, true);


	SetNwR("cg/fw/nw防空隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／防空隊長】
<voice name="ｅｔｃ／防空隊長" class="その他男声" src="voice/md04/0040180e258">
《这家伙——可恶，那是——》

//【ｅｔｃ／防空隊長】
<voice name="ｅｔｃ／防空隊長" class="その他男声" src="voice/md04/0040190e258">
《隐形龙骑兵!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

//◆ずがーん。全滅

	Move("@StC*", 800, @50, @0, Dxl1, true);
	OnSE("se戦闘_動作_空突進02", 1000);
	Move("@StC*", 150, @-2700, @20, Axl2, false);

	Wait(100);
	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	DrawDelete("絵フラ", 600, 100, "slide_05_00_1", true);

	OnSE("se戦闘_破壊_爆発05", 1000);
	CreateTextureEX("どごーん", 15000, @0, @0, "cg/ef/ef022_汎用武者散華.jpg");
	Fade("どごーん", 0, 1000, null, true);

	CreatePlainEX("絵板写", 15000);
	Request("絵板写", AddRender);

	Fade("絵板写", 200, 1000, null, false);
	Zoom("絵板写", 0, 1000, 1000, null, true);

	Shake("絵板写", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);
	Zoom("絵板写", 3000, 2000, 2000, Dxl2, false);

	Wait(2000);
	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_005.nss"