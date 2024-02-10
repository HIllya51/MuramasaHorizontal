//<continuation number="240">

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

scene mc01_010vs.nss_MAIN
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
	#ev946_村正ＶＳガッタイダー_a=true;
	#ev946_村正ＶＳガッタイダー_c=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;



	if($mc01_010vs_防御に徹する==true){
		if($First_Battle_Defense == true){
//◆防御に徹する「●防御失敗」　"mc01_010vsb.nss"
			$PreGameName = $GameName;
			$GameName = "mc01_010vsb.nss";
		}else{
//◆防御に徹する「●防御成功」　"mc01_010vsa.nss"
			$PreGameName = $GameName;
			$GameName = "mc01_010vsa.nss";
		}
	}else if($mc01_010vs_迎え撃つ){
//◆迎え撃つ　"mc01_010vsc.nss"
		$PreGameName = $GameName;
		$GameName = "mc01_010vsc.nss";
	}

}

scene mc01_010vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_009vsa.nss"
//前ファイル　"mc01_009vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆合流
//◆上昇→ロールして上下反転→ピッチアップ
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");
	CreateTextureSP("絵背景100", 500, Center, -5000, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Move("絵背景50", 0, @0, @-206, AxlDxl, false);
	SetBlur("絵背景*", true, 2, 500, 50, false);
	Shake("絵背景*", 2160000, 0, 2, 0, 0, 1000, null, false);

//あきゅん「ＣＰ：初期値定義」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値;
	}

	//SetFont("黑体", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("Dt1", 15000, 50, 20, 700, 500, $合体戦ライフ調整値);Wait(32);

	MyLife_Count(0,$合体戦ライフ調整値);
	CP_IHPChange(0,10,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,475);

	CP_PowerChange(0,920,null,false);

	CP_HighChange(0,1824,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,0,null,false);

//あきゅん「ＣＰ：上昇ロール開始」
	OnSE("se戦闘_動作_空突進01",1000);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", false);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

	Move("@絵背景50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@絵背景50",3000,180,Dxl1,true);
	Delete("@絵背景50");

	MyTr_Count(500,450);
	Move("絵背景100", 4500, @0, -500, Axl2, false);
	CP_SpeedChange(3000,540,null,false);

	Wait(3000);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);

	OnSE("se戦闘_動作_空上昇01",1000);
	Move("絵背景100", 2000, @0, 800, Dxl1, false);
	Zoom("絵背景100", 2000, 1500, 1500, Dxl1, true);

	WaitKey(600);

//あきゅん「ＣＰ：敵対演出」
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("絵演合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Move("絵演合体", 0, @0, @-70, null, true);
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 150, 150, null, true);

	Move("絵演合体", 300, @0, @-30, DxlAuto, false);
	Fade("絵演合体", 300, 1000, null, true);

	CockPit_LockSet(@0,@-100);
	OnSE("se特殊_コックピット_ロックオン",1000);
	CP_LockOnFade(300,"on",true);

	WaitKey(600);

	CreateTextureEX("絵演", 17000, Center, -290, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Move("絵演", 4000, @0, -40, DxlAuto, false);
	Fade("絵演", 1000, 1000, null, true);

	Cockpit_AllFade0();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　翻转过身体，再次与敌人对峙。
　重新审视这个彻头彻尾的怪物。它的身上带有些宗教
性的感觉——当然绝非什么善类，而是多数宗教都彻底
否定的纯粹之恶的完美展现。

　究竟是谁在操控这个骑体呢。
　虽然从剑胄传音里的声音听来应该是女性，但她的声
音格外的高昂，且带着莫名的回声，因此无法断定究竟
是否为女性。只能确定她似乎不太理智。

　这架充满谜团的敌骑和我做出了同样的动作。
　
　……但，它翻转的弧度明显要更大。

　即它的旋转性能远在村正之下。
　虽然高度优势仍在敌骑手中，但若一直像现在这样比
下去的话，那最终形势一定会逆转。

　在武者的太刀对击中，像村正这样擅长小角度翻转的
骑体的优势，是可以占取先机，在对方准备好之前就先
展开进攻。
　必须要将这一优点发挥出来。那么。

　第二回合该如何应对。
　敌骑依旧高举它那宛若以憎恨铸造而成的战斧，笔直
地猛冲了过来——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：防御に徹する／迎え撃つ
//◆一合目も防御選択なら「●防御失敗」へ、でなければ「●防御成功」へ

..//ジャンプ指定
//◆防御に徹する「●防御成功」　"mc01_010vsa.nss"
//◆防御に徹する「●防御失敗」　"mc01_010vsb.nss"
//◆迎え撃つ　"mc01_010vsc.nss"


}



//★選択肢シーン
scene mc01_010vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("絵演", 17000, Center, -40, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("贯彻防御战术","迎击");
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
//◆防御に徹する「●防御失敗」　"mc01_010vsb.nss"
				$mc01_010vs_防御に徹する = true;
		}
		case @選択肢２
		{
			ChoiceB02();
//◆迎え撃つ　"mc01_010vsc.nss"
				$mc01_010vs_迎え撃つ = true;
		}
	}
}


