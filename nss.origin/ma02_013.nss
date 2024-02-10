//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_013.nss_MAIN
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
	#bg023_弥源太の家_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	if(#復讐編終了 == true){$SelectGameName="@->"+$GameName+"_SELECT02";}
	else{$SelectGameName="@->"+$GameName+"_SELECT01";}

		call_scene $SelectGameName;

}

scene ma02_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_012.nss"

	PrintBG("上背景", 30000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0130010a03">
「哎呀，这味道真不错。汁水十分丰富
……嗯～太美妙了。
　这个凉拌青菜也很美味。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0130020b05">
「对不起……
　我们只能用这种粗茶淡饭招待各位。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0130030a03">
「不会不会。
　新鲜时蔬野菜、烧制火候绝妙的米饭
与亲手制作的味增汤……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0130040a03">
「这类饭菜才是最棒的美餐。
　对吧，纱代？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0130050a04">
「正是正是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　人口增加了一半，简单地介绍完后，
饭菜就端上来了。
　……并没说其他的事。我、弥源太老人以及
到访的两人都没有。因为现在不需要。

　大鸟大尉把麦子和大米混合掺半的饭就着咸菜
大口吃着。
　食量真大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0130060b05">
「武士大人，您要再来一碗吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0130070a00">
「拜托了。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0130080a03">
「武士大人？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　香奈枝歪了歪头。
　……话说回来，虽然我一直感到疑惑，
但不小心错过了订正的机会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0130090a00">
「失礼了。
　我并非在六波罗中有地位的人，
所以不用那样称呼我。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0130100b05">
「啊、这样啊。但是……
　您是武者。而且比六波罗的那些人
更有武士大人的风范。」


{	FwC("cg/fw/fwふき_笑い.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0130110b05">
「您还是武士大人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0130120a00">
「这……可是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我该如何说明自己不是那样的人呢？
　正疑惑该如何选择语言，忽而听见嗤嗤笑声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0130130a03">
「有什么不好的？
　这么说来，您的确有种武士风范。
干脆我也这么称呼吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0130140a00">
「请饶了我吧。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0130150a03">
「可是我不想一直用凑斗大人
这种拘谨的称呼呀。
　我想用更加亲切的词语称呼您。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0130160a00">
「……感谢您的好意，然而如此一来，
就更不应该称呼我为武士大人了，
不是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　而且我是非正式警官，她是军人。
　要说武士，她才更像武士。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0130170a03">
「是吗？
　那我就叫您景明大人好了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0130180a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0130190a03">
「可以吗？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0130200a04">
「凑斗大人。您不会在这种场合下
做出摇头拒绝这种完全不懂眼色的反应吧？
　纱代相信凑斗大人！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　你说这种话，我也很困扰啊……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

//◆選択：「お任せします」／「お断りします」／「ばあや殿なら……」
//◆※ばあや選択肢は香奈枝クリア後に出現


.//ジャンプ指定
//◆お任せします　"ma02_013a.nss"
//◆お断りします　"ma02_013b.nss"
//◆ばあや殿なら……　"ma02_013c.nss"


//★選択肢シーン
scene ma02_013.nss_SELECT01
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	SoundPlay("@mbgm30",0,1000,true);


//■選択肢
	SetChoice02("那就听您的吧","还是拒绝");
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
//お任せします　"ma02_013a.nss"
				$GameName = "ma02_013a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//お断りします　"ma02_013b.nss"
				$GameName = "ma02_013b.nss";
		}
	}
}


//=========================================================
//★選択肢シーン
scene ma02_013.nss_SELECT02
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	SoundPlay("@mbgm30",0,1000,true);


//■選択肢
	SetChoice03("那就听您的吧","还是拒绝","如果是婆婆的话……");
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
//お任せします　"ma02_013a.nss"
				$GameName = "ma02_013a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//お断りします　"ma02_013b.nss"
				$GameName = "ma02_013b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//ばあや殿なら……　"ma02_013c.nss"
				$GameName = "ma02_013c.nss";
		}
	}
}

