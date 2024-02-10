//<continuation number="350">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_018.nss_MAIN
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
	#bg025_坑道山脈と森a_01=true;
	#bg025_坑道山脈と森a_02=true;
	#bg025_坑道山脈と森a_03=true;
	#bg020_山脈坑道_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_017.nss"

//◆お山遠望·昼
//◆お山遠望·夕

	PrintBG("上背景", 30000);
	OnBG(100,"bg025_坑道山脈と森a_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	Wait(500);

	OnBG(100,"bg025_坑道山脈と森a_02.jpg");
	FadeBG(1000,true);

	Wait(500);

//◆爆音。どーん。
	CreateSE("SE01","se戦闘_破壊_建物01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateColorEXadd("絵フラ", 5100, "#FFFFFF");

	CreateTextureSP("絵ＥＦ50", 5000, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	SetBlur("絵ＥＦ50", true, 4, 500, 100, false);

	Fade("絵フラ", 0, 400, null, true);
	Fade("絵フラ", 700, 0, null, false);

	FadeFR2("絵ＥＦ50",0,1000,400,0,0,20,Dxl1, true);

	Wait(1300);



//◆お山遠望·夜

	PrintGO("上背景", 1000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg025_坑道山脈と森a_03.jpg");
	FadeDelete("上背景", 1000, true);

	Wait(500);

//◆爆音。どーん。
//◆爆音。どーん。

	CreateColorEXadd("絵フラ", 5100, "#FFFFFF");

	CreateTextureSP("絵ＥＦ50", 5000, Center, Middle, "cg/bg/bg025_坑道山脈と森a_03.jpg");
	SetBlur("絵ＥＦ50", true, 4, 500, 100, false);

	CreateSE("SE02a","se戦闘_破壊_建物01");
	CreateSE("SE02b","se戦闘_破壊_建物01");
	MusicStart("SE02a",0,1000,0,1250,null,false);

	Fade("絵フラ", 0, 400, null, true);
	Fade("絵フラ", 700, 0, null, false);

	FadeFR2("絵ＥＦ50",0,1000,400,0,0,40,Dxl1, false);

	Wait(100);

	MusicStart("SE02b",0,1000,0,750,null,false);

	WaitAction("絵ＥＦ50", null);
	Wait(1300);



//◆お山遠望·朝

	PrintGO("上背景", 1000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg025_坑道山脈と森a_01.jpg");
	FadeDelete("上背景", 1000, true);

	Wait(500);

//◆爆音。どーん。

	CreateColorEXadd("絵フラ", 5100, "#FFFFFF");
	CreateTextureSP("絵ＥＦ50", 5000, Center, Middle, "cg/bg/bg025_坑道山脈と森a_01.jpg");
	SetBlur("絵ＥＦ50", true, 4, 500, 100, false);

	CreateSE("SE03","se戦闘_破壊_建物01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("絵フラ", 0, 400, null, true);
	Fade("絵フラ", 700, 0, null, false);

	FadeFR2("絵ＥＦ50",0,1000,400,0,0,20,Dxl1, true);

	Wait(3300);

//◆坑道前
	SetVolume("SE*", 300, 0, null);
	SetVolume("OnSE*", 300, 0, null);

	PrintGO("上背景", 1000);

	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　次日早晨。
　动员了村子里二十多个年轻人，假装填埋坑道
的工作——顺利地进行着。
　有几个细窄的分支道路实际上已经垮塌了。

　地方官他们应该已经发现了吧。
　不可能没有发现。

　不久之后，应该会作出反应……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服b.png");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");

	FadeStR(300,true);
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0180010a03">
「那么再见了，景明大人。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180020a00">
「好。
　受了您非常多的照顾，大鸟中尉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　和已经准备好回去的香奈枝主仆打了招呼。

　她们俩在这之后，要尽可能拖时间，绕远路
回到进驻军司令部。
　那是这个巡查官的最后支援。

　我的回话，让大鸟香奈枝噗嗤一笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0180030a03">
「您客气什么呢。
　受照顾的人是我。您救我于危难之中，
工作上也帮了我……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180040a00">
「那我也一样。
　如果没有中尉阁下的话，这个村子一定会
更加麻烦吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　没有打算用社交辞令，我说道。
　实际上，这一点毋庸质疑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0180050a04">
「大小姐，凑斗大人。
　忧伤的临别之语就到此为止吧。
在纱代看来，短时间内我们又会
再见的。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0180060a03">
「哎呀，婆婆也这么想吗？
　其实我也这么觉得。不知为什么总觉得
和景明大人的缘分不会到此为止呢。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180070a00">
「是。
　您能这么想是我的荣幸。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0180080a03">
「所以，景明大人。
　——还会，再见吧。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180090a00">
「……是的。
　有缘的话，还会再见的。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0180100a04">
「凑斗大人。祝您武运昌隆。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180110a00">
「非常感谢。
　侍从阁下也多保重。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二人の立ち絵消去
	CreateSE("SE01a","se人体_足音_歩く01_L");
	MusicStart("SE01a",0,800,0,800,null,true);
	DeleteStR(300,true);

	SetVolume("SE01a", 5000, 0, null);
	CreateSE("SE01b","se人体_足音_歩く01_L");
	MusicStart("SE01b",0,800,0,650,null,true);
	DeleteStL(300,true);

	SetVolume("SE01b", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
　……二人离去了。
  那飒爽的脚步，光看着就让人觉得爽快。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01*", 1000, 0, null);
	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180120b55">
「走了吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180130a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　与她们反向而来的身影，是弥源太老人。
　一边俯视着渐渐变小的主仆的身影，他轻声说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180140b55">
「那么，下面就看天命了。
　是新的巡查官先到，还是那地方官的耐性
先耗光……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180150a00">
「诚然。
　长坂官员的急性子会成为胜负的关键。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180160b55">
「那样的话情况不错啊。
　那家伙的耐性充其量也就只有兔子的尾巴
那么长。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180170a00">
「再加上大鸟中尉的上级的耐性宛如蛇那般
长，如果他坚持等待中尉归来的话，就可谓
是成功了一半了。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180180b55">
「可不能抱这么大的期待啊。
　但是不管怎样，今天一定会有一些
行动吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180190a00">
「是。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180200b05">
「爷爷——
　武士大人——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　突然，从远处传来了呼唤的声音。
　山内一侧的小道上，娇小的身影小跑着过来。
旁边还有一个比她更小一圈的小小身影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @-60, @0,"cg/st/stふき_通常_私服.png");
	StCR(1010, @60, @0,"cg/st/stふな_通常_私服.png");

	FadeStR(300,true);
	FadeStCR(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180210b55">
「怎么了？
　我说过不能太过于接近这里的。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180220b05">
「唔……对不起。
　但是你们二人，从昨天开始就一直守在这里
吧？　你们大概都没有吃早饭吧。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0180230b06">
「做好了！
　带来了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　年幼的少女，鲋得意地打开抱着的包袱。
　……那是，特意准备的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180240b05">
「武士大人……那个，给您添麻烦了吗？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180250a00">
「谢谢你。
　正好，我觉得肚子饿了。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180260b55">
「……是啊。
　饿着肚子也不能战斗啊。给我一份吧。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0180270b06">
「吃吧！」


{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180280b05">
「喂，鲋！
　……那，请慢用。不好意思只有饭团。
啊，这是茶。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0180290a00">
「如此无微不至。
　蕗会是个好新娘的。」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180300b05">
「……哎……」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180310b55">
「不要太夸她，御堂。
　不然她会得意忘形开口要你娶她回去了。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180320b05">
「爷、爷爷！」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0180330b55">
「呵呵呵……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　双颊变得通红的少女，让弥源太老人畅快地笑起来。
　……这份和乐融融的气氛，让人恍然间忘记了如今的
状况。

　继续低着通红的脸，年长的少女打开了包袱。
　
　……？

　里面的东西，有相当大的差别。
　一半是较小的、形状好看的饭团，但是另一半
形状却非常粗糙，而且极其豪迈。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0180340b05">
「……」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0180350b06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　之后我不由得感觉到，脸颊上有异常灼热的视线。
　那么……

　先尝哪一边呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}


//◆選択：綺麗な方／豪快な方

..//ジャンプ指定

//◆綺麗な方　"ma02_018a.nss"
//◆豪快な方　"ma02_018b.nss"

//★選択肢シーン
scene ma02_018.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm30",0,1000,true);
	PrintGO("背景０", 30000);
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("形状好看的饭团","造型豪迈的饭团");
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
//綺麗な方　"ma02_018a.nss"
				$GameName = "ma02_018a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//豪快な方　"ma02_018b.nss"
				$GameName = "ma02_018b.nss";
		}
	}
}