//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_001.nss_MAIN
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
	#bg078_いーかげんな法廷_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆第三話で殺した方
	//皇路操を殺害　"mc02_001a.nss"
	//綾弥一条を殺害　"mc02_001b.nss"
	//$GameName = "mc00_001.nss";
	//$SelectGameName="@->"+$GameName+"_SELECT";
	//call_scene $SelectGameName;

	if($操殺害 == true){$GameName = "mc02_001a.nss";
	}else if($一条死亡 == true){$GameName = "mc02_001b.nss";}

}

scene mc02_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_026.nss"

	//$操殺害 = true;
	//$一条死亡 = true;

//◆ＳＥ：ガコーン。ドアを乱暴に開けたような
//◆いーかげんな法廷風景
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/bg/bg078_いーかげんな法廷_01.jpg");
	CreateColorSP("黒幕１", 25001, "BLACK");
	CreateColorSP("白幕１", 25000, "WHITE");
	OnSE("se人体_動作_叩く02",1000);

	Delete("上背景");

	DrawDelete("黒幕１", 300, 1000, "slide_06_00_0", true);
	SoundPlay("@mbgm34",0,1000,true);
	FadeDelete("白幕１", 400, true);

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0010010a07">
「现在开始进行随意审判！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0010020a07">
「被告人，上前。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0010030a00">
「是。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("はやあるき","se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("はやあるき",0,1000,0,2000,null,false);
	WaitKey(1500);
	SetVolume("はやあるき", 0, 0, null);

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0010040a07">
「检察官！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1800, @0, @50, "cg/st/st雄飛_通常_制服.png");
	Move("@StR*", 300, @0, @-50, Axl3, false);
	OnSE("se日常_物_椅子鳴る02",1000);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0010050b56">
「到！」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0010060a07">
「首先，检举其罪状。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0010070b56">
「嗯……第一，被告凑斗景明
将我杀害。」

//嶋：修正（双子）【091005】
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0010080b56">
「之后，他又将年幼的虾夷双子
杀害了。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//◆小分岐
//◆第三話で殺した方
//皇路操を殺害　"mc02_001a.nss"
//綾弥一条を殺害　"mc02_001b.nss"

//★選択肢シーン
scene mc02_001.nss_SELECT
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
	SetChoice02("皇路操を殺害","綾弥一条を殺害");
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
//皇路操を殺害　"mc02_001a.nss"
				$GameName = "mc02_001a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//綾弥一条を殺害　"mc02_001b.nss"
				$GameName = "mc02_001b.nss";
		}
	}


}


