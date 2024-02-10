//<continuation number="1500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005.nss_MAIN
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
	if($Ichizyou_Dead == true){
		#ev119_一条と香奈枝海水浴_b = true;
	}else if($Kanae_Dead == true){
		#ev119_一条と香奈枝海水浴_c = true;
	}else{
		#ev119_一条と香奈枝海水浴_a = true;
	}

//	$Ichizyou_Dead=true;
//	$Kanae_Dead=true;
//	#復讐編終了 = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		if($ma04_005_routeFlag==true){$ma04_005_routeFlag=false;}
		else{$Kanae_Flag++;SetHex();}

	}else if($Kanae_Dead == true){
		//■未読既読判定３
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定３
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		if($ma04_005_routeFlag==true){$ma04_005_routeFlag=false;}
		else{$Ichizyou_Flag++;SetHex();}

	}else{
		//■未読既読判定４
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定４
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		if(#復讐編終了 == true){call_scene @->ma04_005_select02.nss;}
		else{call_scene @->ma04_005_select01.nss;}

	}

	$PreGameName = $GameName;

	if($Ichizyou_Dead == true){

		$GameName = "ma04_006.nss";

	}else if($Kanae_Dead == true){

		$GameName = "ma04_006.nss";

	}else{

		if($ma04_005_Ichizyou == true){
			$GameName = "ma04_005a.nss";
			$ma04_005_Ichizyou = false;
		}else if($ma04_005_Kanae == true){
			$GameName = "ma04_005b.nss";
			$ma04_005_Kanae = false;
		}else if($ma04_005_Sayo == true){
			$GameName = "ma04_005c.nss";
			$ma04_005_Sayo = false;
		}


	}


}

scene ma04_005.nss
{

..//ジャンプ指定
//前ファイル　"ma04_004.nss"

}


scene ma04_005.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆分岐。一条、香奈枝共に生存なら０５Ａ、香奈枝死亡なら０５Ｂ、一条死亡なら０５Ｃ


//――――――――――――――――――――――――――――――
.//●０５Ａ
//●０５Ａ
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050010a00">
「夏天……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050020a03">
「不错……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050030a04">
「热情的季节今年也如期而至了呢。」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050040a02">
「不是这样吧?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明一行。海水浴風景
//◆ばーさんはアロハシャツとか。
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, Axl2, true);
	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);
	Move("絵ＥＶ100", 2500, @0, -110, Dxl1, false);

	FadeDelete("絵フラ", 2000, true);

	SetFwR("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050050a02">
「为什么我们在若无其事地泡海水浴啊!?」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050060a03">
「就算你这么问。」

{	FwR("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050070a04">
「因为到此一看，
大家都很平常地在讴歌盛夏啊。」

{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050080a02">
「就算如此，为什么连我们也加入进来!?」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050090a00">
「这是为了收集情报而入乡随俗而已。
　不能在这里表现得过于异常。」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050100a04">
「这话委实含蓄。
　真想让常年穿着一身黑，
无时无刻不在散发阴森
气息的某人也来听听这番话。」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050110a00">
「是。正是如此。」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050120a03">
「这人到底有没有自觉症状……」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050130a02">
「就、就算如此！
　也不用穿上泳衣吧。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050140a00">
「附近店里的服装类商品只有泳衣。这也
是情非得已。
　在这海岸穿着便装走动实在太鲁莽了。」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050150a03">
「会汗流浃背。」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050160a04">
「出现脱水症状大概需要九十分钟左右
的时间。」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050170a02">
「呜呜……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　叫苦不迭的一条。
　想说的话太多，反倒不知要如何开口。
她现在的神情就是如此。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050180a00">
「有意见吗。」

{	FwR("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050190a02">
「不……不。
　我没有意见。」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050200a02">
「只是……那个……」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050210a03">
「请放心。
　你穿上去很合适哦？」

{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050220a02">
「我、我、我才没担心这个！
　没担心——!!」

{	FwR("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050230a04">
「嘴上虽这么说，从刚才开始绫弥小姐的目光
就在自己和凑斗大人之间飘来飘去。
　果然眼神比嘴巴更能泄露人的真心。」

{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050240a02">
「老太婆，我看你是想被水葬……」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050250a04">
「我还真不希望自己最后的下场是成为鱼贝类
的饵料呢……
　凑斗大人，先不说这个。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050260a00">
「是。有什么事。」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050270a04">
「——您是不是忘记了自己的义务？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　永仓侍从意味深长地盯着我的面颊。
　…………原来如此。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050280a02">
「……」

{	FwR("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050290a03">
「好兴奋，好紧张。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


..//選択：一条を見る／香奈枝を見る／ばあや殿を見る
//◆選択：一条を見る／香奈枝を見る／ばあや殿を見る
//◆※ばあや選択肢は第二編でばあやフラグ立てている場合のみ出現


//◆一条を見る　"ma04_005a.nss"
//◆香奈枝を見る　"ma04_005b.nss"
//◆ばあや殿を見る　"ma04_005c.nss"

}


scene ma04_005.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――
.//●０５Ｂ
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050300a00">
「夏天……」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050310a02">
「不对啊?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明一行。海水浴風景
//◆景明と一条のみ。
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, Axl2, true);
	CreateTextureEX("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev119_一条と香奈枝海水浴_b.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);
	FadeDelete("絵フラ", 2000, true);

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050320a02">
「为什么突然泡起海水浴了啊?!」


{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050330a00">
「入乡随俗是收集情报的基础。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　到这里一看，原来是海水浴场，这也是情非得已。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050340a02">
「我不是说这个！
　…………」

{	FwL("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050350a02">
「不……这也是其中一点。
　…………为什么要穿泳装……」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050360a00">
「你打算在这酷暑之中，穿着便服走动？」

{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050370a02">
「……」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050380a00">
「实在太过鲁莽。」

{	FwL("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050390a02">
「呜呜……话虽如此……」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050400a00">
「你讨厌泳装？」

{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050410a02">
「与其说讨厌……」

{	FwL("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050420a02">
「那个。」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050430a00">
「就我个人而言。
　你现在的样子很美。」

{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050440a02">
「……咦？」

{	FwL("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050450a00">
「实在很有魅力。」

{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050460a02">
「……」

{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050470a02">
「……什、什……」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050480a00">
「……」

{	FwL("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050490a02">
「……请不要拿我寻开心。」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050500a00">
「是真心话。」

{	FwL("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050510a02">
「～～唔！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆一条好感度＋
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma04_005_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0129]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050520a02">
「总……总之！
　回到原来的话题。」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050530a00">
「嗯。」

{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050540a02">
「目的地不是江之岛吗？
　快、快点去吧！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……不错。
　此处并非江之岛。

　而是江之岛的对岸，片濑。
　留在这里也无济于事。一条想要早日渡海前往
岛上的心情我也能够理解。

　然而。
　即便如此还要留下，其中另有原因。

　我从中挑选了最为明显的迹象细细道来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050550a00">
「过不去。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050560a02">
「……咦？
「为什么？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050570a00">
「来之前我已经调查过。
　现在，江之岛全域已被定为封锁区域。」


//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050580a00">
「当然，下令的正是幕府。
　理由不明。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050590a02">
「……是因为在进行兵器研究之类的活动？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050600a00">
「有这个可能性。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050610a02">
「那怎么办？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050620a00">
「既然不能公然渡海，就只能私下过去。
就是这么简单。
　寻找渡海方法，这就是留在这里的第
二个理由。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050630a00">
「第三是收集情报。
　原本，目的地近在眼前，我也不喜欢采用四处
打探这种迂回的方式。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050640a00">
「不过这次情况特殊。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050650a02">
「……不错。
　前往江之岛之前，至少得先把<RUBY text="····">当前局势</RUBY>
了解个大概……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050660a00">
「对。
　不想贸然前去。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050670a02">
「因为是夏天……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050680a00">
「夏天……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　正值夏季。
　农历的十一月份。新年即将来临。

　本不该会是夏天。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050690a00">
「气象异常也该有个限度。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050700a02">
「而且只有江之岛周边……
　为什么如此明显的怪异事件却没有新闻
报道？　我不记得有在报纸上看到过……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050710a00">
「但是，如果与六波罗有所关联。
　……向新闻机关发布缄口令也是易如反掌
吧。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050720a02">
「也就是说，确实蹊跷。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050730a00">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　虽然在八幡宫所听到情报的时候——还有之后边向
一条进行说明边反复推敲情报的时候，对于六波罗在
进行危险研究一事，自己一直半信半疑，甚至可以
更倾向于持怀疑态度。

　然而，现在却恰恰相反。
　恐怕——幕府正在岛上进行着什么活动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050740a00">
「那么，行动开始。
　分头收集情报。重点在于潜入岛内的方法，
以及这股异常的热气流。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050750a00">
「有没有什么疑问或建议。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050760a02">
「没有！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　说着，一条已经开始了行动。
　环视四周，她盯上的不是客人众多，熙攘喧闹
的海之家，而是旁边在小船边上围坐一团，表情
阴沉的渔民。迅速且正确的行动。

　她正要迈开脚步。
　突然，一条回过头来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050770a02">
「说起来……凑斗先生。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050780a00">
「什么。」

{	SetVolume("@mbgm*", 300, 1, null);
	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050790a02">
「那个上尉跟老太太怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

	SetVolume("@mbgm*", 2000, 1000, null);
	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050800a02">
「啊……对不起。还是算了。
　肯定是还有其它事情吧……她好歹也是个
军人。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050810a02">
「那，我出发了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050820a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　——我什么都无法回答。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);



//◆０６へ

..//ジャンプ指定
//次ファイル　"ma04_006.nss"

}


scene ma04_005.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");


//――――――――――――――――――――――――――――――
.//●０５Ｃ
//◆０５Ｃ
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050830a00">
「夏天……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050840a03">
「是啊……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050850a04">
「热情的夏天今年也如期而至了呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明一行。海水浴風景
//◆一条不在。
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, Axl2, true);
	CreateTextureEX("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev119_一条と香奈枝海水浴_c.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);
	FadeDelete("絵フラ", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　在岸边游玩的男女。
　在沙滩奔跑的孩子。

　夏天的——
　海水浴场的景象。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050860a03">
「真开放……」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050870a00">
「是啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　看向香奈枝小姐。
　……倒不如说，视线不知该投向哪里。

　这么想着，结果却像是在凝视着她一般。
　看上去就是如此。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050880a03">
「他在看我。他在看我呢。
　……啊啊～」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050890a04">
「作战成功了呢！
　感觉眼下我家大小姐在非常变态的同时却又努力
装作事不关己呢。」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050900a00">
「不可否认，我的视线被吸引了。
　……你选的泳衣还真是大胆。」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050910a03">
「这是自备品。」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050920a04">
「我就知道会这样。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050930a00">
「说起比基尼……
　是法国刚开发出来的产品吧。」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050940a04">
「凑斗大人真是博识。
　虽然事实上我很想追问您何以会熟知
这种事情。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050950a00">
「是在海外购入的吗。」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050960a03">
「是。
　我想应该还没有在大和出售。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　应该是吧。
　如若不然，周围的人们——尤其是男性——的视线
也不会如此集中。

　……不。
　也没什么大的变化吧。

　布料轻薄的前卫泳装造型，把大鸟大尉出众的身材
完美地突显了出来。
　已经到了夸张的地步。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050970a03">
「呵呵。怎么样，景明大人？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050980a00">
「真是引人入胜。
　非常地……」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050990a03">
「能帮我擦防晒油吗？」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051000a00">
「愿意效劳。」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051010a04">
「您很乐意这么做吧，凑斗大人。」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051020a00">
「是。」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051030a04">
「毫不犹豫，无比直接的视线……
　虽然我强烈地觉得这股劲头好像用错了
地方。」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051040a03">
「不，这才是景明大人。
　来来，请——」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051050a00">
「那就恕我冒犯了。」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0051060a01">
《…………》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　——不知是来自何处。
　感觉到无声的谴责。

　我稍稍恢复了一些冷静。
　虽然出发点是灵活应对收集情报，到底还
是灵活过头了吧。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051070a00">
「还是算了。」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051080a03">
「咦？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051090a00">
「我感觉会忘记自己的目的。」

{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051100a03">
「嘁。真可惜。」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051110a04">
「算了，这也是无可厚非吧。
　再这样继续下去景明大人就会想要勃起，
这也只会让我们困扰而已。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051120a00">
「这一点也会令我非常困扰。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　实在是失态。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆香奈枝好感度＋
//$Kanae_Flag = $Kanae_Flag++;
	$ma04_005_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　改变思考方向。
　状况整理。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051130a00">
「我们的目的地是江之岛。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051140a03">
「不错。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051150a04">
「虽然我也很想赶紧渡海。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　……不错。
　此处并非江之岛。

　而是江之岛的对岸，片濑。
　留在这里也无济于事。想要早日渡海前往
岛上的心情我也能够理解。

　然而。
　即便如此还要留下，其中另有原因。

　我从中挑选了最为明显的迹象细细道来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051160a00">
「无法渡海，这一点是个问题。
　既然幕府禁止渡海上岛。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051170a03">
「简直就相当于此地无银三百两。
说实话，我感到有些意外。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051180a04">
「因为之前还对六波罗的兵器研究深感怀疑……
　不过既然情况如此，就万万不能大意。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051190a04">
「那么，凑斗大人。
　您有何打算？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051200a00">
「因为禁止渡海。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051210a03">
「是。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051220a00">
「那就在未经许可的情况下渡海便是。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051230a04">
「所言极是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　寻找渡海方法，是留在片濑的第二个理由。

　第三个是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051240a00">
「不过，眼下我们还是先去收集情报吧。
　可能的话，还是想在多少了解了岛上的情况之
后再付诸行动。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051250a03">
「的确……
　因为是夏天呢？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051260a00">
「因为是夏天。」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051270a04">
「因为是夏天嘛。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　正值夏季。
　农历的十一月份。新年即将来临。

　本不该是夏天。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051280a00">
「气象异常也该有个限度。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051290a04">
「而且只有江之岛周边……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051300a03">
「这样的大事件，居然未能登上新闻……
如此看来，果然是六波罗发布了缄口令吧。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051310a04">
「真是让事情更加扑朔迷离了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　的确。
　虽然在八幡宫所听到情报时，对于六波罗在进行
危险研究一事，自己一直半信半疑，甚至可以说更
倾向于持怀疑态度。

　现在却恰恰相反。
　恐怕——幕府正在岛上进行着什么活动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051320a00">
「那么，行动开始。
　分头收集情报。重点在于潜入岛内的方法，
以及这股异常的热气流。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051330a00">
「有没有什么疑问或建议。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051340a03">
「……我可以提一点吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051350a00">
「是。大尉。」

{	SetVolume("@mbgm*", 300, 1, null);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051360a03">
「一条小姐怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(2000);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051370a03">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051380a00">
「……我也，」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051390a00">
「不知道。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051400a03">
「……你的表情看上去有点痛苦呢？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051410a00">
「是吗。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051420a03">
「是不是……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051430a00">
「……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051440a03">
「发生了什么？
　我说，婆婆。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051450a04">
「嗯……
　这是思春期少女的心事。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051460a04">
「大概她还有其它事情吧。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051470a03">
「……也对……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051480a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051490a03">
「……那我走了。
　景明大人，回头见。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051500a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

//◆０６へ

..//ジャンプ指定
//次ファイル　"ma04_006.nss"


}


scene ma04_005_select01.nss
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm29",0,1000,true);

	PrintGO("背景０", 30000);

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);
	Fade("絵ＥＶ100", 0, 1000, null, true);

	FadeDelete("背景０", 1000, true);

//■選択肢
	SetChoice02("一条を見る","香奈枝を見る");
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
			$ma04_005_Ichizyou = true;
		}
		case @選択肢２
		{
			ChoiceB03();
			$ma04_005_Kanae = true;
		}
	}
}


//==========================================================//
//★選択肢シーン
scene ma04_005_select02.nss
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm29",0,1000,true);

	PrintGO("背景０", 30000);

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);
	Fade("絵ＥＶ100", 0, 1000, null, true);

	FadeDelete("背景０", 1000, true);

//■選択肢
	SetChoice03("看一条","看香奈枝","看婆婆");
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
			$ma04_005_Ichizyou = true;
		}
		case @選択肢２
		{
			ChoiceB03();
			$ma04_005_Kanae = true;
		}
		case @選択肢３
		{
			ChoiceC03();
			$ma04_005_Sayo = true;
		}

	}
}


