//<continuation number="1170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_008vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_008vs.nss","SetKenkiEX",true);
	Conquest("nss/md05_008vs.nss","SetKenki",true);
	Conquest("nss/md05_008vs.nss","FadeKenki",true);
	Conquest("nss/md05_008vs.nss","GoKenki",true);

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
	#ev228_白銀の軍団_c=true;
	#bg002_空a_02=true;
	#bg202_旋回演出背景山_02=true;
	#bg106_富士山遠望b_00=true;
	#ev927_八剣姫攻撃１=true;
	#ev928_八剣姫攻撃２=true;
	#ev228_白銀の軍団_e=true;
	#bg001_空a_02=true;
	#ev504_村正突進=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_ここが境界線=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;
	$GameName = "md05_009.nss";
}

scene md05_008vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm01",0,1000,true);//続き

	PrintBG("上背景", 30000);

	//▼コクピット（定義）
	//CP_AllSet("村正");

	//▼雲正面
	CloudZoomSet(2000);
	//CloudZoomSet2("マド",1000,0,0,1024,600);

	LoadImage("旋回イメージ", "cg/bg/bg204_横旋回背景_02.jpg");
	SetAlias("旋回イメージ", "旋回イメージ");
	LoadImage("背景イメージ１", "cg/bg/resize/bg002_空a_02.jpg");
	SetAlias("背景イメージ１", "背景イメージ１");
	LoadImage("背景イメージ２", "cg/bg/bg202_旋回演出背景山_02.jpg");
	SetAlias("背景イメージ２", "背景イメージ２");

	LoadImage("イメージ１", "cg/st/3d八剣姫_騎航_通常.png");
	SetAlias("イメージ１", "イメージ１");
	LoadImage("イメージ２", "cg/st/3d八剣姫_騎航_通常2.png");
	SetAlias("イメージ２", "イメージ２");
	LoadImage("イメージ３", "cg/st/3d八剣姫_騎航_通常3.png");
	SetAlias("イメージ３", "イメージ３");

	CreateTextureSP("背景１", 100, 0, 0, "cg/ev/ev228_白銀の軍団_c.jpg");
	//CreateTextureSP("背景２", 100, 0, Middle, "cg/ev/resize/ev228_白銀の軍団_cl.jpg");
	//CreateSurfaceEX("絵Suf",200,2000,"背景２");

/*
	LoadImage("イメージ１", "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureSP("敵機１", 100, 66, -122, "イメージ１");
	Zoom("敵機１", 0, 100, 100, Dxl2, true);
	CreateTextureSP("敵機２", 100, -96, -440, "イメージ１");
	Zoom("敵機２", 0, 200, 200, Dxl2, true);
	CreateTextureSP("敵機３", 100, 313, -267, "イメージ１");
	Zoom("敵機３", 0, 300, 300, Dxl2, true);
	CreateTextureSP("敵機４", 100, 282, -37, "イメージ１");
	Zoom("敵機４", 0, 400, 400, Dxl2, true);
	CreateTextureSP("敵機５", 100, 252, -384, "イメージ１");
	Zoom("敵機５", 0, 500, 500, Dxl2, true);
	CreateTextureSP("敵機６", 100, -129, -61, "イメージ１");
	Zoom("敵機６", 0, 800, 800, Dxl2, true);
	CreateTextureSP("敵機７", 100, -355, -245, "イメージ１");
	Zoom("敵機７", 0, 1000, 1000, Dxl2, true);

	//SetBlur("敵機１", true, 1, 300, 200, false);
	//SetBlur("敵機２", true, 1, 300, 200, false);
	//SetBlur("敵機３", true, 1, 300, 200, false);
	//SetBlur("敵機４", true, 1, 300, 200, false);
	//SetBlur("敵機５", true, 1, 300, 200, false);
	//SetBlur("敵機６", true, 1, 300, 200, false);
	//SetBlur("敵機７", true, 1, 300, 200, false);

	CreateSCR1("@マド/背景１","@マド/背景２",100000,-4000,@0);

	MoveFRP1("@敵機１",20000,3,3);
	MoveFRP2("@敵機２",20000,4,4);
	MoveFRP3("@敵機３",20000,5,5);
	MoveFRP4("@敵機４",20000,7,7);
	MoveFRP5("@敵機５",20000,9,9);
	MoveFRP6("@敵機６",20000,10,10);
	MoveFRP7("@敵機７",20000,12,12);

	Move("敵機７", 1200, @-1000, @-500, Dxl1, false);
	Move("敵機６", 1200, @-500, @1000, Dxl1, false);
	Move("敵機５", 1200, @1000, @-500, Dxl1, false);
	Move("敵機４", 1200, @1000, @500, Dxl1, false);
	Move("敵機３", 1200, @1500, @0, Dxl1, false);
	Move("敵機２", 1200, @500, @-1000, Dxl1, false);
	Move("敵機１", 1200, @500, @-1000, Dxl1, false);

	Wait(600);

	//MoveFRP1stop();
	//MoveFRP2stop();
	//MoveFRP3stop();
	//MoveFRP4stop();
	//MoveFRP5stop();
	//MoveFRP6stop();
	//MoveFRP7stop();


	Move("敵機７", 0, @1000, @500, Dxl1, false);
	Move("敵機６", 0, @500, @-1000, Dxl1, false);
	Move("敵機５", 0, @-1000, @500, Dxl1, false);
	Move("敵機４", 0, @-1000, @-500, Dxl1, false);
	Move("敵機３", 0, @-1500, @0, Dxl1, false);
	Move("敵機２", 0, @-500, @1000, Dxl1, false);
	Move("敵機１", 0, @-500, @1000, Dxl1, false);
	Fade("敵機*", 0, 0, null, false);
	Fade("敵機Ａ", 0, 1000, null, true);

*/
	FadeDelete("上背景", 1000, true);

..//ジャンプ指定
//前ファイル　"md05_007vs.nss"


//◆八剣姫


//3d八剣姫_騎航_通常

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　数量是八骑。

　白银的装甲于虚空中翩然起舞，璀璨闪耀，
　撒下思念的毒素。

　是银星号的复制品。
　毫无疑问。毫无疑问但是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0010a01">
《并不仅仅是复制……
　这八骑拥有与银星号匹敌的能力。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0020a00">
「为什么？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0030a01">
《大概是用了什么特别的方法。
　那些被带有我的力量的“卵”寄生了的武者，
不就比之前的寄生体要强大许多？》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0040a01">
《似乎与那个原理相同……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　自那八骑诞生伊始，便被银星号
施加了一些什么特殊工艺，就是这样吧。
　
　……如此一来就麻烦了！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景１", 100, 0, 0, "背景イメージ１");
	CreateTextureSP("敵機１", 100, -794, -430, "cg/st/resize/3d八剣姫_立ち_通常_ex.png");
	Zoom("敵機１", 0, 500, 500, Dxl2, true);
	CreateTextureSP("自機１", 100, 0, -103, "cg/st/3d村正最終_騎航_通常.png");

	OnSE("se戦闘_動作_空突進02",1000);
	Move("背景１", 500, @-50, @0, Dxl2, false);
	Move("自機１", 500, @-100, @0, Dxl2, false);
	Move("敵機１", 500, @400, @0, Dxl2, false);

	SetFwR("cg/fw/fw炎の骨_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【八剣姫Ａ】
<voice name="八剣姫Ａ" class="その他女声" src="voice/md05/008vs0050c00">
《来玩玩？》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景１", 100, -1024, -512, "背景イメージ１");
	CreateTextureSP("自機１", 100, -200, -453, "cg/st/3d村正最終_騎航_通常5.png");
	Rotate("自機１", 0, @0, @0, @90, null, true);
	Zoom("自機１", 0, 300, 300, Dxl2, true);
	CreateTextureSP("敵機１", 100, 736, 188, "イメージ３");

	OnSE("se戦闘_動作_空突進02",1000);
	Move("背景１", 500, @50, @100, Dxl2, false);
	Move("自機１", 500, @50, @50, Dxl2, false);
	Move("敵機１", 500, @-500, @-300, Dxl2, false);

	SetFwL("cg/fw/fw星の角_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【八剣姫Ｂ】
<voice name="八剣姫Ｂ" class="その他女声" src="voice/md05/008vs0060c01">
《跳个舞？》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景１", 100, Center, Middle, "背景イメージ１");
	Zoom("背景１", 0, 600, 600, Dxl2, true);
	CreateTextureSP("自機１", 200, 85, -340, "cg/st/3d村正最終_騎航_通常2.png");
	Zoom("自機１", 0, 300, 300, Dxl2, true);
	CreateTextureSP("敵機１", 200, 203, -190, "イメージ１");
	Request("敵機１", Smoothing);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("背景１", 500, @30, @0, Dxl2, false);
	Move("自機１", 500, @-50, @0, Dxl2, false);
	Move("敵機１", 500, -303, @0, Dxl2, false);

	SetFwL("cg/fw/fw猫の爪_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【八剣姫Ｃ】
<voice name="八剣姫Ｃ" class="その他女声" src="voice/md05/008vs0070c02">
《侵犯？》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("敵機２", 100, 553, -171, "イメージ１");
	Zoom("敵機２", 0, 500, 500, Dxl2, true);
	//CreateTextureSP("自機１", 100, -202, -360, "cg/st/3d村正最終_騎航_通常2.png");

	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("敵機１", 500, 2000, 2000, Dxl1, false);
	Move("敵機１", 500, -803, @0, Dxl1, false);

	Zoom("背景１", 500, 1000, 1000, Dxl1, false);
	Zoom("自機１", 500, 1000, 1000, Dxl1, false);
	Move("自機１", 500, -202, -360, Dxl1, false);
	Move("敵機２", 500, @-500, @0, Dxl1, false);

	SetFwL("cg/fw/fw尾を噛むもの_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【八剣姫Ｄ】
<voice name="八剣姫Ｄ" class="その他女声" src="voice/md05/008vs0080c03">
《杀掉？》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Delete("敵機２");
	CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureSP("敵機１", 200, 46, 363, "イメージ２");
	CreateTextureSP("自機１", 200, -175, -105, "cg/st/3d村正最終_騎航_通常3.png");

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	Move("背景１", 500, @0, 0, Dxl1, false);
	Move("自機１", 500, @0, @100, Dxl1, false);
	Move("敵機１", 500, @0, @-600, Dxl2, false);

	SetFwR("cg/fw/fw肉を剥ぐもの_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【八剣姫Ｅ】
<voice name="八剣姫Ｅ" class="その他女声" src="voice/md05/008vs0090c04">
《还是，死掉？》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆攻撃攻撃
		CreateColorEXadd("色１", 10000, "#FFFFFF");
		LoadImage("エフェクトイメージ", "cg/ef/ef042_汎用打撃.jpg");
		SetAlias("背景１", "背景エイリアス１");
	
		CreateTextureEX("イベント１", 100, 0, 0, "cg/ev/resize/ev927_八剣姫攻撃１_l.jpg");
		SetBlur("イベント１", true, 2, 500, 50, false);
		CreateTextureEX("イベント２", 100, -1024, -276, "cg/ev/resize/ev928_八剣姫攻撃２_l.jpg");
		SetBlur("イベント２", true, 2, 500, 50, false);

		CreateTextureEXadd("エフェクト１", 100, 0, 0, "エフェクトイメージ");
		Zoom("エフェクト１", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXadd("エフェクト３", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");

		SetBlur("敵機１", true, 2, 500, 50, false);

	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進03",1000);

	CreateSE("サウンド２","se戦闘_動作_空突進07");
	CreateSE("サウンド３","se戦闘_攻撃_斧振る01");
	CreateSE("サウンド４","se戦闘_攻撃_鎧かする01");
	CreateSE("サウンド５","se戦闘_動作_空突進07");
	CreateSE("サウンド６","se戦闘_攻撃_斧振る01");
	CreateSE("サウンド７","se戦闘_攻撃_鎧_剣戟04");

	Zoom("敵機１", 200, 2000, 2000, Dxl1, false);
	Fade("色１", 200, 1000, Axl1, true);
	Delete("敵機１");
	Delete("自機１");

	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 0, 0, null, false);

	Fade("エフェクト３", 200, 1000, null, false);
	Zoom("エフェクト３", 500, 2000, 2000, Axl1, false);
	Move("イベント１", 600, -720, -410, Axl1, 400);

//	OnSE("se戦闘_動作_空突進07",1000);
//	OnSE("se戦闘_攻撃_斧振る01",1000);
//	OnSE("se戦闘_攻撃_鎧かする01",1000);
	SoundPlay("@サウンド２",0,1000,false);
	SoundPlay("@サウンド３",0,1000,false);
	SoundPlay("@サウンド４",0,1000,false);

	Shake("エフェクト１", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("イベント１", 1000, 0, 100, 0, 0, 700, Dxl1, false);
	Fade("エフェクト１", 0, 1000, null, true);
	Fade("色１", 300, 1000, Axl1, true);
//	WaitKey();

		Delete("イベント１");
		Fade("エフェクト１", 0, 0, null, true);
		Fade("エフェクト３", 0, 0, null, true);
		Zoom("エフェクト３", 0, 1000, 1000, Axl1, true);
		Zoom("エフェクト１", 0, 1200, 1200, Dxl2, true);
		Rotate("エフェクト１", 0, @0, @180, @0, null, true);

	Fade("イベント２", 0, 1000, null, true);
	Fade("色１", 100, 0, null, false);

	Fade("エフェクト３", 200, 1000, null, false);
	Zoom("エフェクト３", 500, 2000, 2000, Axl1, false);
	Move("イベント２", 600, @720, @200, Axl2, 500);

//	OnSE("se戦闘_動作_空突進07",1000);
//	OnSE("se戦闘_攻撃_斧振る01",1000);
//	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	SoundPlay("@サウンド５",0,1000,false);
	SoundPlay("@サウンド６",0,1000,false);
	SoundPlay("@サウンド７",0,1000,false);

	Shake("エフェクト１", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("イベント２", 1000, 0, 100, 0, 0, 700, Dxl1, false);
	Fade("エフェクト１", 0, 1000, null, true);
	Fade("色１", 300, 1000, Axl2, true);
//	WaitKey();

	Delete("エフェクト１");
	Delete("エフェクト３");
	Delete("イベント２");

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("敵機１", 101, -452, -486, "cg/st/resize/3d八剣姫_立ち_通常_ex.png");
	Zoom("敵機１", 0, 50, 50, Dxl2, true);
	CreateTextureSP("自機１", 101, -600, -100, "cg/st/3d村正最終_立ち_戦闘b.png");
	Zoom("自機*", 0, 3000, 3000, Dxl2, true);

//◆防御
	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Fade("色１", 300, 0, null, false);

	Zoom("敵機１", 1000, 200, 200, Dxl2, false);
	Shake("背景１", 800, 0, 10, 0, 0, 500, Dxl2, false);
	Zoom("背景１", 1000, 1500, 1500, Dxl2, false);
	Shake("自機１", 800, 0, 50, 0, 0, 800, Dxl2, false);
	Zoom("自機１", 1000, 1000, 1000, Dxl2, false);
	BezierMove("自機１", 1000, (@0,@0){@-200,@100}{@800,@100}(@600,@-100), Dxl2, false);

	SetFwC("cg/fw/fw景明_苦痛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0100a00">
「……唔嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　这个动作。

　这个——招式！

　吉野御流合战礼法。
　
　……和光所使用的那个，极为相似。

　连这种东西都继承下来了吗?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0110a00">
「你们——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 1000, 0, 0, SCREEN);

	Delete("自機１");

	CreateTextureSP("背景１", 100, -50, -300, "背景イメージ２");
	CreateTextureSP("敵機１", 100, -497, -462, "cg/st/resize/3d八剣姫_立ち_通常_ex.png");
	Zoom("敵機１", 0, 300, 300, Dxl2, true);
	SetBlur("敵機１", true, 1, 500, 50, false);
	CreateTextureSP("敵機２", 100, 500, -408, "cg/st/resize/3d八剣姫_立ち_通常_ex.png");
	Zoom("敵機２", 0, 500, 500, Dxl2, true);
	CreateTextureSP("敵機３", 100, -50, -885, "イメージ２");
	Zoom("敵機３", 0, 1000, 1000, Dxl2, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,1,2);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@敵機２",10000,2,4);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP3("@敵機３",10000,3,6);
	FadeDelete("背景０", 500, true);

	SetFwC("cg/fw/fw死を唄うもの_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【八剣姫Ｆ】
<voice name="八剣姫Ｆ" class="その他女声" src="voice/md05/008vs0120c05">
《我？》

{	FwC("cg/fw/fw嵐を導くもの_通常.png");
	Move("敵機２", 500, @-500, @0, Dxl3, false);}
//【八剣姫Ｇ】
<voice name="八剣姫Ｇ" class="その他女声" src="voice/md05/008vs0130c06">
《我？》

{	FwC("cg/fw/fw炎の骨_通常.png");
	Move("敵機３", 500, @0, @650, Dxl3, false);}
//【八剣姫Ａ】
<voice name="八剣姫Ａ" class="その他女声" src="voice/md05/008vs0140c00">
《我啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("背景３", 1000, 0, Middle, "旋回イメージ");
	CreateTextureEX("背景４", 1000, 0, Middle, "旋回イメージ");
	//SetVertex("背景３", Center, 200);
	//SetVertex("背景４", Center, 200);
	Zoom("背景３", 0, 3000, 3000, Dxl2, true);
	Zoom("背景４", 0, 3000, 3000, Dxl2, true);

	SetKenkiEX();
	SetKenki("Ａ");
	SetKenki("Ｂ");

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();
	MoveFTP2stop();
	MoveFTP3stop();

	OnSE("se戦闘_動作_空突進02",1000);
	Move("背景１", 300, @-30, @30, Axl1, false);
	Move("敵機１", 300, @-40, @40, Axl1, false);
	Move("敵機２", 300, @-80, @80, Axl1, false);
	Move("敵機３", 300, @400, @-650, Axl1, false);
	Fade("背景３", 300, 1000, null, true);

	CreateSCR1("@背景３","@背景４",1000,-4000,@0);

	CreateSE("サウンド１","se戦闘_動作_空突進05");
	SoundPlay("@サウンド１",1000,500,true);

//◆剣姫Ａ
	OnSE("se戦闘_動作_空突進08",1000);
	FadeKenki("Ａ");

	SetFwC("cg/fw/fw炎の骨_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【八剣姫Ａ】
<voice name="八剣姫Ａ" class="その他女声" src="voice/md05/008vs0150c00">
《“炎骨”！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣姫Ｂ
	SetKenki("Ｃ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ａ");
	FadeKenki("Ｂ");

	SetFwC("cg/fw/fw星の角_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【八剣姫Ｂ】
<voice name="八剣姫Ｂ" class="その他女声" src="voice/md05/008vs0160c01">
《“星角”！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣姫Ｃ
	SetKenki("Ｄ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ｂ");
	FadeKenki("Ｃ");

	SetFwC("cg/fw/fw猫の爪_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【八剣姫Ｃ】
<voice name="八剣姫Ｃ" class="その他女声" src="voice/md05/008vs0170c02">
《“猫爪”！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣姫Ｄ
	SetKenki("Ｅ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ｃ");
	FadeKenki("Ｄ");

	SetFwC("cg/fw/fw尾を噛むもの_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【八剣姫Ｄ】
<voice name="八剣姫Ｄ" class="その他女声" src="voice/md05/008vs0180c03">
《“啮尾”！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣姫Ｅ
	SetKenki("Ｆ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ｄ");
	FadeKenki("Ｅ");

	SetFwC("cg/fw/fw肉を剥ぐもの_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【八剣姫Ｅ】
<voice name="八剣姫Ｅ" class="その他女声" src="voice/md05/008vs0190c04">
《“剥肉”！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣姫Ｆ
	SetKenki("Ｇ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ｅ");
	FadeKenki("Ｆ");

	SetFwC("cg/fw/fw死を唄うもの_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【八剣姫Ｆ】
<voice name="八剣姫Ｆ" class="その他女声" src="voice/md05/008vs0200c05">
《“悼亡”！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣姫Ｇ
	GoKenki("Ｆ");
	OnSE("se戦闘_動作_空突進02",1000);
	FadeKenki("Ｇ");

	SetFwC("cg/fw/fw嵐を導くもの_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【八剣姫Ｇ】
<voice name="八剣姫Ｇ" class="その他女声" src="voice/md05/008vs0210c06">
《“召岚”！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("上背景", 1000, 0, 0, "cg/bg/bg001_空a_02.jpg");

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進03",1000);

	Move("敵機Ａ", 800, @2000, @0, Axl1, false);
	Move("敵機Ｂ", 700, @2000, @0, Axl1, false);
	Move("敵機Ｃ", 600, @2000, @0, Axl1, false);
	Move("敵機Ｄ", 500, @2000, @0, Axl1, false);
	Move("敵機Ｅ", 400, @2000, @0, Axl1, false);
	Move("敵機Ｆ", 300, @2000, @0, Axl1, false);
	Move("敵機Ｇ", 200, @2000, @0, Axl1, false);

	Fade("上背景", 1000, 1000, null, true);
	SCR1stop();

	MoveFRP1stop();
	MoveFRP2stop();
	MoveFRP3stop();
	MoveFRP4stop();
	MoveFRP5stop();
	MoveFRP6stop();
	MoveFRP7stop();

//◆剣姫Ｈ
	CreateTextureSP("背景１", 2000, Center, 0, "背景イメージ２");

	CreateTextureSP("敵機０", 2000, -100, 700, "cg/st/resize/3d境界線_立ち_通常_ex.png");
	Zoom("敵機０", 0, 300, 300, Dxl2, true);
	CreateTextureSP("敵機１", 2000, 0, -100, "イメージ２");
	Zoom("敵機１", 0, 100, 100, Dxl2, true);
	CreateTextureSP("敵機２", 2000, -100, -100, "イメージ２");
	Zoom("敵機２", 0, 300, 300, Dxl2, true);
	CreateTextureSP("敵機３", 2000, 50, -100, "イメージ２");
	Zoom("敵機３", 0, 600, 600, Dxl2, true);
	CreateTextureSP("敵機４", 2000, -150, -100, "イメージ２");
	Zoom("敵機４", 0, 1000, 1000, Dxl2, true);

	CreateSE("サウンド２","se戦闘_動作_空突進01");
	CreateSE("サウンド３","se戦闘_動作_空突進01");
	CreateSE("サウンド４","se戦闘_動作_空突進01");
	CreateSE("サウンド５","se戦闘_動作_空突進01");

	Delete("上背景");
//	WaitKey();

	SetVolume("サウンド１", 0, 800, NULL);
	Move("背景１", 700, @0, @-1000, Dxl1, false);

	Zoom("敵機１", 700, 2000, 2000, Axl1, false);
	Zoom("敵機２", 700, 2000, 2000, Axl1, false);
	Zoom("敵機３", 700, 2000, 2000, Axl1, false);
	Zoom("敵機４", 700, 2000, 2000, Axl1, false);

	MusicStart("サウンド２",0,1000,0,1000,null,false);
	Move("敵機４", 150, @-2000, @-300, Axl1, false);
	Wait(150);
	MusicStart("サウンド３",0,1000,0,1000,null,false);
	Move("敵機３", 150, @2000, @-400, Axl1, false);
	Wait(150);
	Zoom("敵機０", 500, 300, 300, Dxl2, false);
	MusicStart("サウンド４",0,1000,0,1000,null,false);
	Move("敵機０", 500, -221, -444, Dxl2, false);
	Move("敵機２", 150, @-1600, @-500, Axl1, false);
	Wait(150);
	MusicStart("サウンド５",0,1000,0,1000,null,false);
	Move("敵機１", 150, @1600, @-600, Axl1, false);
//	WaitKey();
	Wait(350);

	CreateSE("サウンド６","se戦闘_動作_空突進01");
	SetVolume("サウンド１", 1000, 0, NULL);
	MusicStart("サウンド６",0,1000,0,1000,null,false);

	Move("背景１", 300, @0, -100, Dxl2, false);
	Move("敵機０", 300, -221, -144, Dxl2, false);
	Zoom("背景１", 300, 1500, 1500, Dxl2, false);
	Zoom("敵機０", 300, 1000, 1000, Dxl2, true);

	#av_ここが境界線=true;

	SetFwR("cg/fw/fw境界線_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆このＨのみ声質と口調が大きく違う
//【八剣姫Ｈ】
<voice name="八剣姫Ｈ" class="その他女声" src="voice/md05/008vs0220c07">
《“终结”！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆八騎
	CreateTextureEX("イベント１", 2000, 0, 0, "cg/ev/resize/evex001_八剣姫突撃.jpg");
	SetVertex("イベント１", 512, 50);
	Zoom("イベント１", 0, 3000, 3000, Dxl2, true);
	SetBlur("イベント１", true, 2, 500, 100, false);

	Fade("イベント１", 500, 1000, null, false);
	Zoom("イベント１", 1000, 1000, 1000, Dxl2, true);

	Delete("敵機１");
	Delete("敵機２");
	Delete("敵機３");
	Delete("敵機４");
	Delete("敵機０");
	Delete("背景１");


//下準備
	Move("敵機Ａ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｂ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｃ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｄ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｅ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｆ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｇ", 0, @-3000, @0, Axl1, true);

	Move("背景３", 0, 0, @0, Axl1, true);
	Move("背景４", 0, 0, @0, Axl1, true);

	CreateColorEX("色１", 10000, "#FFFFFF");
	Request("色１", AddRender);

	CreateTextureEX("背景１", 1000, 0, 0, "cg/bg/bg002_空a_02.jpg");
	SetVertex("背景１", 1000, 200);
	CreateTextureEX("自機１", 1000, 0, 0, "cg/st/3d村正最終_騎突_通常.png");
	Zoom("自機１", 0, 100, 100, Dxl2, true);
	SetBlur("自機１", true, 1, 500, 50, false);

	LoadImage("敵機イメージ０", "cg/st/resize/3d八剣姫_騎航_通常3_l.png");
	SetAlias("敵機イメージ０", "敵機イメージ０");

	CreateTextureEX("敵機１", 2000, -575, 500, "敵機イメージ０");
	CreateTextureEX("敵機２", 2000, -775, 600, "敵機イメージ０");
	CreateTextureEX("敵機３", 2000, -275, 700, "敵機イメージ０");
	Rotate("敵機３", 0, @0, @180, @0, null, true);

	SetBlur("敵機１", true, 1, 500, 50, false);

		CreateWindow("ウィンドウ１", 150, 1024, 0, 512, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		CreateTextureSP("ウィンドウ１/背景", 1500, 0, 0, "cg/bg/bg204_横旋回背景c_02.jpg");
		CreateTextureSP("ウィンドウ１/汚染１", 1500, 1103, -195, "cg/st/3d零零式汚染_騎突_通常.png");
		Zoom("ウィンドウ１/汚染１", 0, 300, 300, Dxl2, true);
		CreateTextureSP("ウィンドウ１/汚染２", 1500, 1251, -364, "cg/st/3d零零式汚染_騎突_通常2.png");
		Zoom("ウィンドウ１/汚染２", 0, 500, 500, Dxl2, true);
		CreateTextureSP("ウィンドウ１/汚染３", 1500, 1437, -125, "cg/st/3d零零式汚染_騎突_通常3.png");
		Zoom("ウィンドウ１/汚染３", 0, 700, 700, Dxl2, true);
		CreateTextureSP("ウィンドウ１/敵機１", 1500, -417, -173, "cg/st/3d八剣姫_騎航_通常.png");
		SetBlur("ウィンドウ１/敵機１", true, 1, 500, 50, false);


	SetFwC("cg/fw/fw景明_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0230a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　在这一瞬间，我终于察觉到了。
　……这些家伙不是复制品。

　是碎片。

　是银星号粉碎了自身所诞生，并赋予她们名字的存在。

　所以才如此接近于原型。

　同样强大、锐利、迅捷！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃
	CreateSCR1("@背景３","@背景４",1000,-4000,@0);

	CreateSE("サウンド０","se戦闘_動作_空突進05");
	CreateSE("サウンド１","se戦闘_動作_空突進01");
	CreateSE("サウンド２","se戦闘_動作_空上昇01");
	OnSE("se戦闘_動作_空突進06",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Fade("イベント１", 500, 0, null, false);
	Zoom("イベント１", 500, 1300, 1300, Axl2, false);

	BezierMove("敵機Ａ", 1100, (@0,@-1000){@333,@-200}{@666,@100}(@1000,@0), Dxl1, 100);
	BezierMove("敵機Ｂ", 1000, (@0,@-500){@333,@200}{@666,@-100}(@1000,@0), Dxl1, 100);
	BezierMove("敵機Ｃ", 900, (@0,@300){@333,@-200}{@666,@500}(@1000,@0), Dxl1, 100);
	BezierMove("敵機Ｄ", 800, (@0,@0){@333,@100}{@666,@100}(@1000,@0), Dxl1, 100);
	BezierMove("敵機Ｅ", 700, (@0,@-800){@333,@-600}{@666,@-100}(@1000,@0), Dxl1, 100);
	BezierMove("敵機Ｆ", 600, (@0,@-1200){@333,@-600}{@666,@300}(@1000,@0), Dxl1, 100);
	BezierMove("敵機Ｇ", 500, (@0,@100){@333,@500}{@666,@-100}(@1000,@0), Dxl1, true);

	SoundPlay("サウンド１",0,1000,false);

	Move("敵機Ａ", 500, @500, @-1000, Axl1, false);
	Move("敵機Ｂ", 450, @500, @-1000, Axl1, false);
	Move("敵機Ｃ", 400, @1500, @0, Axl1, false);
	Move("敵機Ｄ", 350, @1000, @500, Axl1, false);
	Move("敵機Ｅ", 300, @1000, @-500, Axl1, false);
	Move("敵機Ｆ", 250, @500, @1000, Axl1, false);
	Move("敵機Ｇ", 200, @1500, @-500, Axl1, false);

	SoundPlay("サウンド２",0,1000,false);
	SoundPlay("サウンド０",3000,800,true);

	//▼雲移動
	CloudZoomVertex(0,@500,@200,Dxl2,false);
	//▼雲開始
	CloudZoomStart(700,1000,1000,500,1000);

	Zoom("背景１", 3000, 2000, 2000, Axl2, false);
	Zoom("自機１", 3000, 300, 300, null, false);
	FadeF("自機１",3000,1000,3000,-50,-120,null,false);

	Rotate("自機１", 2000, @0, @0, 0, Dxl1, false);
	Move("自機１", 2000, @100, @-50, Dxl1, false);
	Fade("背景１", 500, 1000, null, false);
	Fade("自機１", 500, 1000, null, true);
	SCR1stop();

	Fade("敵機３", 0, 1000, null, false);
	Zoom("敵機３", 1000, 700, 700, Dxl2, false);
	Move("敵機３", 1000, @-100, @-1600, Dxl2, false);
	Wait(200);

	Fade("敵機２", 0, 1000, null, false);
	Zoom("敵機２", 800, 500, 500, Dxl2, false);
	Move("敵機２", 800, @-100, @-1500, Dxl2, false);
	Wait(200);

	Fade("敵機１", 0, 1000, null, false);
	Zoom("敵機１", 1000, 300, 300, Dxl2, false);
	Move("敵機１", 1000, @-100, @-1300, Dxl1, false);

	WaitAction("敵機３", null);

	Rotate("自機１", 1000, @0, @0, -90, Axl1, false);
	Move("自機１", 1000, 0, -100, Axl1, false);

	Rotate("敵機３", 600, @0, @0, @30, Dxl1, false);
	Zoom("敵機３", 600, 1000, 1000, Axl1, false);
	Move("敵機３", 600, @2000, @-1000, Axl1, false);
	Wait(200);

	Rotate("敵機２", 700, @0, @0, @-30, Dxl1, false);
	Zoom("敵機２", 700, 1000, 1000, Axl1, false);
	Move("敵機２", 700, @-2000, @-1000, Axl1, false);
	Wait(200);

	Zoom("自機１", 500, 700, 700, Axl1, false);

	Zoom("敵機１", 500, 1000, 1000, Axl1, false);
	FadeF("敵機１",500,1000,1000,-100,0,null,false);

	Fade("色１", 500, 1000, null, true);

//◆防ぐ
	CreateSE("サウンド４","se戦闘_攻撃_鎧_剣戟04");
	CreateSE("サウンド５","se戦闘_攻撃_刀衝突01");
	CreateSE("サウンド６","se戦闘_攻撃_鎧_剣戟01");
	CreateSE("サウンド７","se戦闘_攻撃_殴る05");

		//▼雲消去
		CloudZoomFade(0,false);

		Delete("自機１");
		Delete("敵機１");
		Delete("敵機２");
		Delete("敵機３");

	CreateTextureSP("背景１", 1000, 0, 0, "cg/bg/bg002_空a_02.jpg");
	Zoom("背景１", 0, 1500, 1500, Dxl2, false);

	CreateTextureSP("イベント２", 1000, 0, 0, "cg/ev/ev928_八剣姫攻撃２.jpg");
	SetBlur("イベント２", true, 1, 500, 50, false);
	CreateTextureSP("イベント１", 1000, 0, 0, "cg/ev/ev927_八剣姫攻撃１.jpg");
	SetBlur("イベント１", true, 1, 500, 50, false);
	CreateTextureEX("エフェクト１", 1000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
	Request("エフェクト１", AddRender);
	Zoom("エフェクト１", 0, 1200, 1200, Dxl2, true);
	CreateTextureEX("エフェクト２", 1000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("エフェクト２", 0, @0, @180, @0, null, true);
	Zoom("エフェクト２", 0, 1200, 1200, Dxl2, true);
	Request("エフェクト２", AddRender);

	SetVolume("サウンド０", 1000, 0, NULL);
	SoundPlay("サウンド６",0,1000,false);

	Fade("色１", 300, 0, null, false);

	Zoom("イベント１", 300, 2000, 2000, Axl1, 200);
	Shake("イベント１", 300, 0, 50, 0, 0, 500, Dxl1, false);
	SoundPlay("サウンド７",0,1000,false);
	Fade("エフェクト１", 0, 1000, null, true);
	Shake("エフェクト１", 300, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("エフェクト１", 300, 0, null, false);

	SoundPlay("サウンド５",0,1000,false);

	Fade("イベント１", 300, 0, null, false);
	Zoom("イベント２", 300, 2000, 2000, Axl1, 200);

	SoundPlay("サウンド４",0,1000,false);

	Fade("エフェクト２", 0, 500, null, true);
	Fade("エフェクト２", 600, 1000, null, false);
	Shake("エフェクト２", 300, 0, 50, 0, 0, 500, Dxl1, false);
	Shake("イベント２", 600, 0, 50, 0, 0, 500, Dxl1, false);
	Move("イベント２", 600, @200, @200, Axl1, false);
	Fade("色１", 600, 1000, null, true);



//◆複製連隊、発振砲
	CreateSE("サウンド０","se戦闘_動作_空突進05");
	SoundPlay("サウンド０",1000,300,true);
	OnSE("se戦闘_動作_空突進01",1000);

		Delete("エフェクト*");
		Delete("イベント*");
	
		CreateTextureSP("敵機１", 1000, -200, -300, "イメージ３");
		CreateTextureSP("敵機２", 1000, 200, -100, "イメージ３");
		CreateTextureSP("敵機３", 1000, -50, -100, "イメージ３");
		Zoom("敵機*", 0, 200, 200, Dxl2, true);
	
		CreateTextureSP("自機１", 1100, -400, -400, "cg/st/resize/3d村正最終_立ち_戦闘b_l.png");
		Rotate("自機１", 0, @0, @0, 45, null, true);
		Zoom("自機１", 0, 500, 500, Dxl2, true);

//		CreateWindow("ウィンドウ１", 150, 1024, 0, 512, 576, false);
//		SetAlias("ウィンドウ１", "ウィンドウ１");
//		CreateTextureSP("ウィンドウ１/背景", 1500, 0, 0, "cg/bg/bg204_横旋回背景c_02.jpg");
//		CreateTextureSP("ウィンドウ１/汚染１", 1500, 1103, -195, "cg/st/3d零零式汚染_騎突_通常.png");
//		Zoom("ウィンドウ１/汚染１", 0, 300, 300, Dxl2, true);
//		CreateTextureSP("ウィンドウ１/汚染２", 1500, 1251, -364, "cg/st/3d零零式汚染_騎突_通常2.png");
//		Zoom("ウィンドウ１/汚染２", 0, 500, 500, Dxl2, true);
//		CreateTextureSP("ウィンドウ１/汚染３", 1500, 1437, -125, "cg/st/3d零零式汚染_騎突_通常3.png");
//		Zoom("ウィンドウ１/汚染３", 0, 700, 700, Dxl2, true);
//		CreateTextureSP("ウィンドウ１/敵機１", 1500, -417, -173, "cg/st/3d八剣姫_騎航_通常.png");
//		SetBlur("ウィンドウ１/敵機１", true, 1, 500, 50, false);

	Fade("色１", 600, 0, null, false);

	Zoom("背景１", 2000, 1000, 1000, Dxl1, false);
	Zoom("自機１", 1000, 1000, 1000, Dxl2, false);
	Move("自機１", 2000, @-200, @100, Dxl1, false);

	Zoom("敵機１", 1000, 0, 0, Axl2, false);
	Zoom("敵機２", 1000, 0, 0, Axl2, false);
	Zoom("敵機３", 1000, 0, 0, Axl2, false);
	BezierMove("敵機１", 1000, (@0,@0){@100,@200}{@200,@100}(@400,@-100), Dxl1, false);
	BezierMove("敵機２", 1000, (@0,@0){@100,@200}{@100,@100}(@200,@-300), Dxl1, false);
	BezierMove("敵機３", 1000, (@0,@0){@100,@100}{@100,@100}(@200,@100), Dxl1, 700);

	Move("ウィンドウ１/背景", 5000, @-4000, @0, null, false);

	Move("ウィンドウ１/敵機１", 500, @500, @0, Dxl1, false);
	Move("ウィンドウ１", 500, @-512, @0, Dxl1, true);

	BezierMove("ウィンドウ１/敵機１", 1000, (@0,@0){@10,@10}{@-10,@-30}(@0,@-30), null, 900);

	SetVolume("サウンド０", 1000, 0, NULL);

	Move("ウィンドウ１/汚染*", 500, @-1000, @0, null, false);
	BezierMove("ウィンドウ１/敵機１", 500, (@0,@0){@100,@-50}{@100,@50}(@1000,@100), Axl1, true);
	Move("ウィンドウ１/背景", 0, @0, @0, Axl1, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0240a01">
《敌骑群，二一〇度方向!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0250a00">
「嘁——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_銃器_砲門構え01",1000);
	CreateSE("サウンド１","se戦闘_荒覇吐_攻撃03");
	CreateSE("サウンド２","se戦闘_破壊_爆発05");


//◆発振
		Delete("敵機１");
		Delete("敵機２");
		Delete("敵機３");

		CreateTextureEX("ウィンドウ１/エフェクト１", 2000, 464, 184, "cg/ef/ef047_発振砲集団射撃.jpg");
		Request("ウィンドウ１/エフェクト１", AddRender);
		Rotate("ウィンドウ１/エフェクト１", 0, @0, @0, 45, null, true);
		Zoom("ウィンドウ１/エフェクト１", 0, 1500, 1500, Dxl2, true);

		CreateTextureEX("自機２", 1100, -394, -203, "cg/st/3d村正最終_騎突_通常.png");
		Rotate("自機２", 0, @0, @0, 45, null, true);
		CreateColorEX("ウィンドウ１/色２", 1500, "#FFFFFF");
		Request("ウィンドウ１/色２", AddRender);
		CreateColorEX("色３", 1000, "#FFFFFF");
		Request("色３", AddRender);


	Move("ウィンドウ１/汚染１", 300, @0, @-700, Axl3, false);
	Move("ウィンドウ１/汚染２", 400, @0, @-700, Axl3, false);
	Move("ウィンドウ１/汚染３", 500, @0, @-700, Axl3, false);
	Fade("ウィンドウ１/色２", 500, 500, null, true);

	OnSE("se戦闘_荒覇吐_攻撃01",1000);

	Fade("ウィンドウ１/エフェクト１", 300, 1000, null, false);
	Zoom("ウィンドウ１/エフェクト１", 1000, 2000, 2000, Dxl1, false);
	Shake("ウィンドウ１/エフェクト１", 1000, 0, 50, 0, 0, 600, null, false);
	Rotate("ウィンドウ１/エフェクト１", 1000, @0, @0, 90, null, false);
	Fade("ウィンドウ１/色２", 500, 100, null, true);
	Fade("ウィンドウ１/色２", 500, 1000, null, false);

	DrawTransition("色３", 1000, 0, 1000, 100, null, "cg/data/circle_10_00_0.png", false);
	Fade("色３", 1000, 1000, null, 500);

	SoundPlay("サウンド１",0,1000,false);

	Move("ウィンドウ１", 1000, @512, @, Dxl1, false);

	Move("自機１", 500, @-50, @50, Dxl1, false);
	Move("自機２", 500, @-50, @50, Dxl1, false);
	Fade("自機２", 500, 1000, null, false);
	Fade("自機１", 500, 0, Axl3, false);

	Zoom("自機２", 1000, 3000, 3000, Axl2, 500);

	Shake("自機２", 1000, 0, 50, 0, 0, 700, null, false);
	Move("自機２", 500, @500, @-500, Axl1, false);
	Fade("色１", 500, 1000, null, true);

//◆回避
		CreateColorSP("色０", 199999, "#FFFFFF");
		Request("色０", AddRender);
		Delete("敵機*");
		Delete("自機*");
		Delete("ウィンドウ１*");
		Delete("色２");
		Delete("色３");
		Fade("背景３", 0, 0, null, true);
		Fade("背景４", 0, 0, null, true);
		Delete("背景３");
		Delete("背景４");
		Delete("旋回イメージ");

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();

		//▼コクピット（自機情報：仰角停止）
		CP_AltChange(0,0,null,true);
		//▼コクピット（自機情報：速度停止）
		CP_SpeedChange2(0,800,null,true);
		//▼コクピット（自機情報：高度停止）
		CP_HighChange2(0,890,null,true);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,90,null,true);
		//▼コクピット（自機情報：方位）
		CP_AziChange(0,-130,AxlDxl,true);
	
		//▼コクピット（自機情報：球体ＨＰ）
		//CP_IHPChange(0,10,null,false);
		//▼コクピット（自機情報：装甲）
		MyLife_Count(0,716);
		//▼コクピット（自機情報：出力）
		MyTr_Count(0,294);
		//▼コクピット（自機情報：熱量）
		//CP_PowerChange(0,500,null,false);

		CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg204_横旋回背景b_02.jpg");
		CreateSurfaceEX("絵Suf",200,2000,"背景１");
		Rotate("絵Suf", 0, @0, @0, -180, null, true);
		Fade("絵Suf", 0, 1000, null, true);

	SoundPlay("サウンド２",0,1000,false);

	//▼コクピット（自機情報：振動停止２）
	Shake("@CP_Frame", 1500, 0, 20, 0, 0, 700, Dxl1, false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(1500,0,Dxl1,false);
	//▼コクピット（自機情報：速度停止）
	CP_SpeedChange2(1500,0,Dxl1,false);

	Fade("色０", 1000, 0, null, 500);
	Move("背景１", 10000, @-200, @0, Dxl1, false);
	Rotate("絵Suf", 1000, @0, @0, 0, Dxl1, false);
	Fade("色１", 1000, 0, null, false);
	DrawTransition("色１", 1000, 1000, 0, 500, null, "cg/data/circle_09_00_0.png", true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　……以精锐八骑充当先锋，后方再辅以炮击掩护。
　虽然我不认为那是有计划有预谋的合作，
却合乎战术的考量。

　若是凭战术取胜，以寡敌众的事例并不在少数。
　而若是势均力敌，这个数量的差距便会立即呈现出来。

　会被包围，被蹂躏，被打垮吧。
　
　无法完成应担负的责任与义务。

　即便拟定好作战计划，亦会被轻易瓦解。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆八剣騎と銀星連隊
	CreateColorEX("色２", 19000, "#000000");

	Fade("色２", 500, 1000, null, true);
	CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev228_白銀の軍団_e.jpg");
	Fade("色２", 500, 0, null, true);

	SetFwC("cg/fw/fw景明_怒りa.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0260a00">
（这种下场）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("色２", 500, 1000, null, true);
	CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/resize/evex001_八剣姫突撃.jpg");
	Fade("色２", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　这种没有意义的结局……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("色２", 500, 1000, null, true);

//◆村正
	CreateWindow("ウィンドウ１", 150, 0, 100, 1024, 345, false);
	SetAlias("ウィンドウ１", "ウィンドウ１");
	CreateTextureSP("ウィンドウ１/背景１", 19998, 0, 0, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureSP("ウィンドウ１/イベント１", 19998, 0, 100, "cg/ev/resize/evex002_村正入替.png");
	CreateTextureEX("ウィンドウ１/イベント２", 19998, 0, 100, "cg/ev/resize/evex002_村正入替_a.png");
	CreateTextureEX("ウィンドウ１/イベント３", 19998, 0, 100, "cg/ev/resize/evex002_村正入替_a.png");
	SetBlur("ウィンドウ１/イベント１", true, 2, 500, 50, false);
	SetBlur("ウィンドウ１/イベント３", true, 2, 500, 50, false);
	Zoom("ウィンドウ１/イベント１", 0, 2000, 2000, Dxl1, false);
	Zoom("ウィンドウ１/イベント２", 0, 2000, 2000, Dxl1, false);
	Zoom("ウィンドウ１", 0, 1000, 0, Dxl2, true);

	Zoom("ウィンドウ１/イベント１", 500, 1000, 1000, Dxl1, false);
	Zoom("ウィンドウ１", 500, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我比谁都<?>
{	WaitKey(1000);
	OnSE("se特殊_鎧_装着04",1000);
	Fade("色０", 0, 1000, null, true);
	Fade("ウィンドウ１/イベント３", 0, 500, null, true);
	Fade("色０", 500, 0, null, false);

	Zoom("ウィンドウ１/イベント２", 1000, 1000, 1000, Dxl1, false);
	Zoom("ウィンドウ１/イベント３", 1000, 2000, 2000, Axl1, false);
	Fade("ウィンドウ１/イベント２", 1000, 1000, null, false);
	Fade("ウィンドウ１/イベント３", 500, 0, null, false);
	SoundPlay("@msong04_inst",0,1000,true);
}
无法接受!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("ウィンドウ１/イベント３", null);

//◆突進
		CreateTextureSP("背景１", 100, -250, -5336, "cg/bg/bg202_旋回演出背景山a_02.jpg");
		CreateSurfaceEX("絵Suf",200,2000,"背景１");
		Fade("絵Suf", 0, 1000, null, true);
	
		CreateSE("サウンド１","se戦闘_動作_空突進05");
		CreateSE("サウンド２","se戦闘_動作_空走行01_L");
		CreateSE("サウンド３","se戦闘_攻撃_鎧_剣戟04");//
		CreateSE("サウンド４","se戦闘_攻撃_鎧_吹っ飛ぶ02");//
		CreateSE("サウンド５","se戦闘_攻撃_刀衝突01");
		CreateSE("サウンド６","se戦闘_攻撃_鎧攻撃命中03");
		CreateSE("サウンド７","se戦闘_攻撃_鎧_剣戟04");//
		CreateSE("サウンド８","se戦闘_破壊_爆発08");//
		CreateSE("サウンド９","se戦闘_荒覇吐_攻撃03");//
		CreateSE("サウンド０","se戦闘_荒覇吐_攻撃01");//
		//CreateSE("サウンドＡ","se戦闘_銃器_砲門構え01");//
		CreateSE("サウンドＢ","se戦闘_荒覇吐_攻撃03");//

		Fade("ウィンドウ１/イベント１", 0, 0, null, true);
		Fade("ウィンドウ１/背景１", 0, 0, null, true);

		//▼コクピット（自機情報：振動）
		FrameShake();
		//▼コクピット（自機情報：仰角自動化）
		CP_AltChangeA();
		//▼コクピット（自機情報：高度自動化）
		CP_HighChangeA();
		//▼コクピット（自機情報：速度自動化）
		CP_SpeedChangeA();


		CreateColorEXadd("色１", 10000, "#FFFFFF");


		CreateTextureEX("イベント１", 10000, 0, 0, "cg/ev/ev927_八剣姫攻撃１.jpg");
		Rotate("イベント１", 0, @0, @180, @0, null, true);
		CreateTextureEXadd("エフェクト１", 10000, 0, 0, "cg/ef/ef015_汎用横軌道.jpg");

		CreateTextureEX("イベント２", 10000, 0, 0, "cg/ev/ev928_八剣姫攻撃２.jpg");
		Rotate("イベント２", 0, @0, @180, @0, null, true);
		CreateTextureEXadd("エフェクト２", 10000, 0, 0, "cg/ef/ef011_汎用斜め軌道.jpg");


		CreateTextureEXadd("イベント３", 10000, 0, 0, "cg/ef/ef047_発振砲集団射撃.jpg");
		Rotate("イベント３", 0, @0, @180, @0, null, true);
		Zoom("イベント３", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXadd("エフェクト３", 10000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");

		CreateTextureEX("イベント４", 10000, 0, 0, "cg/ev/ev228_白銀の軍団_e.jpg");
		CreateTextureEXadd("エフェクト４", 10000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");


		//▼雲正面開始
		CloudZoomStart(700,1000,1000,500,1000);
		//▼固定値ランダム
		MoveFFP1("@絵Suf",5000);

		SetBlur("ウィンドウ１/イベント２", true, 2, 500, 50, false);

		CreateTextureEX("敵機１", 200, -100, -100, "イメージ２");
		Zoom("敵機１", 0, 0, 0, Dxl1, false);
		CreateTextureEX("敵機２", 200, 0, 0, "イメージ３");
		CreateTextureEX("敵機３", 200, 1000, -600, "イメージ１");


	SoundPlay("サウンド１",500,1000,true);
	SoundPlay("サウンド２",500,1000,false);

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(500,800,null,false);

	Zoom("ウィンドウ１/イベント２", 300, 2000, 2000, Axl1, false);
	Fade("ウィンドウ１/イベント２", 300, 0, null, false);
	Fade("色２", 300, 0, null, true);

	Wait(500);
	Delete("ウィンドウ１/*");

//◆攻撃攻撃攻撃
//◆回避回避回避

	Fade("敵機１", 0, 1000, null, true);
	Move("敵機１", 300, @200, @0, Axl1, false);
	Zoom("敵機１", 300, 2000, 2000, Axl1, 290);

	//SoundPlay("サウンドＡ",0,1000,false);
	SoundPlay("サウンド７",0,1000,false);

	Fade("色０", 0, 1000, null, false);
	Fade("敵機１", 0, 0, null, false);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色０", 100, 0, null, false);
	Fade("イベント１", 200, 0, null, false);

	Shake("背景１", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("背景１", 600, 50, @0, Dxl1, false);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(200,-45,null,false);

	Rotate("絵Suf", 200, @0, @0, 45, Dxl1, false);
	Fade("エフェクト１", 100, 1000, null, false);
	Fade("色１", 100, 200, null, false);
	Fade("色０", 100, 100, null, false);
	Wait(100);

	SoundPlay("サウンド５",0,1000,false);

	Fade("エフェクト１", 300, 0, null, false);
	Fade("色１", 300, 0, null, false);
	Fade("色０", 300, 0, null, false);
	Wait(200);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(200,0,null,false);

	Rotate("絵Suf", 300, @0, @0, 0, Dxl1, 150);

//	WaitKey();

	SoundPlay("サウンド４",0,1000,false);

	Fade("色０", 0, 1000, null, true);
	Fade("イベント２", 0, 1000, null, true);
	Fade("色０", 100, 0, null, false);
	Fade("イベント２", 300, 0, null, false);

	Fade("敵機２", 0, 1000, null, false);
	Move("敵機２", 500, @1200, @200, Axl1, false);
	Zoom("敵機２", 500, 100, 100, Dxl1, false);

	Shake("背景１", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("背景１", 600, -250, @0, Dxl1, false);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(200,60,null,false);

	Rotate("絵Suf", 200, @0, @0, -60, Dxl1, false);
	Fade("エフェクト２", 100, 1000, null, false);
	Fade("色１", 100, 200, null, false);
	Fade("色０", 100, 100, null, false);
	Wait(100);

	SoundPlay("サウンド０",0,1000,false);
	SoundPlay("サウンド８",0,1000,false);

	Fade("エフェクト２", 300, 0, null, false);
	Fade("色１", 300, 0, null, false);
	Fade("色０", 300, 0, null, false);
	Wait(200);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(300,0,null,false);

	Rotate("絵Suf", 300, @0, @0, 0, Dxl1, 150);

//	WaitKey();
	Fade("イベント４", 100, 500, null, false);

	SoundPlay("サウンドＢ",0,800,false);

	Shake("イベント３", 400, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("イベント３", 0, 1000, null, true);
	Fade("イベント３", 300, 0, null, false);

	Shake("背景１", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("背景１", 300, -450, @0, Dxl1, false);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(200,60,null,false);

	Rotate("絵Suf", 200, @0, @0, -60, Dxl1, false);
	Fade("エフェクト３", 100, 1000, null, false);
	Fade("色１", 100, 200, null, false);
	Fade("色０", 100, 100, null, false);
	Wait(100);

	Fade("イベント４", 300, 0, null, false);

	Fade("エフェクト３", 300, 0, null, false);
	Fade("色１", 300, 0, null, false);
	Fade("色０", 300, 0, null, false);
	Wait(200);

	SoundPlay("サウンド６",0,1000,false);

	Fade("敵機３", 0, 1000, null, false);
	Move("敵機３", 500, @-2000, @1000, null, false);
	Fade("エフェクト４", 100, 1000, null, false);
	Fade("色１", 100, 200, null, false);
	Fade("色０", 100, 100, null, false);
	Wait(100);

	SoundPlay("サウンド３",0,1000,false);

	Fade("色１", 300, 0, null, false);
	Fade("色０", 300, 0, null, false);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(300,-90,null,false);

	Shake("背景１", 600, 0, 30, 0, 0, 700, Dxl1, false);
	Move("背景１", 600, -350, @0, Dxl1, false);
	Rotate("絵Suf", 300, @0, @0, 90, Dxl1, false);
	Wait(300);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(300,0,null,false);

	Fade("エフェクト４", 300, 0, null, false);
	Rotate("絵Suf", 300, @0, @0, 0, Dxl1, true);

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();

//◆根性で突破

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　突破重围了。

　就这样，向着那山顶————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("イベント*");
	Delete("エフェクト*");

		CreateTextureEXadd("イベント１", 10000, 0, 0, "cg/ef/ef047_発振砲集団射撃.jpg");
		Zoom("イベント１", 0, 1200, 1200, Dxl2, true);
		Rotate("イベント１", 0, @180, @180, @0, null, true);
		CreateTextureEXadd("エフェクト１", 10000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Rotate("エフェクト１", 0, @180, @0, @0, null, true);

		CreateTextureEX("背景２", 1700, 0, 0, "cg/bg/bg001_空a_02.jpg");

		CreateTextureSP("敵機１", 2000, -195, -1441, "イメージ２");
		Zoom("敵機１", 0, 100, 100, Dxl2, true);
		CreateTextureSP("敵機２", 2000, -384, -1372, "イメージ２");
		Zoom("敵機２", 0, 200, 200, Dxl2, true);
		Rotate("敵機２", 0, @0, @180, @0, null, true);
		CreateTextureSP("敵機３", 2000, -234, -1288, "イメージ２");
		Zoom("敵機３", 0, 300, 300, Dxl2, true);
		CreateTextureSP("自機１", 2000, 36, 1633, "cg/st/3d村正最終_騎突_戦闘.png");
		Zoom("自機１", 0, 700, 700, DxlAxl, true);

	SoundPlay("サウンド９",0,1000,false);

	Shake("イベント１", 400, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("イベント１", 0, 1000, null, true);
	Fade("イベント１", 300, 0, null, false);

	Shake("背景１", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("背景１", 300, -250, @0, Dxl1, false);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(200,60,null,false);

	Rotate("絵Suf", 200, @0, @0, -60, Dxl1, false);
	Fade("エフェクト１", 100, 1000, null, false);
	Fade("色１", 100, 200, null, false);
	Fade("色０", 100, 100, null, false);
	Wait(100);

	Fade("イベント１", 300, 0, null, false);

	Fade("エフェクト１", 300, 0, null, false);
	Fade("色１", 300, 0, null, false);
	Fade("色０", 300, 0, null, false);
	Wait(200);

	Rotate("絵Suf", 300, @0, @0, 0, Dxl1, false);
	Fade("色０", 300, 1000, null, true);

		Delete("イベント*");
		Delete("エフェクト*");
	
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼雲消去
		CloudZoomFade(0,true);
		//▼固定値ランダム：停止
		MoveFFP1stop();

		Fade("背景２", 0, 1000, null, false);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@自機１",10000,3,15);
		MoveFTP2("@敵機１",10000,3,1);
		MoveFTP3("@敵機２",10000,3,3);
		MoveFTP4("@敵機３",10000,3,5);

		//▼雲開始
		CloudZoomStartB(700,1000,1000,500,1000);

		CreateTextureEX("エフェクト１", 3000, 0, 0, "cg/ef/ef033_分散射撃.jpg");
		Rotate("エフェクト１", 0, @0, @180, @0, null, true);
		SetBlur("エフェクト１", true, 2, 500, 100, false);
		CreateTextureEX("エフェクト２", 3000, 0, 0, "cg/ef/ef022_汎用武者散華.jpg");
		Zoom("エフェクト２", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXadd("エフェクト３", 1800, 0, 0, "cg/ef/ef022_汎用武者散華.jpg");
		Zoom("エフェクト３", 0, 2000, 2000, Dxl2, true);
		CreateTextureEXadd("エフェクト４", 2500, 0, 0, "cg/ef/ef003_汎用移動.jpg");
		Zoom("エフェクト４", 0, 2000, 2000, Dxl2, true);

		CreateTextureEX("イベント１", 10000, -412, -180, "cg/ev/resize/ev956_バロウズ弓構え_am.jpg");

	Fade("色０", 500, 0, null, false);
	Wait(100);

	Move("自機１", 1000, @0, @-2000, Dxl2, false);
	Move("敵機１", 1000, @0, @1000, Dxl2, false);
	Move("敵機２", 1000, @0, @1000, Dxl2, false);
	Move("敵機３", 1000, @0, @1000, Dxl2, false);
	Wait(1000);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0270a01">
《主君，从后面来了!!》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0280a00">
「……唔唔啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆疾走
		CreateSE("サウンド２","se戦闘_バロウズ_ボーガン構え02");
		CreateSE("サウンド３","se戦闘_バロウズ_ボーガン射撃01");
		CreateSE("サウンド４","se戦闘_衝撃_鎧散華");
		CreateSE("サウンド５","se戦闘_動作_空突進03");

	SoundPlay("サウンド５",0,1000,false);

	Fade("エフェクト４", 2000, 1000, null, false);
	Rotate("エフェクト４", 2000, @0, @0, @3600, null, false);

	Zoom("自機１", 2000, 1500, 1500, DxlAxl, false);
	BezierMove("自機１", 2000, (@0,@0){@100,@50}{@100,@50}(@-100,@0){@-300,@-50}{@-500,@-50}(@-700,@-100), Axl1, false);
	Rotate("自機１", 1000, @0, @0, -40, Dxl1, false);

	BezierMove("敵機１", 2000, (@0,@0){@200,@0}{@200,@0}(@300,@0), Dxl1, false);
	BezierMove("敵機２", 2000, (@0,@0){@100,@50}{@100,@50}(@200,@0), Dxl1, false);
	BezierMove("敵機３", 2000, (@0,@0){@400,@-50}{@400,@-50}(@500,@0), Dxl1, false);
	Zoom("敵機１", 2000, 400, 400, Axl1, false);
	Zoom("敵機２", 2000, 600, 600, Axl1, false);
	Zoom("敵機３", 2000, 800, 800, Axl1, 1950);


//◆バロウズ分散射撃
	SetVolume("サウンド１", 100, 1, NULL);
	SoundPlay("サウンド２",0,1000,false);

	Fade("イベント１", 0, 1000, null, false);
	Move("イベント１", 600, @0, @-100, Dxl1, false);
	Wait(300);
	Fade("色０", 300, 1000, null, true);
	Fade("イベント１", 0, 0, null, true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();
		MoveFTP3stop();
		MoveFTP4stop();
	
		Delete("イベント１");
		Delete("エフェクト４");
		Delete("敵機*");

		Wait(32);

	SoundPlay("サウンド３",0,1000,false);

	Zoom("エフェクト１", 500, 1500, 1500, DxlAxl, false);
	Fade("エフェクト１", 0, 1000, null, false);
	Fade("色０", 0, 0, null, true);
	Fade("色０", 500, 1000, null, true);

	SetVolume("サウンド１", 2000, 1000, NULL);
	SoundPlay("サウンド４",0,1000,false);

	Fade("エフェクト１", 0, 0, null, false);
	Fade("エフェクト２", 0, 1000, null, false);
	Fade("エフェクト３", 0, 1000, null, true);

	Zoom("エフェクト２", 2000, 2000, 2000, Axl1, false);
	Shake("エフェクト２", 2000, 0, 50, 0, 0, 600, Dxl1, false);
	Fade("色０", 1000, 0, null, 1000);

	Move("自機１", 2000, @-1000, @-1000, Axl1, false);
	Zoom("自機１", 2000, 2000, 2000, Dxl2, false);

	DrawTransition("エフェクト２", 1000, 1000, 0, 300, null, "cg/data/effect_01_00_0.png", false);
	Fade("エフェクト２", 1000, 0, null, 500);
	DrawTransition("エフェクト３", 25000, 1000, 0, 300, null, "cg/data/effect_01_00_0.png", false);
	Move("エフェクト３", 2000, @-200, @0, Axl1, false);
	Fade("エフェクト３", 2000, 0, null, true);

//◆ずがんずがん
	CreatePlainSP("上背景", 20000);

		Delete("エフェクト*");
		Delete("自機*");
		Delete("背景２");

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,null,true);

		//▼コクピット（自機情報：振動）
		FrameShake();
		//▼コクピット（自機情報：仰角自動化）
		CP_AltChangeA();
		//▼コクピット（自機情報：速度自動化）
		CP_SpeedChangeA();
		//▼コクピット（自機情報：高度自動化）
		CP_HighChangeA();
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

		CreateColorEX("色２", 20000, "#000000");

		CreateTextureEX("背景３", 17000, 0, 0, "cg/bg/resize/bg001_空a_02.jpg");
		CreateTextureEX("自機３", 17000, -174, -411, "cg/st/resize/3dバロウズ_騎突_戦闘3m.png");
	
		CreateTextureEX("背景２", 1000, 0, 0, "cg/bg/bg001_空a_02.jpg");
		CreateTextureEX("自機２", 2000, -174, -311, "cg/st/3dバロウズ_騎突_戦闘3.png");


		//▼雲正面
		CloudZoomStart(700,1000,1000,500,1000);

		//▼固定値ランダム
		MoveFFP1("@背景１",5000);

	SetVolume("サウンド１", 500, 300, NULL);

	FadeDelete("上背景", 500, true);

	Delete("イメージ１");
	Delete("イメージ２");
	Delete("イメージ３");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0290a01">
《————诶？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　已经迫近至我背后的敌骑<k>
　
　……被击落了？

　是谁干的？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0300a01">
《刚才的射击…………我记得。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0310a00">
「村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0320a01">
《是大鸟香奈枝。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0330a00">
「大尉吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0340a01">
《嗯。那边！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆あそこ

	SetVolume("サウンド１", 2000, 500, NULL);

	//▼コクピット（自機情報：仰角停止）
	CP_AltChange(1000,40,Axl1,false);
	Move("背景１", 1000, @0, @3000, Axl1, false);

	Move("背景３", 2000, @0, @-100, Dxl1, false);
	Move("自機３", 2000, @0, @-200, Dxl1, false);
	Fade("背景３", 1000, 1000, null, false);
	Fade("自機３", 1000, 1000, null, true);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);
		//▼雲移動
		CloudZoomVertex(0,@-200,@200,Dxl2,false);

//◆バロウズ
	Fade("背景２", 0, 1000, null, false);
	Fade("自機２", 0, 1000, null, true);
//	Move("背景２", 2000, @0, @-100, Dxl1, false);
	Move("自機２", 1000, @0, @-100, Dxl1, false);
	Fade("背景３", 1000, 0, null, false);
	Fade("自機３", 1000, 0, null, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP3("@自機２",20000,3,10);

		Delete("背景３");
		Delete("自機３");
		Delete("ウィンドウ１");
	
		//▼固定値ランダム：停止
		MoveFFP1stop();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　天空的一角，出现了弓骑士的身影。

　装甲是辉彩装甲么。
　闪耀着明显不同于复制品们的光辉，与此同时，翼筒的
巨大排气音也在轰鸣。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		//▼雲消去
		CloudZoomDelete(0,true);

		Delete("背景２");

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP3stop();

		//▼雲正面
		CloudZoomSet2("マド１",17001,0,0,512,576);
		//▼雲正面
		CloudZoomSet3("マド２",2000,512,0,512,576);
	
		CreateTextureSP("マド１/背景１", 7000, 0, 0, "cg/bg/bg001_空a_02.jpg");
		CreateTextureSP("マド１/自機１", 8000, -522, -362, "cg/st/3dバロウズ_騎突_戦闘.png");

		Move("背景１", 0, @0, @-2500, Axl1, true);
		CreateTextureSP("自機２", 2000, 64, -261, "cg/st/3d村正最終_騎突_通常.png");
		//CreateTextureSP("自機２", 2000, 14, -361, "cg/st/3d村正最終_騎突_通常.png");
		//Rotate("自機２", 0, @0, @0, @40, null, true);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@マド１/自機１",20000,3,10);
		MoveFTP2("@自機２",30000,3,5);

		//▼雲移動
		CloudZoomStart2B(700,1000,1000);
		CloudZoomVertex2(0,@-200,@0,Dxl2,true);
		//▼雲移動
		CloudZoomStart3B(700,1000,1000);
		CloudZoomVertex3(0,@200,@0,Dxl2,true);

	SetVolume("サウンド１", 500, 100, NULL);

	FadeDelete("背景０", 500, true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0350a03">
《久违了，景明大人。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0360a00">
《大鸟大尉！
　……真的是你吗？》

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0370a03">
《这样的美女你觉得世上还会有第二个吗？》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0380a01">
《因为看不到你的脸。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0390a00">
《我都不知道大尉你是武者……
　你为何会拥有剑胄？》

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0400a03">
《那是——》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0410a00">
《是？》

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0420a03">
《这是少女的秘密。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0430a00">
《是吗？》

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0440a03">
《……被一语带过了……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0450a01">
《不过说起来，你为什么会在这种地方？
　说是偶然我可不相信。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　可以说。
　这里不是一般的地方，并非可以用偶然路过
这种借口糊弄过去的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0460a03">
《你们两位才是，
不可能是心血来潮跑到这里来的吧？》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0470a01">
《……意思是说与我们来这里的理由相同？》

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0480a03">
《从天上的太阳增加到两个开始，这个世界
就变得奇怪了。
　只要稍微点脑子还能冷静下来想一想的话，
也就多少能联想到眼下事态的因果关系吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　原来如此。
　即是说香奈枝小姐也是要在太阳
降到地上之前——赶到富士山顶……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0490a03">
《那一位不也是出于同样的理由吗。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0500a00">
《那位？》

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0510a03">
《看啊，就在那儿。
　一条绫弥小姐。》

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0520a02">
《是绫弥一条!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 16000, 0, 0, SCREEN);

		//▼雲消去
		CloudZoomDelete2(0,true);
		//▼雲消去
		CloudZoomDelete3(0,true);

		Delete("マド１");
		Delete("マド２");
		Delete("自機２");

//◆複製数騎
		LoadImage("正宗イメージ１", "cg/st/3d正宗_騎航_戦闘a2.png");
		SetAlias("正宗イメージ１", "正宗イメージ１");
		LoadImage("汚染イメージ１", "cg/st/3d零零式汚染_騎航_通常.png");
		SetAlias("汚染イメージ１", "汚染イメージ１");

		CreateWindow("ウィンドウ１", 19000, 0, 0, 1024, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		Zoom("ウィンドウ１", 0, 0, 1000, Dxl2, true);

		CreateTextureSP("ウィンドウ１/背景１", 18000, 0, 0, "cg/bg/bg002_空a_02.jpg");
		CreateTextureSP("ウィンドウ１/自機１", 18000, -250, 300, "正宗イメージ１");
		Rotate("ウィンドウ１/自機１", 0, @0, @0, 90, null, true);

		CreateTextureEX("イベント１", 19000, 0, 0, "cg/ev/ev948_正宗突進汎用.jpg");
		SetBlur("イベント１", true, 2, 500, 50, false);
		Zoom("イベント１", 0, 2000, 2000, Dxl2, true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();

	SetVolume("サウンド１", 500, 500, NULL);

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進06",1000);

	Zoom("ウィンドウ１", 500, 1000, 1000, Dxl2, false);
	Move("ウィンドウ１/自機１", 500, @0, @-2000, null, true);

	Zoom("イベント１", 500, 1000, 1000, Dxl1, false);
	Fade("イベント１", 500, 1000, null, true);

		Delete("背景０");
		Delete("ウィンドウ１");

//◆剣閃、撃墜
		CreateColorEX("色１", 19999, "#FFFFFF");
		CreateTextureSP("背景２", 18000, Center, Middle, "背景イメージ１");

		CreateTextureSP("敵機１", 18500, -11, -188, "汚染イメージ１");
		Zoom("敵機１", 0, 300, 300, Dxl2, true);
		SetBlur("敵機１", true, 1, 500, 50, false);
		CreateTextureSP("敵機２", 18500, 182, -199, "汚染イメージ１");
		Zoom("敵機２", 0, 500, 500, Dxl2, true);
		SetBlur("敵機２", true, 1, 500, 50, false);
		CreateTextureSP("自機３", 18500, -440, -306, "正宗イメージ１");
		Zoom("自機３", 0, 800, 800, Dxl2, true);
		SetBlur("自機３", true, 1, 500, 50, false);
		CreateTextureSP("敵機３", 18500, 161, -471, "汚染イメージ１");
		Zoom("敵機３", 0, 1000, 1000, Dxl2, true);
		SetBlur("敵機３", true, 1, 500, 50, false);

		Move("敵機*", 0, @-100, @0, Axl1, true);
		Move("自機３", 0, @100, @0, Axl1, true);

		CreateTextureEXadd("エフェクト１", 19000, 0, 0, "cg/ef/ef014_汎用横軌道.jpg");

	SetVolume("サウンド１", 500, 1, NULL);

	OnSE("se戦闘_動作_空突進02",1000);

	Zoom("イベント１", 300, 1500, 1500, Axl1, false);
	Fade("色０", 300, 1000, null, true);
	Delete("イベント１");

	OnSE("se戦闘_攻撃_刀連撃01",1000);
	Fade("エフェクト１", 0, 1000, null, true);
	Wait(1000);

	OnSE("se戦闘_攻撃_剣戟弾く01",1000);
	Fade("色０", 500, 0, null, false);
	Fade("エフェクト１", 500, 0, null, false);

	Move("背景２", 1000, @50, @0, Dxl2, false);
	Move("敵機*", 1000, @100, @0, Dxl2, false);
	Move("自機３", 1000, @-100, @0, Dxl1, true);

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Move("背景２", 600, @100, @0, null, false);
	Move("自機３", 300, @-900, @0, null, false);
	Move("敵機*", 300, @900, @100, null, true);

	Fade("色０", 300, 200, null, false);
	Fade("色１", 300, 1000, null, false);
	DrawTransition("色１", 300, 0, 1000, 100, null, "cg/data/slide_03_00_1.png", true);


//◆正宗
	OnSE("se戦闘_衝撃_鎧散華",1000);

		CreateTextureSP("自機３", 18500, -40, -306, "cg/st/3d正宗_騎突_戦闘.png");
		Zoom("自機３", 0, 800, 800, Dxl2, true);
		SetBlur("自機３", true, 1, 500, 50, false);

		CreateTextureSPadd("エフェクト１", 18000, 0, 0, "cg/ef/ef022_汎用武者散華.jpg");
		Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);

	Zoom("エフェクト１", 2000, 1100, 1100, Dxl1, false);

	Fade("色０", 2000, 0, null, false);
	Fade("色１", 2000, 0, null, false);
	Zoom("自機３", 1000, 1000, 1000, Dxl1, false);
	Fade("エフェクト１", 2000, 0, null, true);

	Delete("敵機*");
	Delete("汚染イメージ１");
	Delete("エフェクト１");


	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0530a00">
《……一条?!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　从另一个方向朝这边瞄准的复制品敌骑群，纷纷
坠落下来。
　仅凭一骑猛烈袭击，就将它们砍杀扫荡殆尽。

　深蓝色，一看便知是古老的名品剑胄。
　
　那是——对了。我曾经见过它一次。

　是被污染时的事，然而那记忆没有消失。
　在建朝寺，看到了一条装备装甲之后
变成了那个武者的形态。

　连她也到这里来了么。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 2000, 100, NULL);

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		CreateTextureSP("背景２", 1000, Center, Middle, "cg/bg/resize/bg202_旋回演出背景山_02ex2.jpg");
		Zoom("背景２", 0, 1100, 1100, Dxl2, true);

		//▼雲正面
		CloudZoomSet2("マド",2000,0,0,1024,576);
		//▼雲開始
		CloudZoomStart2(700,1000,1000);
		//▼雲移動
		CloudZoomVertex2(0,@1000,@500,Dxl2,true);

		CreateTextureSP("自機３", 1500, -160, -226, "cg/st/3d村正最終_騎航_通常b2.png");
		Zoom("自機３", 0, 50, 50, Dxl2, true);
		CreateTextureSP("自機２", 1500, -110, -506, "cg/st/3dバロウズ_騎航_戦闘a.png");
		Zoom("自機２", 0, 300, 300, Dxl2, true);
		CreateTextureSP("自機１", 1500, -470, -276, "cg/st/3d正宗_騎航_戦闘a.png");

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@自機３",30000,3,5);
		MoveFTP2("@自機２",20000,3,7);
		MoveFTP3("@自機１",15000,3,10);

	FadeDelete("背景０", 500, true);

	SetFwR("cg/fw/fw香奈枝_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0540a03">
《哎呀，一不留神失误了。
　对不起啊，小绫弥。》

{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0550a02">
《为什么要在名字前面加个小啊?!》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0560a01">
《你……是来帮我们的？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　村正的语气像是很惊讶。
　比起一条来此，她会援助我们这件事
更让人百思不得其解。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0570a02">
《……别搞错了。
　我完全没有想过要帮助你们。》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0580a01">
《什么意思？》

{	FwR("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0590a02">
《哦？
　要用一句话说明吗——》

{	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0600a03">
《我必须亲手打倒你!!》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0610a01">
《哈？》

{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0620a02">
《不对!!
　不，大体上说是这样，不过!!》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0630a00">
《一条……？》

{	FwR("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0640a02">
《……凑斗先生。
　我还有事想问你，想向你确认。》

{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0650a02">
《所以，如果你不声不响地死了的话就麻烦了。
　……这样解释，
我的意思应该已经很清楚了吧？》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0660a00">
《…………》

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0670a02">
《凑斗先生——》

{	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0680a03">
《我必须亲手打倒你!!》

{	FwR("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0690a02">
《真是固执!!　闭嘴!!　真不要脸!!》

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0700a00">
《一条。》

{	FwR("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0710a02">
《……所以，稍后。》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0720a01">
《…………》

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0730a03">
《热血场面就到此为止。
　也差不多该面对眼下紧逼的现实了吧？》

{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0740a02">
《知道了啦。
　还有，热血的好像只有你一个人吧。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆敵騎群
	CreateTextureEX("イベント１", 19100, 0, -156, "cg/ev/resize/ev228_白銀の軍団_cl.png");
	CreateTextureEX("イベント２", 19100, -1024, -156, "cg/ev/resize/ev228_白銀の軍団_cl.png");
	CreateTextureEX("イベント３", 19100, 0, 0, "cg/ev/ev228_白銀の軍団_c.jpg");

	SetVolume("サウンド１", 1000, 1, NULL);

	Move("イベント１", 20000, @-512, @0, null, false);
	Fade("イベント１", 1000, 1000, null, true);

//	CreateTextureEX("背景１", 19100, 0, 0, "cg/bg/bg002_空a_02.jpg");
//	Fade("背景１", 1000, 1000, null, true);

//	CreateTextureEX("敵機Ａ", 19200, -450, -150, "cg/st/resize/3d八剣姫_立ち_通常_ex.png");
//	Rotate("敵機Ａ", 0, @0, @180, @0, null, true);
//	CreateTextureEX("敵機Ｂ", 19200, 0, -150, "cg/st/resize/3d八剣姫_立ち_通常_ex.png");

//	Move("敵機Ａ", 1000, @30, @0, Dxl1, false);
//	Fade("敵機Ａ", 1000, 1000, null, true);
//	Move("敵機Ｂ", 1000, @-30, @0, Dxl1, false);
//	Fade("敵機Ｂ", 1000, 1000, null, false);

	SetFwC("cg/fw/fw炎の骨_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【八剣姫Ａ】
<voice name="八剣姫Ａ" class="その他女声" src="voice/md05/008vs0750c00">
《增加了吗？》

{	FwC("cg/fw/fw星の角_通常.png");}
//【八剣姫Ｂ】
<voice name="八剣姫Ｂ" class="その他女声" src="voice/md05/008vs0760c01">
《增加了吗？》

{	FwC("cg/fw/fw猫の爪_通常.png");}
//【八剣姫Ｃ】
<voice name="八剣姫Ｃ" class="その他女声" src="voice/md05/008vs0770c02">
《增加了，两个。》

{	Move("イベント２", 20000, @512, @0, null, false);
	Fade("イベント２", 1000, 1000, null, false);
	FwC("cg/fw/fw尾を噛むもの_通常.png");}
//【八剣姫Ｄ】
<voice name="八剣姫Ｄ" class="その他女声" src="voice/md05/008vs0780c03">
《变成三个了。》

{	FwC("cg/fw/fw肉を剥ぐもの_通常.png");}
//【八剣姫Ｅ】
<voice name="八剣姫Ｅ" class="その他女声" src="voice/md05/008vs0790c04">
《三倍！》

{	FwC("cg/fw/fw死を唄うもの_通常.png");}
//【八剣姫Ｆ】
<voice name="八剣姫Ｆ" class="その他女声" src="voice/md05/008vs0800c05">
《三倍，能玩了！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆陣頭に八剣姫
	Fade("イベント３", 1000, 1000, null, true);

	Delete("敵機Ａ");
	Delete("敵機Ｂ");
	Delete("イベント１");
	Delete("イベント２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　当然，敌人没有表现出任何畏惧。
　也没有什么阵势，径直向前突击。

　很快就能到达了吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 500, 100, NULL);
	FadeDelete("イベント３", 500, true);

	SetFwR("cg/fw/fw香奈枝_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0810a03">
《到底是怎么了？
　那些亮闪闪晃人眼的敌人们都干劲满满呢。》

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0820a03">
《但是我们这边，只想早一刻到达
富士山而已……》

{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0830a02">
《差不多吧。
　怎么看重点都在那边。》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0840a01">
《有对策吗？》

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0850a03">
《简单说来，眼下的方案就是二选一。
　是集中战力，还是分头行动。》

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0860a02">
《哪个比较好？》

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0870a03">
《若要采取稳妥的办法，应该是集中战力。
　我们集中力量击破这里的大部队，
而后将富士山上的太阳整个粉碎掉。》

{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0880a03">
《恢复世界和平，然后我们成为传说，
肩并肩微笑着永远眺望
美丽的朝阳——》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0890a01">
《……永远？》

{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0900a03">
《随后画面上就会出现渐隐的『完』
的字幕，然后就这样结束。》

{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0910a02">
《才不会出现这种东西。
　……不过，这种打法说起来是简单。》

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0920a02">
《实际上根本不可能。》

{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0930a00">
《不可能啊……》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs0940a01">
《我觉得不可能。》

{	FwR("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0950a03">
《咦，为什么?!
　这个方针的话，胜败就看我方三骑的凝聚力
——不正是适合于以钢铁般的友情和羁绊
而自豪的我们的作战方式吗！》

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0960a03">
《……嗳。勉强的玩笑话我都说烦了。》

{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs0970a02">
《听的人也是。》

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs0980a03">
《所以说啊，把胜负寄托于在江之岛时就已
大体暴露实情的我们的团结协作关系之上，
简直就是让人笑破肚皮，
现在还是多考虑眼前的现实吧。》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs0990a00">
《分散战力……
　各司其职吗。》

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs1000a03">
《嗯。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		Move("背景１", 0, -250, -5536, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Fade("背景１", 0, 1000, null, false);

		Delete("背景２");
		Delete("自機１");
		Delete("自機２");
		Delete("自機３");

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();
		MoveFTP3stop();

		CreateWindow("ウィンドウ１", 10000, 0, 0, 341, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		CreateTextureSP("ウィンドウ１/背景", 10000, -337, -549, "cg/bg/resize/bg002_空a_02.jpg");
		CreateTextureSP("ウィンドウ１/機体", 10000, -599, -303, "cg/st/3d正宗_騎突_戦闘.png");
	
		CreateWindow("ウィンドウ２", 10000, 340, 0, 341, 576, false);
		SetAlias("ウィンドウ２", "ウィンドウ２");
		CreateTextureSP("ウィンドウ２/背景", 10000, 0, 0, "cg/bg/bg001_空a_02.jpg");
		CreateTextureSP("ウィンドウ２/機体", 10000, -173, -350, "cg/st/3dバロウズ_騎突_戦闘.png");
	
		CreateTextureSP("自機１", 5000, 65, -326, "cg/st/3d村正最終_騎突_戦闘.png");
	
		Zoom("ウィンドウ１", 0, 0, 1000, Dxl2, true);
		Zoom("ウィンドウ２", 0, 0, 1000, Dxl2, true);
	
		Move("背景１", 300000, @0, @1500, null, false);
	
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@自機１",30000,3,10);
	FadeDelete("背景０", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　分派的任务内容无需确认。
　兵分两路，一路在此抵挡复制连队，
另一路攻打富士山顶的首领。

　除此之外别无他法。
　要考虑的，不过是谁去谁留，仅此而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@ウィンドウ２/機体",18000,3,15);
	MoveFTP3("@ウィンドウ１/機体",16000,3,10);

	Zoom("ウィンドウ１", 500, 1000, 1000, Dxl1, false);
	Zoom("ウィンドウ２", 500, 1000, 1000, Dxl1, true);
	Move("背景１", 0, @0, @0, null, false);

	SetFwR("cg/fw/fw香奈枝_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs1010a03">
《明白，那么恭请动身吧。
　景明大人。》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs1020a00">
《……大尉？》

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs1030a03">
《我也好一条小姐也好，都拥有观察事物的
双眼和判断状况的头脑哟。
　我们都很清楚谁才是应该去和
在富士山顶伏击的人作战的人选。》

{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs1040a03">
《对吧？》

{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs1050a02">
《……嘁。》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs1060a00">
《…………》

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs1070a03">
《银星号复制群集结在此，
也就是说，山顶的那个头目是……
　景明大人长久追逐到此的那个对象。》

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs1080a03">
《是否无误？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　正是如此。
　跟<RUBY text="·">她</RUBY>战斗的责任不能推给其他人。

　可是现在，这件事也就等同于——
　将她们二人置于这敌群中只身离开。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs1090a02">
《凑斗先生。
　如果不想去的话，就让我替你去吧。》

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs1100a00">
《……》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs1110a01">
《……主君，无论哪边都是一样的。》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/008vs1120a01">
《不，大概山顶一战更加——》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　我明白。
　同样是威胁，比起量和质都大体有所掌握
的复制连队，完全一无所知的“神”才更加危险吧。

　我如此认为。

　还有，绫弥一条和大鸟香奈枝大尉，若这
两人事到如今看到我以保护者的身份担心她
们的安危，也会觉得这种事颇为可笑吧。

　实际上，这的确十分滑稽。

　我也这样认为。

　……然而。
　理由充分也好，理由不足也罢——

　都不能改变我抛下她们两人的事实……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs1130a00">
《————》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs1140a00">
《我走了。》

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/008vs1150a02">
《是。》

{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/008vs1160a03">
《请早去早回。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();
		MoveFTP3stop();

		Delete("ウィンドウ１");
		Delete("ウィンドウ２");

		CreateTextureSP("背景２", 1000, Center, Middle, "cg/bg/resize/bg202_旋回演出背景山_02ex3.jpg");
		Zoom("背景２", 0, 1100, 1100, Dxl2, true);

		//▼雲開始
		CloudZoomStart2B(700,1000,1000);
		//▼雲移動
		//CloudZoomVertex2(0,@-1800,@-500,Dxl2,true);
		CloudZoomVertex2(0,@-600,@-100,Dxl2,true);

		CreateTextureSP("自機３", 1500, -598, -441, "cg/st/3d正宗_騎航_戦闘a2.png");
		Zoom("自機３", 0, 60, 60, Dxl2, true);
		CreateTextureSP("自機２", 1500, -480, -578, "cg/st/3dバロウズ_騎突_戦闘3.png");
		Zoom("自機２", 0, 140, 140, Dxl2, true);
		CreateTextureSP("自機１", 2000, 90, -131, "cg/st/3d村正最終_騎航_通常b.png");

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@自機３",30000,3,5);
		MoveFTP2("@自機２",20000,3,7);
		MoveFTP3("@自機１",15000,3,10);

	FadeDelete("背景０", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　平淡如水的最后告别，我们
交互的视线分开。
　三人分别，向战场行进。

　绫弥一条。大鸟香奈枝。
　……我将二人留在此。

　与复制连队的战力之悬殊，无论怎么想都只有绝望。
　二人生还的概率，几近于零。

　明知如此，依然前行。
　将二人舍弃。

　……我不应迷惑。

　我业已舍弃的。
　已经有多少人。多少人。

　早先，我舍弃了一个孩童致其丧命。

　而我深信自己所作的决断是有意义的。

　——<RUBY text="··">所以</RUBY>。
　现在，又一次舍弃了。

　必须舍弃。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("色２", 500, 1000, null, true);

	CreateTextureSP("背景３", 15000, -256, -576, "背景イメージ２");

//◆正宗
	CreateTextureSP("自機４", 15000, -300, -282, "cg/st/3d正宗_騎航_戦闘a2.png");
	Move("背景３", 2000, @256, @-256, null, false);
	Move("自機４", 2000, @-50, @50, null, false);
	Fade("色２", 500, 0, null, true);
	Wait(1000);
//	WaitKey();
	Fade("色２", 500, 1000, null, true);

	Move("背景３", 0, 0, -256, Axl1, true);

//◆バロウズ
	CreateTextureSP("自機４", 15000, -201, -411, "cg/st/3dバロウズ_騎突_戦闘3.png");
	Move("背景３", 2000, @-256, @256, null, false);
	Move("自機４", 2000, @50, @-50, null, false);
	Fade("色２", 500, 0, null, true);
	Wait(1000);
//	WaitKey();
	Fade("色２", 500, 1000, null, true);


	Delete("背景３");
	Delete("自機４");
	Fade("色２", 500, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/md05/008vs1170a00">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆疾駆
	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP3stop();

	OnSE("se戦闘_動作_空上昇01",1000);

	Zoom("自機１", 500, 2000, 2000, Dxl1, false);
	Move("自機１", 500, @-100, @100, Axl1, false);

	Fade("色２", 500, 1000, null, true);

		//▼雲消去
		CloudZoomFade2(0,true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP2stop();
		MoveFTP1stop();
		Delete("自機*");

		Move("背景１", 0, 0, -5336, null, false);
		Rotate("絵Suf", 0, @0, @0, @-45, null, true);

		CreateTextureEX("背景２", 17000, -250, -5236, "cg/bg/bg202_旋回演出背景山a_02.jpg");
		CreateTextureEX("自機１", 17000, -204, -169, "cg/st/3d村正最終_騎航_通常3.png");

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();

		//▼コクピット（自機情報：速度停止）
		CP_SpeedChange2(0,800,null,true);

		//▼コクピット（自機情報：仰角自動化）
		CP_AltChangeA();
		//▼コクピット（自機情報：速度自動化）
		CP_SpeedChangeA();
		//▼コクピット（自機情報：高度自動化）
		CP_HighChangeA();

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,90,null,false);

		//▼雲開始
		CloudZoomStart2(700,1000,1000);
		//▼雲移動
		CloudZoomVertex2(0,@-400,@-400,Dxl2,true);

		//▼固定値ランダム
		MoveFFP1("@背景１",5000);

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(500,0,Dxl1,false);

		OnSE("se戦闘_動作_空突進08",1000);
		SetVolume("サウンド１", 1000, 400, NULL);

		Rotate("絵Suf", 500, @0, @0, 0, Dxl1, false);
		Move("背景１", 500, @-250, @0, Dxl1, false);

	Fade("色２", 500, 0, null, true);

		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　前行。

　没有留下任何言语。
　谢罪或是感谢，从我口中吐出的话语都
毫无意义，这种痛苦我很清楚。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 3000, 0, NULL);
	//SetVolume("@mbgm*", 3000, 0, NULL);

	OnSE("se戦闘_動作_空突進03",1000);

	//▼コクピット（自機情報：高度停止）
	CP_HighChange2(1000,1300,Dxl1,false);
	//▼コクピット（自機情報：仰角停止）
	CP_AltChange(1000,35,Dxl1,false);
	Move("背景１", 1000, @0, @200, Dxl1, 500);

	Fade("自機１", 300, 1000, null, false);
	Fade("背景２", 300, 1000, null, false);

	Move("自機１", 1500, @0, @500, Axl1, false);
	Zoom("自機１", 1500, 100, 100, null, false);
	Move("背景２", 2000, @0, @2000, AxlDxl, true);

	Move("背景２", 2000, @0, @50, null, false);
	ClearFadeAll(2000, true);

	//▼コクピット（削除）
	//CP_AllDelete();
}

function SetKenkiEX()
{
	CreateTextureSP("敵機Ａ", 1000, -34, -122, "イメージ１");
	Move("敵機Ａ", 0, @-500, @1000, Dxl1, true);
	MoveFRP1("@敵機Ａ",20000,3,3);
	CreateTextureSP("敵機Ｂ", 1000, -196, -440, "イメージ１");
	Move("敵機Ｂ", 0, @-500, @1000, Dxl1, false);
	MoveFRP2("@敵機Ｂ",20000,4,4);
	CreateTextureSP("敵機Ｃ", 1000, 213, -267, "イメージ１");
	Move("敵機Ｃ", 0, @-1500, @0, Dxl1, false);
	MoveFRP3("@敵機Ｃ",20000,6,6);
	CreateTextureSP("敵機Ｄ", 1000, 182, -37, "イメージ１");
	Move("敵機Ｄ", 0, @-1000, @-500, Dxl1, false);
	MoveFRP4("@敵機Ｄ",20000,8,8);
	CreateTextureSP("敵機Ｅ", 1000, 152, -384, "イメージ１");
	Move("敵機Ｅ", 0, @-1100, @500, Dxl1, false);
	MoveFRP5("@敵機Ｅ",20000,10,10);
	CreateTextureSP("敵機Ｆ", 1000, -229, -61, "イメージ１");
	Move("敵機Ｆ", 0, @-1000, @-1000, Dxl1, false);
	MoveFRP6("@敵機Ｆ",20000,12,12);
	CreateTextureSP("敵機Ｇ", 1000, -455, -245, "イメージ１");
	Move("敵機Ｇ", 0, @-1000, @600, Dxl1, false);
	MoveFRP7("@敵機Ｇ",20000,15,15);
	$KenkiOff=true;
}

function SetKenki($敵機)
{
	if(!$KenkiOff){
		if($敵機=="Ａ"){
			CreateTextureSP("敵機Ａ", 1000, -34, -122, "イメージ１");
			Move("敵機Ａ", 0, @-500, @1000, Dxl1, true);
			MoveFRP1("@敵機Ａ",20000,3,3);
		}else if($敵機=="Ｂ"){
			CreateTextureSP("敵機Ｂ", 1000, -196, -440, "イメージ１");
			Move("敵機Ｂ", 0, @-500, @1000, Dxl1, false);
			MoveFRP2("@敵機Ｂ",20000,4,4);
		}else if($敵機=="Ｃ"){
			CreateTextureSP("敵機Ｃ", 1000, 213, -267, "イメージ１");
			Move("敵機Ｃ", 0, @-1500, @0, Dxl1, false);
			MoveFRP3("@敵機Ｃ",20000,6,6);
		}else if($敵機=="Ｄ"){
			CreateTextureSP("敵機Ｄ", 1000, 182, -37, "イメージ１");
			Move("敵機Ｄ", 0, @-1000, @-500, Dxl1, false);
			MoveFRP4("@敵機Ｄ",20000,8,8);
		}else if($敵機=="Ｅ"){
			CreateTextureSP("敵機Ｅ", 1000, 152, -384, "イメージ１");
			Move("敵機Ｅ", 0, @-1100, @500, Dxl1, false);
			MoveFRP5("@敵機Ｅ",20000,10,10);
		}else if($敵機=="Ｆ"){
			CreateTextureSP("敵機Ｆ", 1000, -229, -61, "イメージ１");
			Move("敵機Ｆ", 0, @-1000, @-1000, Dxl1, false);
			MoveFRP6("@敵機Ｆ",20000,12,12);
		}else if($敵機=="Ｇ"){
			CreateTextureSP("敵機Ｇ", 1000, -455, -245, "イメージ１");
			Move("敵機Ｇ", 0, @-1000, @600, Dxl1, false);
			MoveFRP7("@敵機Ｇ",20000,15,15);
		}
	}
}

function FadeKenki($敵機)
{
	$Kenki移動速度=800;
	$Kenki拡大速度=600;

	if($敵機=="Ａ"){
		Move("敵機Ａ", $Kenki移動速度, -104, -207, Dxl2, false);
	}else if($敵機=="Ｂ"){
		Move("敵機Ｂ", $Kenki移動速度, -84, -237, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 2000, 2000, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 2000, 2000, Dxl2, false);
	}else if($敵機=="Ｃ"){
		Move("敵機Ｃ", $Kenki移動速度, -50, -237, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1800, 1800, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1800, 1800, Dxl2, false);
	}else if($敵機=="Ｄ"){
		Move("敵機Ｄ", $Kenki移動速度, -26, -207, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｃ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1600, 1600, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1600, 1600, Dxl2, false);
	}else if($敵機=="Ｅ"){
		Move("敵機Ｅ", $Kenki移動速度, -74, -217, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 300, 300, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Zoom("敵機Ｃ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｄ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1400, 1400, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1400, 1400, Dxl2, false);
	}else if($敵機=="Ｆ"){
		Move("敵機Ｆ", $Kenki移動速度, -104, -227, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 200, 200, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 300, 300, Dxl1, false);
		Zoom("敵機Ｃ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Zoom("敵機Ｄ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｅ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1200, 1200, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1200, 1200, Dxl2, false);
	}else if($敵機=="Ｇ"){
		Move("敵機Ｇ", $Kenki移動速度, -455, -245, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 100, 100, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 200, 200, Dxl1, false);
		Zoom("敵機Ｃ", $Kenki拡大速度, 300, 300, Dxl1, false);
		Zoom("敵機Ｄ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Zoom("敵機Ｅ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｆ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1000, 1000, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1000, 1000, Dxl2, false);
	}
}

function GoKenki($敵機)
{
	if($敵機=="Ａ"){
		//Zoom("敵機Ａ", $Kenki拡大速度, 100, 100, Dxl1, false);
		Move("敵機Ａ", $Kenki拡大速度, -50, -30, Dxl1, false);
	}else if($敵機=="Ｂ"){
		//Zoom("敵機Ｂ", $Kenki拡大速度, 200, 200, Dxl1, false);
		Move("敵機Ｂ", $Kenki拡大速度, -196, -440, Dxl1, false);
	}else if($敵機=="Ｃ"){
		//Zoom("敵機Ｃ", $Kenki拡大速度, 300, 300, Dxl1, false);
		Move("敵機Ｃ", $Kenki拡大速度, 213, -267, Dxl1, false);
	}else if($敵機=="Ｄ"){
		//Zoom("敵機Ｄ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Move("敵機Ｄ", $Kenki拡大速度, 182, -37, Dxl1, false);
	}else if($敵機=="Ｅ"){
		//Zoom("敵機Ｅ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Move("敵機Ｅ", $Kenki拡大速度, 152, -384, Dxl1, false);
	}else if($敵機=="Ｆ"){
		//Zoom("敵機Ｆ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Move("敵機Ｆ", $Kenki拡大速度, -229, -61, Dxl1, false);
	}else if($敵機=="Ｇ"){
		//Zoom("敵機Ｇ", $Kenki拡大速度, 1000, 1000, Dxl1, false);
		Move("敵機Ｇ", $Kenki拡大速度, -455, -245, Dxl1, false);
	}
}



..//ジャンプ指定
//次ファイル　"md05_009.nss"