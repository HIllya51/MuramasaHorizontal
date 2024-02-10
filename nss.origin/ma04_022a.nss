//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_022a.nss_MAIN
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


//嶋：特殊仕様です
	if($ma04_022a_routeFlag==true){$ma04_022a_routeFlag = false;}
	else{$Others_Flag = $Others_Flag+4;SetHex();}

	RouteChicker();

	if($RC_N["アナザー"] < $RC_N["一条"] && $RC_N["アナザー"] < $RC_N["香奈枝"] && $RC_N["アナザー"] < $RC_N["村正"]){

		SatugaiSystem();
		judgment_of_count();

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_Oth";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		$グレイワンド殺害 = true;
		$PreGameName = $GameName;
		$GameName = "ma04_023.nss";

	}else if($RC_N["一条"] < $RC_N["アナザー"] && $RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else if($RC_N["香奈枝"] < $RC_N["アナザー"] && $RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else if($RC_N["村正"] < $RC_N["アナザー"] && $RC_N["村正"] < $RC_N["一条"] && $RC_N["村正"] < $RC_N["香奈枝"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else{

		SatugaiSystem();
		judgment_of_count();

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_Oth";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		$グレイワンド殺害 = true;
		$PreGameName = $GameName;
		$GameName = "ma04_023.nss";
	}

	//▼ルートフラグ、選択肢、次のGameName

//	$GameName = "ma04_022b.nss";
//	$GameName = "ma04_023.nss";


}

scene ma04_022a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_022.nss"

//●娘だ
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　是的。
　这名少女的确<RUBY text="······">和那家伙一样</RUBY>——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆好感度画面表示
//◆アナザーに＋５？
//◆アナザーが最高値になったらキル判定。このまま進行。
//◆そうでなければ「●違う」"ma04_022b.nss"へ
//$Another_Flag = $Another_Flag+5;
	$ma04_022a_routeFlag = true;
	$Others_Flag = $Others_Flag+4;

	judgment_of_count();

}

//――――――――――――――――――――――――――――――
.次シーン
scene ma04_022a.nss_Oth
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm04",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　如此思考的瞬间。
　<RUBY text="··">诅咒</RUBY>将我束缚。

　因为，刚才——
　我杀死了卡杰特少佐。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆斬撃。ずばしゅ。
	CreatePlainSP("絵震背景", 200);
	CreateSE("SE01","se戦闘_攻撃_刀刺さる04");
	SL_leftdown(@0, @0,3000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵震背景", 600, 6, 0, 0, 0, 1000, Dxl2, false);
	SL_leftdownfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　持刀猛扑。
　向着银色的少女。

　那身影何其相似。

　……少女面带惊愕地注视着我的眼睛。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆刺す。ずぶ。
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	SL_centerout(@0, @0,3000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵震背景", 600, 0, 6, 0, 0, 1000, Dxl2, false);
	SL_centeroutfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　刀尖刺入。
　少女的胸膛。

　她的双眼，
　
　诉说着，为什么。

　
　　　　为什么要杀我。
　　　　我明明是那么地，那么地喜欢你。

　
　　　　　　　　明明渴望着你的爱。

　
　　　　　　　　　　父亲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0010a00">
「闭嘴。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬る
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵血", 3000, "#CC0000");
	CreateColorSP("絵血２", 3000, "#CC0000");
	CreateColorSP("絵黒地", 1000, "#000000");
	CreateTextureSP("絵刀１", 1100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Wait(10);
	Fade("絵血２", 0, 0, null, true);
	Fade("絵血", 1000, 0, DxlAuto, false);
	DrawTransition("絵血", 400, 1000, 0, 100, null, "cg/data/effect_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　挥刃相向。
　向着<RUBY text="······">不由得想起的</RUBY>，那张脸。

　就算如此，少女仍在诉说。
　诉说着对我的爱。

　
　　　　　　　　　　　我喜欢你。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0020a00">
「吵死了——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざしゅざしゅ
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 1000, null, true);
	Wait(10);
	Fade("絵血", 0, 1000, null, true);
	CreateTextureEX("絵刀２１", 1100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵刀２２", 1100, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	Fade("絵刀２*", 0, 750, null, true);
	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 0, null, true);
	Fade("絵血", 1000, 200, DxlAuto, false);
	DrawTransition("絵血", 400, 1000, 200, 100, null, "cg/data/effect_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　
　　　　　　　　　　　爱我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0030a00">
「去死。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずしゅずしゅ
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 1000, null, true);
	Wait(10);
	Fade("絵血", 0, 1000, null, true);
	CreateTextureEX("絵刀３１", 1100, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵刀３２", 1100, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	Fade("絵刀３*", 0, 750, null, true);
	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 0, null, true);
	Fade("絵血", 1000, 400, DxlAuto, false);
	DrawTransition("絵血", 400, 1000, 400, 100, null, "cg/data/effect_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　
　　　　　　　　　请爱我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0040a00">
「去死。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっくし
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 1000, null, true);
	Wait(10);
	Fade("絵血", 0, 1000, null, true);
	CreateTextureEX("絵刀４１", 1100, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵刀４*", 0, 750, null, true);
	Fade("絵血２", 0, 0, null, true);
	Fade("絵血", 1000, 600, DxlAuto, false);
	DrawTransition("絵血", 400, 1000, 600, 100, null, "cg/data/effect_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　
　　　　　　　　　　爱我——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0050a00">
「去死。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0060a00">
「去死。」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0070a00">
「去死————————————————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆滅多切り
//◆殺したイメージ
	SetVolume("SE*", 100, 0, null);
	PrintGO("上背景", 15000);
	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵血", 2000, "#CC0000");
	CreateColorSP("絵黒床", 10, "#000000");
	Delete("上背景");
	Wait(10);
	Delete("絵血");

	SL_centerdam(@0, @0,1500);
	SL_centerdamfade2(10);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/ma04/022a0080a14">
「呵。」

//【光】
<voice name="光" class="光" src="voice/ma04/022a0090a14">
「呵！」

//【光】
<voice name="光" class="光" src="voice/ma04/022a0100a14">
「啊哈哈哈哈哈！
　啊——哈哈哈哈哈哈哈哈！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 5000);
	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStL(0,true);
	DrawDelete("上背景", 300, 1000, "slide_02_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我站在血洼中凝视着上方。
　<RUBY text="····">还有一个</RUBY>。

　银星号放声笑着。
　此刻如同魔王一般地大笑着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/ma04/022a0110a14">
「痛快！痛快！
　让我看到了哦，景明！」

//【光】
<voice name="光" class="光" src="voice/ma04/022a0120a14">
「太精彩了——
　这是何等精彩的爱啊!!」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0130a00">
「……银星号——……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　让我杀死了。
　让我杀死了，<RUBY text="····">这种东西</RUBY>。

　因使我杀人而快乐。

　光——不——
　
　魔王!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/ma04/022a0140a14">
「哈哈哈哈哈哈！
　啊、哈哈哈哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("@StL*", 600, @-60, @0, null, false);
	DeleteStA(600,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　飞舞而上。
　万分优美地——如同纤细的鱼儿在湖水中跳跃一般。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(0,true);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 100, 100, "slide_03_01_0", true);
	DrawDelete("絵暗転", 100, 100, "slide_03_01_0", true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0150a00">
「别想逃———————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	SetVolume("SE*", 200, 0, null);


..//ジャンプ指定?
//次ファイル　"ma04_023.nss"

}


