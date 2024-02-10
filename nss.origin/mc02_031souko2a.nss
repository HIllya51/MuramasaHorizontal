
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2a.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;


//嶋：デバッグフラグ
//	$擂粉木_Flag=true;

	if($擂粉木_Flag==true){
		call_scene @->mc02_031souko2a_s.nss;

		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$GameName = "mc02_031souko2ab.nss";
	}

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆擂粉木_Flagがある場合、選択肢を表示それ以外は下記
	//$GameName = "mc02_031souko2ab.nss";


}

scene mc02_031souko2a.nss
{

..//ジャンプ指定
//前ファイル　"mc02_031souko2.nss"

}

scene mc02_031souko2a_s.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");
	Delete("上背景");

//●景明
//◆※擂粉木ある場合のみ選択肢、無ければ自動で素手
//◆擂粉木_Flagがある場合、選択肢を表示

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……说起来，从厨房带出来的这个研磨棒。
　似乎适合用来以适度的威力将人击倒……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：擂粉木を使う／使わない

}

..//ジャンプ指定
//◆擂粉木を使う　"mc02_031souko2aa.nss"
//◆使わない　"mc02_031souko2ab.nss"

//★選択肢シーン
scene mc02_031souko2a.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("使用研磨棒","不使用");
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
//◆擂粉木を使う　"mc02_031souko2aa.nss"
				$GameName = "mc02_031souko2aa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆使わない　"mc02_031souko2ab.nss"
				$GameName = "mc02_031souko2ab.nss";
		}
	}
}


