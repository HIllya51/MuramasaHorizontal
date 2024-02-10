//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_034.nss_MAIN
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
	#bg003_荒れ野_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md06_034.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_033b.nss"

//◆bg003
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 1000, "BLACK");

	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	CreateSE("風", "se自然_風_荒野_L");
	MusicStart("風", 1000, 800, 0, 800, null,true);

	Delete("上背景");
	FadeDelete("黒", 1500, true);

//BGMなしはわざとです。

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340010a12">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0340020a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我放下石头，站起身。
　尽管我已离开，雪车町依然保持倒下的姿势，
看着我。

　转过身。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340030a12">
「等等……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0340040a00">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340050a12">
「为什么不杀我？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0340060a00">
「我不会杀你。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340070a12">
「不是恨我吗？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0340080a00">
「恨。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　发自内心深处的憎恶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340090a12">
「那，为什么？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0340100a00">
「……纯粹只为了复仇的话，没必要杀你。」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340110a12">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0340120a00">
「我……
　无法因憎恶而杀人……」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340130a12">
「……是么……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340140a12">
「那，以后准备怎么办？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0340150a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　以后。
　我该，怎么办？

　拒绝复仇。
　凑斗景明要做什么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340160a12">
「本来应该已经逃走了吧。
　如果不是我在车站阻止。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0340170a00">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0340180a12">
「要逃避吗？
　将自己所做之事，全部抛开……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("風*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　忘却一切。
　独自离开。

　还是————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：逃げる／選んだ道を進む

}

..//ジャンプ指定
//◆逃げる　"md06_034a.nss"
//◆選んだ道を進む　"md06_034b.nss"



//★選択肢シーン
scene md06_034.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintBG("背景０", 30000);

	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("逃避","踏上已选择的路");
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
//◆逃げる　"md06_034a.nss"
				$GameName = "md06_034a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆選んだ道を進む　"md06_034b.nss"
				$GameName = "md06_034b.nss";
		}
	}
}