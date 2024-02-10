//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_005.nss_MAIN
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
	#bg062_普陀楽城大手道_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_006.nss";

}

scene mb02_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb02_004.nss"


//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg062_普陀楽城大手道_02.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　结果还是向路过的人问了路。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城·屋敷地？
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm30",0,1000,true);

	StL(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050010b28">
「十分感谢。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050020a00">
「不，我们没帮上忙。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　京极宅邸门前。
　小姐低头致谢，我们也回了礼。

　未表谦逊的态度，让我自己都觉得丢人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050030b28">
「那个……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050040a00">
「是。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050050b28">
「……今后，如果碰到我。
　请不要客气，尽管出声叫我。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　她的语气中带有少许踌躇之意。

　冈部樱子是反叛幕府、被打上叛贼烙印后衰落的武家
遗族。
　对于为六波罗效力的官吏来说，接近她并没有什么好
处可图。

　对必须扮演唯命是从的小官吏的我们来说也一样。
　……但，我却点了点头。和身旁的一条一起。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050060a00">
「不胜惶恐。
　承蒙厚意，我们欣然接受。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050070b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　虽然她什么都没说。
　但当这个孤立无援的女子离去时，略施脂粉的唇边
似乎绽出一丝笑意。

{	DeleteStL(300,false);}
　她向绝非温暖的住处走去。
　
　就在这时。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

	StL(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050080a02">
「……那个。」


{	FadeStL(300,false);
	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050090b28">
「怎么了？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050100a02">
「你……是怎么想的？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050110b28">
「……？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050120a02">
「现在的处境……
　以及六波罗……」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050130a02">
「还有被冠上反贼之名逝去的父亲……」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050140a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　糟了。
　没能阻止这一突发状况。

　此举太过无礼——但若单是被认为无礼，是六波罗的
官吏向败者的嘲弄的话，倒还算好。
　但。

　一条不会掩饰感情。
　任谁都能一目了然。这位少女并非以胜者自居说出这
番话的。反而是站在冈部千金一方，口出此问。

　绝不是幕府官吏应做之事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050150b28">
「你们……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　被问及的樱子，当然不会看不出其中意味。她的眼中
充满了迷惑之色。
　我也没能说出补救的话。没办法。就硬着头皮静观事
态发展吧。

　一条——应该也明白自己说了不该说的话，一直垂着
视线。
　现如今，已经不明白樱子对于这副模样会作何理解，
又会得出什么结论。

　当她再次开启唇瓣时，话语之中毫无感情色彩。
　但绝非空虚。而是蕴含着坚毅的意味。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32",2000,1000,true);

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050160b28">
「我是败者。
　除此之外，我无话可说。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050170a02">
「……」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050180b28">
「既然战败了就该沉默，臣服于胜者，此乃武家
铁则……
　所有雄辩须在战前为之。败后狡辩应被唾弃为
无耻。」

//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050190b28">
「我不会说。什么都不会说。
为不辱冈部之名。
　无论是对于六波罗……还是父亲。」

//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050200b28">
「不管父亲……
　因何想法而挑起战端……！」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050210a00">
「…………」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050220a02">
「……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050230a02">
「……对不起……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_006.nss"