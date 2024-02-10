//<continuation number="360">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_026.nss_MAIN
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
	#bg031_八幡宮境内_01=true;
	#bg005_山中_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_027.nss";

}

scene md01_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_025.nss"

//◆八幡宮
//◆ざっざっ。行列
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260010a00">
（来了）

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260020a01">
（嗯……）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260030a00">
（大将领骑马进来吗。
　神官想要制止……但他不会听）

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260040a01">
（这真是不敬的参拜。
　另外……那马）

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260050a00">
（是剑胄吧？）

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260060a01">
（没错）

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260070a00">
（而且级别很高……）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260080a01">
（镰仓初期……
　不，大概能追溯到平安期）

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260090a00">
（挑战时最好做好觉悟）

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260100a01">
（作为对手无可挑剔）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260110a00">
（……好。走吧）

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260120a01">
（嗯）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆源氏山のどこか？　bg005？
//◆署長
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg005_山中_01.jpg");
	StL(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260130a11">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260140a11">
（应该准备倍率再大些的双筒望远镜。
　算了……大致的样子能看到）

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260150a11">
「……」

//【署長】
<voice name="署長" class="署長" src="voice/md01/0260160a11">
（上宫的仪式似乎结束了。
　终于开始了吗……）

//【署長】
<voice name="署長" class="署長" src="voice/md01/0260170a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ちゃっ。わずかな草擦り音
	CreateSE("SE01","se自然_草木_探る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260180a11">
「！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆周囲確認
	DeleteStA(300,true);

	SetFwC("cg/fw/fw署長_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260190a11">
「…………」

//【署長】
<voice name="署長" class="署長" src="voice/md01/0260200a11">
（是错觉……吗？）

//【署長】
<voice name="署長" class="署長" src="voice/md01/0260210a11">
（刚才好像有人……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆八幡宮
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0260220a05">
「汝乃今年之随行？」

{//◆神官偽装中。顔グラ無し、名札
	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260230a00">
「是。」

{//◆神官偽装中。顔グラ無し、名札
	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260240a01">
「…………」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260250a00">
「恕臣直言。
　这之后按照惯例只能大将领殿下一人前来——」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0260260a00">
「陪同诸位请于此等候。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0260270a05">
「余知道。
　每年如此。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0260280a05">
「为余带路。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260290a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆裏参道
//◆※黒画面、あるいは低明度のef001などで代用。
//◆かつ、かつ、かつ。足音ゆっくりめ。反響
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 5000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	CreateSE("SEL01","se人体_足音_歩く_地下_L");
	MusicStart("SEL01",1000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　隐藏的参道描绘着螺旋形状下降。

　路幅并不算宽，高度也一样。
　大将领和他的马，还有伪装成神官的我和村正。能动
的东西只有这些，但这狭隘的空间中，回响的脚步声还
是很大。

　如果有几十人在这里跑动，那会让耳朵相当不舒服。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260300a01">
「…………」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260310a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我感到村正假装无意间投来的视线射在我脸上。
　她大概在等待吧。

　等我作出决断。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆護氏。出して消す？
	StL(5100, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStL(300,true);
	Wait(500);
	DeleteStA(300,true);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260320a00">
（很强）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我第一次用肉眼看到六波罗总帅的感想，只有这一句
话。

　这个男人很强。
　无论是肉体，还是精神。<RUBY text="·····">各种意义上</RUBY>。

　宽大的后背表明了他厚重的强大。

　善性……
　或者称为义性的东西，完全看不出。

　那种强大十分傲岸。
　恐怕只是单纯的<RUBY text="··">欲望</RUBY>在支撑吧。

　那是支配欲的化身。

　但是，也不能因此说他没有成为大和统治者的资格。
　清正廉明遵从道义的人位居高位才能治理国家——我
不是会做这种白日梦的人。

　只有理想但力量不足的王，反而会搅乱国家。
　在古今东西的历史中，这种前例数不胜数。

　足利护氏充满了力量。
　以他的后背背负大和全土全国民的命运，应该也不算
沉重吧。

　无论他是怎样充满欲望的暴君——
　只要在他双臂怀抱中的大和，
<RUBY text="····">从结果上</RUBY>如果能被守护。

　那么他作为统治者，到底是否正确呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260330a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　在六波罗体制下，国民的负担比起以前产生了巨大的
增加，这的确是事实。
　对于反对派的压制，也变得露骨地严格，与以前无法
相比。

　可是。
　如果因此说六波罗的统治是恶政——这样也过于片面
了。

　评价必须要考虑形势。

　六年前，六波罗作出了极端的背叛，出卖了国家，拉
开了大战的帷幕。并且得到了大和的政权。
　但如果六波罗没有背叛，而是和联盟军进行本土决
战呢？　国土会化作一片焦土吧？

　六波罗幕府执行了教科书般的军国主义，完全轻视了
每一个国民的权利。
　但是如果没有这种军国主义体制呢？　大陆形势的混
乱难道有可能不波及大和吗？

　从世界范围看，这六年很难说是和谐的时代，但六波
罗却还算是稳定——至少没有和其他国家交战——平安
度过了这段时间。
　如果以过去的体制，不知能否做到这一点。

　百年后的历史学家，也许会将六波罗的统治评价为
「最合适的手段」。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260340a00">
（……虽然我可不想读到那种教科书……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　看到了六波罗幕府残暴一面的现代大和人，大部分都
会和我抱有同样的感想吧。
　但是如果以后世的观点来看，也就是完全客观地来说，
一定会得出这种评价。

　现在，抹杀足利护氏。
　给六波罗体制画上终止符——<k>对于大和来说，没人能
肯定这不会带向通往毁灭的道路。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260350a00">
（…………）

//【景明】
<voice name="景明" class="景明" src="voice/md01/0260360a00">
（……怎么办？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　斩杀吗。
　不斩吗。

　足利护氏，是该消除的灾厄之种吗。
　是和银星号并列的存在吗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

}

..//ジャンプ指定
//次ファイル　"md01_027.nss"