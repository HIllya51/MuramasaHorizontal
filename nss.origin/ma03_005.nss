//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_005.nss_MAIN
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
	#bg031_八幡宮境内_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"ma03_004.nss"

//◆八幡宮境内·夜
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_03.jpg");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0050010a00">
「……您这是什么意思？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0050020a11">
「我承认这给你造成了麻烦的状况。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　辞别了亲王大人，走在八幡宫内。
　在等待前去做准备工作的香奈枝小姐的时候，
我小声地和署长交谈着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0050030a11">
「但是，你会不明白这个道理吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0050040a00">
「确实。
　我明白您不想把她放在身边。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0050050a11">
「没错。
　担任联盟军将校的大和人。实在有太多的地
方不可以信任了。」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0050060a11">
「而且她姓<RUBY text="··">大鸟</RUBY>。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0050070a00">
「……是的。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0050080a11">
「之前的发言也是完全看不出她的本意在哪里。
　我觉得那也许是ＧＨＱ通过她这个
传声筒发出的通知。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0050090a00">
「是这样吗。
　先不管她的本意之所在，我觉得那是她自己
的意思。」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0050100a11">
「……是吗。
　你跟她认识的时间比较长。你这么说的话，
也许的确是这样。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0050110a11">
「我想听听看。
　在你看来，她是值得我们信赖的人吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：是／否

}

..//ジャンプ指定
//◆是　"ma03_005a.nss"
//◆否　"ma03_005b.nss"



//★選択肢シーン
scene ma03_005.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	OnBG(100,"bg031_八幡宮境内_03.jpg");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("背景０");
	SoundPlay("@mbgm30",0,1000,true);

//■選択肢
	SetChoice02("是","否");
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
//是　"ma03_005a.nss"
				$GameName = "ma03_005a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//否　"ma03_005b.nss"
				$GameName = "ma03_005b.nss";
		}
	}
}
