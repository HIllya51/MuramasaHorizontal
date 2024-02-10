
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004ba.nss_MAIN
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

scene mb04_004ba.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004b.nss"

//●救える
	PrintBG("上背景", 30000);
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　要怎么救!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

//◆選択：用刀背砍／只需阻止敌人的剑／劝阻


..//ジャンプ指定
//◆用刀背砍　"mb04_004baa.nss"
//◆只需阻止敌人的剑　"mb04_004bab.nss"
//◆劝阻　"mb04_004bac.nss"


//★選択肢シーン
scene mb04_004ba.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("用刀背砍","只需阻止敌人的剑","劝阻");
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
			ChoiceA03();
//◆峰打ちにする　"mb04_004baa.nss"
				$GameName = "mb04_004baa.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆敵の剣だけ止める　"mb04_004bab.nss"
				$GameName = "mb04_004bab.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆説得する　"mb04_004bac.nss"
				$GameName = "mb04_004bac.nss";
		}
	}
}