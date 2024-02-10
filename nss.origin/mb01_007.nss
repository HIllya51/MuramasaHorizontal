//<continuation number="550">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_007.nss_MAIN
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
	#ev140_円応寺の閻魔像_a=true;
	#ev140_円応寺の閻魔像_b=true;

	#bg060_円応寺境内_01=true;
	#ev140_円応寺の閻魔像_a=true;
	#ev140_円応寺の閻魔像_b=true;
	#bg023_弥源太の家_03b=true;
	#bg037_競技場ガレージa_01=true;
	#bg031_八幡宮境内_01=true;
	#ev139_統を殺害_a=true;
	#bg058_曇空c_01=true;


	//▼ルートフラグ、選択肢、次のGameName

	//◆小分岐
	//◆第三編で操を殺しているなら　"mb01_007a.nss"
	//◆香奈枝を殺しているなら　"mb01_007b.nss"
	//$GameName = "mb01_007a.nss";
	//$GameName = "mb01_007b.nss";


//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

//嶋：おそらく二人とも殺していないケースが想定されますので、"mb01_008.nss"

	if($操殺害 == true){
		$PreGameName = $GameName;
		$GameName = "mb01_007a.nss";
	}else if($香奈枝死亡 == true){
		if($銀星号香奈枝殺害==true){$PreGameName = $GameName;$GameName = "mb01_008.nss";}
		else{$PreGameName = $GameName;$GameName = "mb01_007b.nss";}
	}else{
		$PreGameName = $GameName;
		$GameName = "mb01_008.nss";
	}

}

scene mb01_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_006.nss"


//◆円往寺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg060_円応寺境内_01.jpg");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("絵効果雨", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070010a00">
「圆往寺……？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070020a02">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　少女走在前面领着我到了一间寺院，很难说这里特别
有名或是特别宏伟。
　虽然名列古都镰仓引以为豪的名刹之一。

　但别说参拜者了，连个僧侣都看不到。
　虽不至于是无人寺……可是所呈现出的凄凉景象却令
人无法否定。

　不知道是不是因为这附近各大名刹林立的缘故，近旁
就有镰仓五山第一建朝寺、第二圆觉寺、第四净智寺。
　可以看出这里平日人迹罕至。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070030a02">
「以前，父亲经常带我来。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070040a00">
「菩提寺吗？」


{	FwC("cg/fw/fw一条_通常a.png");}
//嶋：修正（一条）【090930】
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070050a02">
「不，不是的。
　和绫弥家完全没有关系。」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070060a02">
「不过父亲似乎每周都来参拜。
说不定每天都来。
　……一定是因为这间寺院供奉着不饶恕恶的
神仙。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070070a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我看了一眼旁边的石碑。
　——阎罗王。

　即阎王爷。
　构成十王信仰中心的裁断者是这间寺院的主佛。可以说
十分罕见。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070080a00">
「想必令尊一定很严格吧。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070090a02">
「是啊。
　无论对人……还是对己。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070100a00">
「真想拜见一次。
　看到你，就知道令尊是个值得尊敬的人。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070110a02">
「谢谢。
　……若是能早些年认识凑斗先生的话，说不
定就能介绍你们见面了。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070120a00">
「…………是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一条没有家人。
　我想起曾在什么时候对此事略有耳闻。

　为自己的失言感到羞愧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070130a02">
「我讨厌这间寺院。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070140a00">
「……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070150a02">
「因为来这里的时候，父亲总是露出一副复杂
的表情。
　好像在烦恼着什么……又像是悲伤、愤怒。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070160a02">
「从来没有一次是开心的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一条眺望着正殿，独白似的喃喃低语。
　突然间，我看到了幻觉。

　一个男人的背影。
　仰望着正殿深处的阎王像，纹丝不动——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070170a02">
「现在我明白了。
　父亲是为了下定决心与恶战斗，
才来这里的。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070180a02">
「所以才总是一副痛苦的表情。
　……所以我那时才觉得讨厌。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070190a02">
「现在也一样讨厌。
　和父亲一样……对我来说，这里也变成了下
定决心的地方。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @-30, @0,"cg/st/st一条_通常_制服b.png");
	Move("@StR*", 0, @30, @0, null, true);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　少女回过头来。
　看着我。

　是挑衅似的目光。
　……又是祈祷似的目光。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070200a02">
「凑斗先生。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070210a00">
「一条……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070220a02">
「……我知道那是骗人的。
　那是毫无道理的讹诈
……我知道。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070230a02">
「因为凑斗先生是……
　绝对值得信赖的人……！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070240a00">
「——」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070250a02">
「但是……对不起。
　不知道为什么，我无法置若罔闻……」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070260a02">
「必须亲自问个清楚。
　不亲自确认，我就无法安心。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070270a00">
「一条。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　那一瞬间。
　我的心情是怎样的呢。

　想阻止她。
　还是在期待着什么。

　不知道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070280a02">
「请回答我。
　告诉我那不是真的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070290a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070300a02">
「你……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆閻魔像。一瞬表示
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev140_円応寺の閻魔像_a.jpg");
	Wait(10);
	FadeDelete("絵ＥＶ", 50, true);

	SetFwC("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070310a02">
「杀过无罪之人的事情。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆閻魔像顔アップ
//◆瞬間ホワイトアウト
//◆ＳＥ、雷鳴。それに合わせて境内画面へ戻り
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev140_円応寺の閻魔像_b.jpg");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	WaitKey(300);
	Fade("絵色白", 100, 1000, null, true);

	WaitKey(1000);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se自然_雷_稲光02");
	CreateSE("SEL01","se自然_水_雨音01_L");
	MusicStart("SEL01",3000,500,0,1000,null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("絵ＥＶ");
	FadeDelete("絵色白", 600, true);


	Wait(1500);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070320a00">
「……为什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　这些事。
　你会知道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070330a02">
「是雪车町。
　那个痞子说的。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070340a02">
「他说凑斗先生你只是个杀人犯。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070350a02">
「还说你因为和银星号、六波罗战斗……
　杀了好几个无罪的人……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070360a00">
「——」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070370a02">
「是骗人的吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　直射而来的视线，纠缠着我。
　盯着我。

　她相信我。
　因为相信，所以才害怕。

　为决堤的恐怖而颤抖。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070380a02">
「请告诉我那是骗人的。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070390a00">
「——」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070400a02">
「快说。
　快说啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　不对、那不是真的——
　如果这样说，一条就会相信。

　无需详细的辩解。
　只要这样便足够了。

　只要一句话，一条就会相信我。
　只要——一句话。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆殺戮イメージ
//◆殺した人々
//あきゅん「演出：後でフラグ分岐入れます」
	SetVolume("SEL01", 500, 1, null);

	CreateColorSP("絵色血", 5000, "#CC0000");
	Delete("絵効果*");

//あきゅん「演出：第一章」
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	StL(1000, @-60, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStA(0,true);
	SetTone("絵演下", Monochrome);
	SetTone("@StL*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/anime/Left/blood_C_6.png");
	Delete("絵演板写");
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

//あきゅん「演出：第二章」
	Fade("絵色血", 0, 1000, null, true);
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/bg/bg023_弥源太の家_03b.jpg");
	StR(1100, @-30, @0,"cg/st/stふな_通常_私服.png");
	StCR(1000, @-150, @0,"cg/st/stふき_通常_私服.png");
	FadeStA(0,true);
	SetTone("絵演下", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/anime/Right/blood_B_7.png");
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

//あきゅん「演出：第三章。ここからフラグ。操で分岐」
	Fade("絵色血", 0, 1000, null, true);
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	StL(1100, @30, @0,"cg/st/st皇路_通常_私服.png");
	StCL(1000, @150, @0,"cg/st/st操_通常_私服.png");
	FadeStA(0,true);
	SetTone("絵演下", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

//あきゅん「演出：第４章。灰色の杖かヒロインのため演出無し」
//あきゅん「演出：第５章。時田光男かヒロインのため演出無し」

//あきゅん「演出：ヒロイン。香奈枝を殺してる場合」
	Fade("絵色血", 0, 1000, null, true);
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	StR(1100, @120, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStA(0,true);
	SetTone("絵演下", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

//あきゅん「演出：統でラスト」
	Fade("絵色血", 0, 1000, null, true);
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
	SetTone("絵演下", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/anime/Center/bloodA_5.png");
	DeleteStA(0,true);
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

	Fade("絵色血", 200, 1000, null, true);

//あきゅん「演出：元の画面に戻る」
	PrintGO("上背景", 30000);
	CreateColorSP("絵血", 5000, "#CC0000");
	OnBG(100,"bg060_円応寺境内_01.jpg");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("絵効果雨", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");

	WaitKey(500);

	SetVolume("SEL01", 2000, 500, null);

	FadeDelete("絵血", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　对一切罪恶视若无睹。
　只要说一句话就好。

　如果……
　说得出口的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070410a00">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070420a02">
「…………」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070430a02">
「为什么？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070440a02">
「为什么一句话都不说？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070450a00">
「……我……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070460a02">
「凑斗先生！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　说啊——说我不知道。
　说啊——说那是胡说八道。

　这样说就好。
　只要这样说，就不会失去这个少女的信赖。

　就能继续保持目前的关系。
　所以。

　说。

　说吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070470a00">
「是杀人犯。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070480a02">
「——」


{	SetVolume("SE*", 5000, 0, null);
	SoundPlay("@mbgm32",3000,1000,true);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070490a00">
「雪车町一藏说对了。
　我不分善人和恶人。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070500a00">
「我会把相关者全都杀光。
　只是个杀人犯而已。」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070510a02">
「骗人——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆雨空
/*
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	$AmeHure = true;
	CreateEffect("絵効果雨落下風", 5500, 256, 0, 512, 288, "Rain");
	SetAlias("絵効果雨落下風","絵効果雨落下風");
	Fade("絵効果雨落下風", 0, 0, null, true);
	SetAlias("絵効果雨落下風", "絵効果雨落下風");
	Request("絵効果雨落下風", Lock);

	Rotate("絵効果雨落下風", 0, @-60, @0, @0, null,true);
	Zoom("絵効果雨落下風", 0, 3000, 3500, null, true);

*/
	CreateTextureEX("絵背景", 5000, Center, Middle, "cg/bg/bg058_曇空c_01.jpg");
	Fade("絵効果雨落下風", 2000, 1000, null, false);
	Fade("絵背景", 2000, 1000, null, true);
	Delete("絵効果雨");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……被背叛的少女的叫喊声。
　比雷鸣声更凌厉，在天地间轰鸣。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070520a00">
「记得新田雄飞吗？
　在和野木山组纠缠之时，你所救的那名少
年。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070530a00">
「是我杀了他。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070540a00">
「还记得你和我第二次相遇的那个小村落吗？
　那里有个虾夷老人，他有两个孙女。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070550a00">
「她们都是我杀的。」

</PRE>
	if($操殺害 == true){
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
	}else if($香奈枝死亡 == true){
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
	}else{
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	}


}


..//ジャンプ指定
//◆小分岐
//◆第三編で操を殺しているなら　"mb01_007a.nss"
//◆香奈枝を殺しているなら　"mb01_007b.nss"


//★選択肢シーン
scene mb01_007.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("操殺害","香奈枝殺害");
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
//◆第三編で操を殺しているなら　"mb01_007a.nss"
				$GameName = "mb01_007a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆香奈枝を殺しているなら　"mb01_007b.nss"
				$GameName = "mb01_007b.nss";
		}
	}
}