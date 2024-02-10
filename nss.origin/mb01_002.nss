//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_002.nss_MAIN
{

	$TITLE_NOW=" ————　英雄篇　———— ";

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg014_鎌倉繁華街_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//嶋：常に表示されるので、デバッグモード実装まで解除します。
	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆香奈枝生存の場合　"mb01_002a.nss"
	//◆それ以外　"mb01_003.nss"
	//$GameName = "mb01_002a.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	if($香奈枝死亡 == true){
		$GameName = "mb01_003_1.nss";
	}else{
		$GameName = "mb01_002a.nss";
	}


}

scene mb01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_001.nss"

//◆鎌倉·夜？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg014_鎌倉繁華街_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm33",0,1000,true);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	StL(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0020010a02">
「……不可能。」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mb01/0020020a12">
「嘿……」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0020030a02">
「不可能、不可能、不可能……！
　你说那个人连无罪的人都杀!?」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0020040a02">
「你这家伙居然敢信口胡说——」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mb01/0020050a12">
「你可以去问啊。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0020060a02">
「什么？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mb01/0020070a12">
「去问他本人啊……姑娘。
　那家伙一定不会撒谎……」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mb01/0020080a12">
「像姑娘这样的人去当面质问他……我想，大
概。
　他会照实回答的……」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0020090a02">
「…………」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mb01/0020100a12">
「嘿，嘿……
　嘿嘿嘿嘿嘿嘿嘿嘿嘿……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 2000);

//◆テロップ？
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒面", 10000, "#000000");
	CreateColorSP("絵黒地", 150, "#000000");
	Move("絵黒地", 0, -512, @0, null, true);
	CreateTextureSP("絵テロ１", 100, Center, Middle, "cg/sys/Telop/tp_英雄編序文.png");
	Zoom("絵テロ１", 0, 700, 700, null, true);
	Request("絵テロ１", Smoothing);
	Delete("上背景");
	FadeDelete("絵黒面", 2000, true);

	WaitKey(2000);
	FadeDelete("絵黒地", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这并非英雄的故事。

　但英雄仍会降临。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆タイトル：装甲悪鬼村正　英雄編

	PrintBG("上背景", 30000);
	CreateTextureSP("絵テロ１", 20000, Center, Middle, "cg/sys/Telop/lg_英雄編.png");
	FadeDelete("上背景", 2000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

}


..//ジャンプ指定
//◆フラグ分岐
//◆香奈枝生存の場合　"mb01_002a.nss"
//◆それ以外　"mb01_003.nss"


//★選択肢シーン
scene mb01_002.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("香奈枝生存の場合","それ以外");
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
//◆香奈枝生存の場合　"mb01_002a.nss"
				$GameName = "mb01_002a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆それ以外　"mb01_003.nss"
				$GameName = "mb01_003.nss";
		}
	}
}