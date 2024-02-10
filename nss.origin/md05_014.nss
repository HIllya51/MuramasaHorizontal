//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_014.nss_MAIN
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
	#bg003_荒れ野_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_013a.nss"


//◆燎原。bg003a

	PrintBG("上背景", 30000);
	CreateColorSP("白", 5000, "WHITE");

	OnBG(100, "bg003_荒れ野_03.jpg");
	FadeBG(0, true);
	CreateTextureEXadd("炎", 110, @0, @0, "cg/ef/ef046_炎a.jpg");
	Fade("炎", 0, 1000, null, true);
	Zoom("炎", 0, 1100, 1100, null, true);

	DrawEffect("炎", 50, "MiddleWave", 30, 30, null);

	CreateSE("SEめらめら", "se背景_ガヤ_燃える町並み_L");
	MusicStart("SEめらめら", 3000, 1000, 0, 1000,null, true);

	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	CreateTextureEX("ワープ演出", 4500, @0, @0, "cg/bg/bg003_荒れ野_03.jpg");
	Zoom("ワープ演出", 0, 1500, 1500, null, true);
	DrawEffect("ワープ演出", 50, "SuperWave", 0, 500, null);
	Fade("ワープ演出", 0, 500, null, true);

	Delete("上背景");

	FadeDelete("白",1500,true);

	Fade("ワープ演出", 1000, 0, null, true);
	Delete("ワープ演出");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140010a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140020a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　已然丧失了一切表达心情的语言。

　燃烧。
　四周，开始熊熊燃烧。

　这是……在野火中央。
　上无顶棚，脚踏沙土。至少不像是在屋内。
成为火种的是草叶和树木。

　——不。还有其他。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140030a01">
《这是……什么。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140040a01">
《是哪里的地狱啊？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140050a00">
「……迪特的首都吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　那个“神曲”所讴歌的火焰地狱。

  在这里说出那个名字，或许即便对毫无洒脱心的人
来说——即指我，也是易事。

　只要诚实地给予视觉情报及评价，便可。

　燃烧的是人。
　数不清的人、人、人。

　人种和性别都不得而知。众人早已烧焦炭化。
但是保留了原形，可以确认是人类。
　那个残骸，曾经有着生命的形态。

　我孤零零地伫立在火焰和死尸中。
　被装甲包裹住的我，凭着感到内疚的顽强，
忍受着火焰的威猛。

　……这幅光景是什么呢。

　仅仅是火灾，以及不幸的牺牲者吗？
　看起来确实如此。但若是心怀疑惑，思绪便无止尽。

　为何在此处，有如此多烧死的人呢。
　明明可以逃开。

　或者是，无法逃走吗。
　——为何？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140060a01">
《这些人是……虾夷……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140070a00">
「……你知道吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140080a01">
《嗯……算是。
　大概，大家，是我的同族……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140090a01">
《……但是，有些不同……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　有些不同？
　和虾夷……？

　是西洋的虾夷种族——白虾夷吗？
　
　这么想着，便望向脚下，植物似乎不像是大和的。
较接近欧洲。

　白虾夷。欧洲。大量死亡。
　……似乎有什么关联……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140100a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　思维无法即刻停止。
　视野那端，火焰摇曳的彼端——<k>仅一瞬间，
看见了人影。

　即是说，<RUBY text="····">还站立着</RUBY>。
　……还活着！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆動こうと

	OnSE("se人体_動作_一歩", 1000);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140110a01">
《等等，主君！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140120a00">
「什么?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　在这紧迫关头，还有什么——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140130a01">
《不要忘了状况！
　这里不是我们的世界啊！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140140a00">
「————」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0140150a01">
《要是和这世界深入牵扯，
就无法回到原来的时空。
　这样也行吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……对，没错。

　直到修正力运作之前，一定要避免周围的干涉。
　虽然很难在火中安静等待，但只要有剑胄的守护便
有可能。

　不可肆意行动。
　何况，要拯救这个世界的人更是不可能。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140160a00">
「……唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我停下脚步，向人影方向眺望。
　火焰再次大力摇曳，那人的姿态暴露在我眼前。

　小小的身体。仿若透明的雪白肌肤。长长的耳朵——
　似乎判断对了。至少那唯一的生存者具备了白虾夷的
特征。

　<RUBY text="·">她</RUBY>似乎没注意到我。
　她一脸茫然，视线穿过将自身包裹的火焰旋涡。

　——她。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0140170a00">
「那是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　发觉那是女性的同时，我脑中灵光一现。
　我认识她。曾经，和她有一面之缘。

　在横浜基地。
　沃尔夫教授和茶茶丸介绍给我的——锻造雷弹。

　空洞般的少女。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆少女
	StC(1000, @0, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStC(500, true);

	Wait(500);

	SoundPlay("@mbgm02", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　为何在此处？

　……不、不对。
　现在应该扪心自问的，并非如此没有紧迫性的谜团。

　可以不去帮她吗。
　真的可以见死不救吗。

　归根结底，我对她一无所知。
　是否真的是锻造雷弾的一部分，连这点也无从确认。

　“可以见死不救”，完全没有能这么想的根据。

　只有现在眼见为实的景象。
　白虾夷少女，被火焰吞噬即将死去。

　可以不去帮她吗。

　伸手帮助的话，我会无法回到原来的时空。
　在那个世界，会没有人能制止“神”——
最后，会失去多少东西呢。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SEめらめら", 2000, 0, null);

	CreateColorEX("絵色100", 15000, "BLACK");
	Fade("絵色100", 500, 1000, null, true);

	Delete("炎");
	Delete("煙動画");

	DeleteStC(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆この一行、赤文字で
　但想想看。

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　一个世界，和一条命。
　是谁决定的，前者更重要呢？

　此刻，在这里拯救濒临危机的生命有什么错。

　不，这才是真正宝贵的行为吧……？

　怎么办？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：少女を助ける／助けない

}

..//ジャンプ指定
//◆少女を助ける　"md05_014a.nss"
//◆助けない　"md05_014b.nss"



//★選択肢シーン
scene md05_014.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm02",0,1000,true);

	CreateColorSP("絵色100", 1500, "BLACK");

	OnBG(100,"bg003_荒れ野_03.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("帮助少女","不帮助");
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
//◆少女を助ける　"md05_014a.nss"
				$GameName = "md05_014a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆助けない　"md05_014b.nss"
				$GameName = "md05_014b.nss";
		}
	}
}