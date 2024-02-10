
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_011vsaba.nss_MAIN
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
	$First_Battle_Damage = $First_Battle_Damage+1;

	$PreGameName = $GameName;

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//次ファイル　"mc01_012vs.nss"
	//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
	//$GameName = "mc01_012vs.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_012vs.nss";
	}


}

scene mc01_011vsaba.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vsab.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}
	//$mc01_011vsab = left;//デバッグ用

//●右or左
//前ファイルの選択肢に添った演出を入れてください
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景", 100, Center, -576, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空突進01");

//◆転回ー。
	if($mc01_011vsab == left){
		MusicStart("@SE01",0,1000,0,1000,null,false);
		CreateColorSP("絵色黒", 30000, "#000000");
		DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
		Delete("絵背景*");
		CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");
		SetBlur("絵演背景", true, 3, 500, 30, false);
		Move("絵演背景", 650, @576, @0, Dxl2, false);
		DrawDelete("絵色黒", 150, 100, "slide_01_01_1", true);
	}else if($mc01_011vsab == right){
		MusicStart("@SE01",0,1000,0,1000,null,false);
		CreateColorSP("絵色黒", 30000, "#000000");
		DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
		Delete("絵背景*");
		CreateTextureSP("絵演背景", 17000, InLeft, Middle, "cg/bg/resize/bg002_空a_01.jpg");
		SetBlur("絵演背景", true, 3, 500, 30, false);
		Move("絵演背景", 650, @-576, @0, Dxl2, false);
		DrawDelete("絵色黒", 150, 100, "slide_01_01_0", true);
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　剧烈的沉重感突然袭遍全身。
　但此刻已无暇理会那些。

　能躲开吗——？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ボーディーホーン発射
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_a.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_a.jpg");

	CreateTextureSPadd("絵演効果", 18900, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", false);

	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	WaitKey(600);

//◆ずがーん。食らう
//◆レッドフラッシュ
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE03a","se戦闘_破壊_鎧03");

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演空背景", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	Delete("上背景");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,359);
	CP_SpeedChange2(0,418,null,false);

	CP_PowerChange(0,870,null,false);

	CP_HighChange2(0,842,null,false);

//あきゅん「ＣＰ：避けた方角により方位が変化します」
	if($mc01_011vsab == left){
	CP_AziChange(0,26,null,false);
	}else if($mc01_011vsab == right){
	CP_AziChange(0,186,null,false);
	}

	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	Shake("@CP_Frame*", 2000, 50, 50, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 2000, 0, 50, 0, 0, 1000, Dxl2, false);

	CP_PowerChange(2000,790,null,false);

	MyTr_Count(2000,286);
	CP_SpeedChange2(2000,318,null,false);

	FadeDelete("絵色白", 2000, false);

	Wait(1700);

	$合体戦ライフ減少値 = $合体戦ライフ調整値 - 218;
	MyLife_Count(300,$合体戦ライフ減少値);

	$合体戦生命減少値 = $合体戦生命調整値 - 3;
	CP_IHPChange(300,$合体戦生命減少値,null,false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0150a00">
「啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 18000, Center, Middle, "cg/bg/bg002_空a_01.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　左脚……被<RUBY text="···">剜掉了</RUBY>！
　整块肉都被完整地剜去了。

{	Fade("絵背景", 1000, 1000, null, false);}
　一阵让人不禁战栗的缺失感袭来。
　但却在千钧一发之际避开了直接的攻击……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("絵背景", null);
	Cockpit_AllFade0();

//◆ダメージ＋１

}

..//ジャンプ指定
//次ファイル　"mc01_012vs.nss"
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"

//★選択肢シーン
scene mc01_011vsaba.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("通常","ダメージフラグ２");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//次ファイル　"mc01_012vs.nss"
				$GameName = "mc01_012vs.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
				$GameName = "mc01_010vsz.nss";
		}
	}
}



