
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

scene mc01_021vsba.nss_MAIN
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
	#ev904_村正マグネットコーティング_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$First_Battle_Damage=$First_Battle_Damage+1;
	$PreGameName = $GameName;

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//次ファイル　"mc01_022vs.nss"
	//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
	//$GameName = "mc00_001.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_022vs.nss";
	}

}

scene mc01_021vsba.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}
	//$First_Battle_Damage = 1;

//●正極
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵演", 5000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	CreateWindow("絵窓", 19000, 0, 108, 1024, 360, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 19000, "#CC0000");
	CreateTextureSP("絵窓/絵演立絵装甲弐", 19100, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	CreateTextureSPadd("絵窓/絵演立絵装甲参", 19120, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	Move("絵窓/絵演立絵装甲*", 0, @290, @160, null, true);
	Zoom("絵窓/絵演立絵装甲*", 0, 800, 800, null, true);
	Request("絵窓/絵演立絵装甲*", Smoothing);
	DrawTransition("絵窓/絵演立絵装甲参", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);
	Wait(32);
	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0360a01">
《磁装·正极！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆マグネットコーティング
	CreateSE("SE01","se戦闘_陰義_磁力展開");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 19500, "WHITE");
	Fade("絵色白",10,1000,null,true);

	CreateTextureEX("絵演磁力障壁", 19400, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	SetVertex("絵演磁力障壁", 750, 280);
	Zoom("絵演磁力障壁", 0, 2000, 2000, null, true);
	SetBlur("絵演磁力障壁", true, 3, 500, 60, false);
	Fade("絵演磁力障壁", 0, 1000, null, true);

	Delete("絵窓*");
	Delete("絵演");

	Fade("絵演磁力障壁", 250, 1000, Dxl1, false);
	Zoom("絵演磁力障壁", 250, 1000, 1000, Dxl1, false);
	FadeDelete("絵色白", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　全身的运动机能因磁力效果而被最完善化。
　维持这个阴义期间，发挥超出武者常识的战斗
机动力并非不可能。

　就这样，杀出敌阵！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵の攻撃
	CreateSE("SE00","se戦闘_動作_空上昇01");

	CreateWindow("絵窓", 19600, 342, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 19610, "#CC0000");
	CreateTextureSPmul("絵窓/絵演背景", 19620, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19700, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Move("絵窓/絵演立絵装甲", 0, @0, @300, null, true);//ダミー注意：仮位置
	Zoom("絵窓/絵演立絵装甲", 0, 500, 500, null, true);

	MusicStart("SE00",0,1000,0,1000,null,false);
	Zoom("絵窓/絵演立絵装甲", 600, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵装甲", 600, @0, @-100, Dxl2, false);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);
	Zoom("絵窓/絵演立絵装甲", 500, 3000, 3000, Dxl2, false);
	Move("絵窓/絵演立絵装甲", 500, @0, @-200, Dxl2, false);

	Wait(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE02","se戦闘_攻撃_斧振る01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-100,2000);
	SL_downfade2(10);

	Delete("絵窓*");

//◆避ける
	CreateSE("SE02a","se特殊_陰義_磁力加速01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	SetVolume("SE02a", 5000, 0, null);
	SetFrequency("SE02a", 3000, 500, Dxl3);
	CreateColorSP("絵色白", 30000, "#FFFFFF");

	Wait(10);

//◆ずがー。ちょっと食った。
	CreateSE("SE03a","se戦闘_衝撃_衝突01");
	CreateSE("SE03b","se戦闘_攻撃_鎧攻撃命中03");

	Delete("絵色黒*");
	Delete("絵演磁力障壁");

	CreateTextureSP("絵空背景", 100, Center, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	CreateTextureSPadd("絵空背景覆", 110, Center, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	Move("絵空背景*", 0, @0, @288, null, true);

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

	MyTr_Count(0,520);
	CP_SpeedChange(0,512,null,false);

	CP_PowerChange(0,577,null,false);

	CP_HighChange(0,1281,null,false);
	CP_AziChange(0,18,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	MusicStart("SE03a",0,1000,0,1500,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);

	Shake("絵空背景*", 1500, 60, 0, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 2000, 60, 0, 0, 0, 1000, Dxl2, false);

	FadeDelete("絵空背景覆", 1000, false);
	DrawDelete("絵色白", 150, 100, "circle_01_00_1", false);

	Wait(700);

	$合体戦ライフ減少値 = $合体戦ライフ調整値 - 218;
	MyLife_Count(300,$合体戦ライフ減少値);

	$合体戦生命減少値 = $合体戦生命調整値 - 3;
	CP_IHPChange(300,$合体戦生命減少値,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0370a01">
《胸前装甲被击中！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0380a00">
（没能避开吗!?）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 19000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　但——并不是致命伤！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitPlay("SE*", null);

//◆ダメージ＋１
//◆→●生存

}

..//ジャンプ指定
//次ファイル　"mc01_022vs.nss"
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"

//★選択肢シーン
scene mc01_021vsba.nss_SELECT
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
//次ファイル　"mc01_022vs.nss"
				$GameName = "mc01_022vs.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
				$GameName = "mc01_010vsz.nss";
		}
	}
}