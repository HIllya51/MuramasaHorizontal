//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_043a.nss_MAIN
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
	#ev128_病床の光_h=true;
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md02_043a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_043.nss"

//●英雄になる
	PrintBG("上背景", 30000);
	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);
	Delete("上背景");

//◆ウェイト

	WaitKey(1000);

//◆ＣＧ差分：光の首に両手を掛ける

	CreateTextureEX("病床2", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	Fade("病床2", 1000, 1000, null, true);
	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateTextureEX("病床4", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");

	CreateSE("SE01","se人体_動作_締める01");
	CreateSE("SE02","se人体_動作_締める02");


//◆フェードアウト

	CreateColorEX("黒幕１", 2000, "BLACK");

	Wait(500);

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);

	Wait(2000);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 3000, 0, 0, Dxl3, false);

	Fade("黒幕１", 3000, 1000, null, true);


//◆絞め殺された、という感じで。弱弱しく
//◆ボイスのみ、テキスト表示せず
	CreateVOICE("光","md02/043a0010a14");
	MusicStart("光",0,1000,0,1000,null,false);

	WaitPlay("光", null);

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0010]
//	SetFwC("cg/fw/fw光_通常b.png");
//【光】
<voice name="光" class="光" src="voice/md02/043a0010a14">
//「………………………………」

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这之后的事不必再说。
　即便不说也该明白。

　仅仅诉说着终结吧。
　
　这个<RUBY text="游戏">故事</RUBY>的胜利不是<RUBY text="你">英雄</RUBY>，
而是以足利茶茶丸的大捷落幕。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル