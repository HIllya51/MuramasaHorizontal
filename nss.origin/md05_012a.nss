//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_012a.nss_MAIN
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
	#bg088_チェイテ城のホール_01b=true;
	#ev188_血浴の貴婦人_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_012a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_012.nss"


//●待つ
//◆足音、止まる

	PrintBG("上背景", 30000);
	OnBG(100, "bg088_チェイテ城のホール_01b.jpg");
	FadeBG(0, true);
	Delete("上背景");


	SetNwH("cg/fw/nyその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆横書き
//◆顔グラなし
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0010a04">
「……哎呀。
　这真是位很棒的客人。」

//◆横書き
//◆顔グラなし
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0020a04">
「教皇厅真有耐心呢。
  派遣前去讨伐的骑士都还未归来——
又来了新的骑士。」

//◆横書き
//◆顔グラなし
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0030a04">
「看起来，这次是东洋的人吗？
　……呵呵。似乎很令人愉快呢……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/012a0040a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……说实话。
　眼下我已经察觉到。

　没错，
　失败了。

　再无必要去询问沉默的村正。
　将我拉回原来正确时空间的力量，已被切断……
  
　就在声音主人认出我的那一刻。

　这，非人的魔兽的眼神，
　将我作为猎物看准的那瞬间。

　……从现在开始，我和村正，将置身于这难以想象
的艰难困苦中。
　弄清时间移动的方法，回到正确的时空间——
要探究到何种程度呢，光是想想便觉目眩。

　然后。
　为了向这无尽苦难的道路迈出步伐。

　首先——不得不存活下来。

　在这场殊死战斗中。

　优美的肢体。优雅的外貌。在以装甲武装的武者面前，
无所畏惧地舔舐着舌头——这位连名字也不曾知晓，浑
身充满鲜血味的妖艳贵妇，只要从她的魔爪中逃脱，
　便连绝望也从未开始！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：ヤングさよ。服装は貴婦人モード。

	CreateTextureEX("やんぐさよ", 5000, @0, @0, "cg/ev/ev188_血浴の貴婦人_b.jpg");
	Fade("やんぐさよ", 1000, 1000, null, true);

	Wait(500);

	SetFwH("cg/fw/fwさよ吸血正装_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆横書き
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0050a04">
「来吧，开演吧，东方的骑士大人。
　恰赫蒂斯城堡的漫漫长夜！」

//◆横書き
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/012a0060a04">
「永不天明的永久之夜！
　疯狂华丽地一起度过吧……！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆アイアンメイデン·発動
//◆ゲームオーバー処理


	OnSE("se特殊_鎧_バートリィ発動", 1000);

	CreateTextureSP("バートリィ", 5100, @0, @0, "cg/ef/ef032_バートリィb.jpg");
	DrawTransition("バートリィ", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1000);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

	ClearWaitAll(3000, 1500);
	

/*
	CreateColorEX("黒2", 15000, "BLACK");
	Fade("黒2", 2000, 1000, null, true);

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	WaitKey();

	ClearWaitAll(1500, 1500);
*/
}

..//ジャンプ指定
//次ファイル