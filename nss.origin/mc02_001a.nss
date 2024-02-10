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

scene mc02_001a.nss_MAIN
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

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆第五話で殺した方
	//時田光男を殺害　"mc02_002a.nss"
	//綾弥一条を殺害　"mc02_002b.nss"
	//$GameName = "mc00_001.nss";

	if($時田光男殺害 == true){$GameName = "mc02_002a.nss";}
	else if($一条死亡 == true){$GameName = "mc02_002b.nss";}

//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

scene mc02_001a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_001.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm34",0,1000,true);
	CreateTextureSP("絵背景20", 0, Center, Middle, "cg/bg/bg078_いーかげんな法廷_01.jpg");
	StR(1800, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStR(0,true);

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
{Delete("上背景");}
<voice name="雄飛" class="雄飛" src="voice/mc02/001a0010b56">
「接着，他又杀害了装甲骑手皇路操。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//◆小分岐
//◆第五話で殺した方
//時田光男を殺害　"mc02_002a.nss"
//綾弥一条を殺害　"mc02_002b.nss"

//★選択肢シーン
scene mc02_001a.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	OnBG(100,"bg078_いーかげんな法廷_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("時田光男を殺害","綾弥一条を殺害");
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
//時田光男を殺害　"mc02_002a.nss"
				$GameName = "mc02_002a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//綾弥一条を殺害　"mc02_002b.nss"
				$GameName = "mc02_002b.nss";
		}
	}
}