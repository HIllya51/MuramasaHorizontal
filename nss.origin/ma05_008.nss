//<continuation number="940">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_008.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_009.nss";

}

scene ma05_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_007.nss"


//◆暗転
//◆復帰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 1500, "#000000");
	OnBG(100,"bg052_湊斗家道場_01.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStR(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【統】
<voice name="統" class="統" src="voice/ma05/0080010b46">
「……景明？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080020a00">
「……啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗転", 600, true);
	SoundPlay("@mbgm18",2000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　——好像站着发呆了很久。
　循着声音回头看，养母就站在门口，担心地看着我。


　感觉上我也没发呆多久……不，可能的确如此。

　突然间回到现实的感觉，让我有些不知所措。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080030a00">
「……十分抱歉。刚才是在
练习的。
　稍微，想了点事情……太过专注
了。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080040b46">
「……这样啊。
　嗯，但要适可而止啊。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080050a00">
「是。
　让您担心了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　鞠躬的时候，被汗浸湿了的刘海划过额头。
　……凉凉的。果然是过了很长时间的样子。


　闭上双眼，我轻轻地把手覆了上去。
　虽然毫无意义，但为了恢复平静，这样的仪式是必不
可少的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【統】
<voice name="統" class="統" src="voice/ma05/0080060b46">
「……不过。
　本家也说了让人为难的话啊。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080070a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　已经向她报告了在本家的经过。
　养母——并没有欢天喜地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【統】
<voice name="統" class="統" src="voice/ma05/0080080b46">
「打算将你的请求体面地踢回吗……
或是对我的讽刺吗。还是仅仅<RUBY text="·······">迫于当时的形势</RUBY>呢。
　无论哪种，都不是什么好想法。居然让你
一个人去面对山贼什么的。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080090a00">
「……本家大人表示，就算是要仰仗镇上人们
的协助也无妨。」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080100b46">
「对方也是知道你不会这么做的吧。
因为已经来往了很长时间了。
　知道了还这么说。那个死老头。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080110a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　找不到否定的依据，唯有闭口不言。
　的确，我并不打算把镇里的人牵连进来。山贼虽是
整个镇子共同的问题，但这次和本家缔结约定是以我
个人的名义。

　不应该让别人来分担我带来的这份危险。
　原来如此，那位老人家，大概看透了我心中所想吧。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080120a00">
「……但是，本家大人会遵守约定的。
　那位大人这点傲骨还是有的。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080130b46">
「……这点倒是可以相信。
　景明，你难道真的想要做吗？」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080140a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　终于开启的道路。
　可以拯救光的道路。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【統】
<voice name="統" class="統" src="voice/ma05/0080150b46">
「那群山贼可不是请他们走就会乖乖走的
哦……不是那么容易的事。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080160a00">
「原本是打算从商谈开始尝试的
……是。
　恐怕不会就这么简单。」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080170b46">
「可能会死。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080180a00">
「有这个可能。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080190b46">
「死是很痛苦的哦。
　不，没有试过所以我也不知道。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080200a00">
「那么，我会注意不让自己死掉的。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080210b46">
「不害怕吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080220a00">
「害怕。
　一个人闯入山贼团中……只是这么想着
就害怕了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我伸出了一只手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080230a00">
「就像这样。
　指尖都颤抖了。」

{	FwC("cg/fw/fw統_痛笑.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080240b46">
「……所以说啊。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080250a00">
「但是。
　为了救光。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　停止颤抖。
　五指握拢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080260a00">
「不得已。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080270b46">
「…………
　真是让人困扰的儿子啊。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080280a00">
「请原谅我。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080290b46">
「要是能养育出更加顽劣点的孩子就好了。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080300a00">
「我是竭尽全力向统大人学习的。」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080310b46">
「……只有这种不可爱的说话方式不输于人呢。
　真是的。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080320b46">
「我明白了。
　不过，我也会一起去。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080330a00">
「这样不行。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080340b46">
「即使不行我也要去。
　怎么能让儿子一个人去那样的地方！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080350a00">
「最近，母亲的过度保护已经演变成了
社会问题。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080360b46">
「如果母亲让儿子独自一人深入武装掠夺集
团，那才会被划为虐待这一社会问题的范畴
呢。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080370a00">
「应该算是儿子的不良行为吧。
　……不，这不是问题关键。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080380a00">
「本家大人下达的命令是靠自己解决问题。
  不能借助统大人的力量。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080390b46">
「但是，他说了可以借用镇上的
人吧。
　我也是镇上的人。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080400a00">
「……」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080410b46">
「呵呵，笨拙的儿子呀。
　要在嘴上胜过母亲还早十年——」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080420a00">
「本家大人，并没有说镇上的人。
　说的是镇上的<RUBY text="··">男人</RUBY>。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080430a00">
「请您放弃吧，统大人。」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080440b46">
「……都没过十秒啊……
　话说那个蠢老头！　那么讨厌我
吗！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080450a00">
「而且……统大人。
　不能留下光一个人。」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080460b46">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080470a00">
「我不在的时候，请您保护光。
　拜托您了。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080480b46">
「…………
　啊！」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080490b46">
「够了！」

//【統】
<voice name="統" class="統" src="voice/ma05/0080500b46">
「可恶！
　一点也不可爱!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆がば
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵暗転", 1500, "#000000");
	Fade("絵暗転", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　视界突然被关闭。
　……直到发现我的头被拥住，已经过了好几秒。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_痛笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【統】
<voice name="統" class="統" src="voice/ma05/0080510b46">
「真是不孝子。
　都不听听母亲说的话。」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080520a00">
「非常抱歉。」

{	FwC("cg/fw/fw統_痛笑.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080530b46">
「像你这样的孩子最讨厌了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080540a00">
「我很敬爱您。
　统大人。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080550b46">
「别说傻话了。
　要不这样， 逆子。只有一件事，按
我说的去做吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080560a00">
「是。」

{	FwC("cg/fw/fw統_優しい.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080570b46">
「平安归来。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080580a00">
「是。
　我会尽我最大的努力。」

{//◆ごち。
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080590b46">
「放聪明点。
　你以为我想听你说这种话吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080600a00">
「……我一定会回来的。
　统大人。」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080610b46">
「这才像话。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆画面復帰
	FadeDelete("絵暗転", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我从拥有难以抵抗的力量的养母手中解放出来，取代
拥抱的，是一声叹息。
　像是挥去什么东西似的，过了一会，养母再次直视我。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【統】
<voice name="統" class="統" src="voice/ma05/0080620b46">
「什么时候去？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080630a00">
「明天也行。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080640b46">
「公司呢？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080650a00">
「已经请假了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　反正直到将山贼掠夺走的商品补充完毕之前，工作也
进展不了。
　就算去上班，也无事可做。

　而且解决山贼问题也会给公司带来利益。
　将情况说明要求休假时，社长二话不说地就答应了，
还给我带薪的休假。

　……与其说这是满怀期待的表现，不如认为是预付
丧费的因素占了上风。
　那时的社长表情挣扎，期望与放弃的比例是一比九，
明显放弃更占优势。

　这也是无可奈何的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【統】
<voice name="統" class="統" src="voice/ma05/0080660b46">
「……有没有一两个对策？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080670a00">
「并没有。」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080680b46">
「没有吗儿子哟?!」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080690a00">
「先见了再想。」

{	FwC("cg/fw/fw統_痛笑.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080700b46">
「啊啊……
　果然超级不安……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080710a00">
「请您不用担心。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080720b46">
「别说胡话了。
　那么……我只有一个建议。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080730b46">
「这并不是作为一位母亲，而是作为武道的
前辈。
　……虽然说得这么夸张真让人
不好意思。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080740a00">
「是。
　洗耳恭听。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我端正了下坐姿，准备倾听。
　养母既然说了这样的开场白，就说明她的建议应该有
正座倾听的价值。

　她也是从自己的父亲那里学习吉野御流的。
　与女儿一样。光在希望修行吉野御流时，本家虽然很
不痛快，但最终也默认了，原因无他，只因为养母已经
开了先例。

　而且她的力量远远超越庸才的领域。
　养母一定不会特意暴露本领。但从平日里自然而然的
动作姿态来看，她的技术，绝对能与天才的光相匹敌。


　既然是她的建议，就一定不能怠慢。
　养母对洗耳恭听等待着的我开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_睨む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【統】
<voice name="統" class="統" src="voice/ma05/0080750b46">
「不能杀人哦。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080760a00">
「……」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080770b46">
「谁都不能。
　杀掉一个人都不行。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080780a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　的确，滥杀是作为武人最大的耻辱。
　即使她不这么说，我也会尽可能地避免。

　然而……在数量和残暴上都占据压倒性优势的山贼
团，以他们为对手，坚持不杀人能应付得了吗？
　我认为这也太难了。

　内心传来这种声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【統】
<voice name="統" class="統" src="voice/ma05/0080790b46">
「景明。
　你认为，杀死敌人，战斗就结束了吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080800a00">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080810b46">
「那是不对的。
　正相反。」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080820b46">
「如果杀死敌人，战斗<RUBY text="·······">会变得无法终结</RUBY>。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080830a00">
「……是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　很模糊……
　虽然我明白养母想说的话，但是……


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【統】
<voice name="統" class="統" src="voice/ma05/0080840b46">
「如果你死了的话，我会杀掉所有
害死你的人。
　一个都不放过，绝对。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080850a00">
「！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080860b46">
「…………如果你杀了某个人。
　也许那个人的亲属，也会发同样的
誓哦。」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080870b46">
「如果这样的话，那这个人也要杀吗？
　这样的话，也许下次，这个人的兄弟
之类的也会来复仇啊……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080880a00">
「…………」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080890b46">
「没完没了吧？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080900a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　正如养母所言。
　我对自己的肤浅感到羞愧。

　只要杀了一个人，就会衍生出难以拭去的怨恨。
　一旦变成那样，等待着我们的就是互相残杀的泥沼。


　即便是我一人发起的事情，也无法不牵连镇上的其
他人。
　山贼和小镇双方都会出现许多牺牲者。

　那正是，排除万难都要避开的最糟糕的结局……

　岂止是解决问题，简直就是本末倒置。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【統】
<voice name="統" class="統" src="voice/ma05/0080910b46">
「所以说答应我，景明……
　无论如何，都不要让任何人丧命。」

//【統】
<voice name="統" class="統" src="voice/ma05/0080920b46">
「也包括你自己。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080930a00">
「…………」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080940a00">
「是。
　统大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　我深深地鞠躬。
　宣告夜晚到来的冷风，从走廊吹了进来。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_009.nss"