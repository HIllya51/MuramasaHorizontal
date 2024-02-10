
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_011vsab.nss_MAIN
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
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_011vsab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vsa.nss"

//●退避
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵ＥＶ", 18000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_a.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　————这很不妙！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景", 100, Center, -576, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	FadeDelete("絵ＥＶ", 600, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0130a00">
「村正，回避！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0140a01">
《诶？
　回——回避到哪儿!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：右／左／上／後方
//◆左右の選択肢は内容が同じなのでファイル内で分岐されます

..//ジャンプ指定
//◆右　"mc01_011vsaba.nss"
//◆左　"mc01_011vsaba.nss"
//◆上　"mc01_011vsabb.nss"
//◆後方　"mc01_011vsabc.nss"

}




//★選択肢シーン
scene mc01_011vsab.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("絵背景", 100, Center, -576, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("右","左","上","后方");
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
			ChoiceA04();
//◆右　"mc01_011vsaba.nss"
				$mc01_011vsab = right;
				$GameName = "mc01_011vsaba.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆左　"mc01_011vsaba.nss"
				$mc01_011vsab = left;
				$GameName = "mc01_011vsaba.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆上　"mc01_011vsabb.nss"
				$GameName = "mc01_011vsabb.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆後方　"mc01_011vsabc.nss"
				$GameName = "mc01_011vsabc.nss";
		}
	}
}

