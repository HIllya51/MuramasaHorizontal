//<continuation number="1100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_016.nss_MAIN
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
	#bg016_公園c_01=true;
	#bg112_川沿いの道a_01=true;
	#bg112_川沿いの道b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_017.nss";

}

scene md06_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_015.nss"


//◆難民キャンプ

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg016_公園c_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	DrawDelete("黒", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160010e228">
「把桥……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160020a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",0,800,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　面对再度造访的我，方才的男子一脸
“又来了”的表情。
　但多少放低了一些警戒心，其他的人
之后也陆续现身。

　听闻我的话后，众人皆露出不知所措的神情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	SetNwC("cg/fw/nw大柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160030e227">
「重建桥梁吗……？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160040a00">
「正是。
　木材和道具的话我这边有熟人，
其他的可以去筹措。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160050a00">
「资金方面无需担心。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160060e228">
「就算你这么说……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160070e227">
「为什么我们一定要做这种事？
　破坏那座桥的又不是我们！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160080a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　虽说大半只是凭直觉，但我同意他们的观点。
　恐怕毁坏这座桥的另有其人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160090a00">
「并不是作为赎罪而再建。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160100e227">
「那是为了什么？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160110a00">
「为了诚意。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160120e228">
「……诚意？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160130a00">
「是的。
　不要成为这座城镇的累赘，而是
作为住民表达一下贡献的热情。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160140e228">
「…………」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160150e227">
「那又是为什么！
　我们被战火驱逐，好不容易
才来到了这里啊!?」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160160e227">
「我们又没做错什么。
　为什么非要承受
这样的苦累不可……！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160170a00">
「……我明白你们的心情。
　只是，因为你们的到来，
让这里的原住民生活环境变得恶劣，
这也是事实。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160180e227">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160190a00">
「你们并没有责任。
　住民方也同样如此。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160200a00">
「只要双方都还固执己见，
认定自己没有错，问题就无法解决。
　必须要有人做出让步。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160210a00">
「于是——」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160220e228">
「要先做出让步的是我们吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160230a00">
「……是的。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160240e227">
「……啧……为什么……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160250e228">
「别郁闷。
　这也是无奈之举，毕竟我们是后来者。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160260e228">
「为了被住民接受而做出必要的努力，
这是天经地义的。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160270e227">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160280e228">
「再这样被住民仇视下去……
我们迟早会被驱逐。
　那样的话，
我们只能在荒郊野外做孤魂野鬼了。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160290e228">
「但是，如果能和住民们和解的话——」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160300a00">
「其实这件事也极大影响了行政机构和
警方的判断。
　一旦被接纳，也会成为左右保护方针
的因素。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　镰仓署长身为一介公务员，必然不会是一个慈善家。
　但是，在商定应对难民的对策时，如果有『和住民
关系良好』这一事实存在的话，就决不会被轻视。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw大柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160310e227">
「……如果重建，住民方就会
认同我们吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160320a00">
「无法保证。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160330e227">
「不能保证……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160340a00">
「十分抱歉。
　但我能保证的是，此事一定会对
被认同产生影响。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160350e227">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160360e228">
「造桥的只有我们吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160370a00">
「是的。
　我也会出力……但不应该请求
外援相助吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160380a00">
「拜托专业人士的话需要花费相当数量的金钱，
而且经由他人之手重建不就没有意义了吗。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160390e228">
「确实如此。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160400e227">
「喂……你打算去做吗？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160410e228">
「……是啊。
　反正闲来无事。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160420e228">
「你不也是，一周一次的短工不是和
没事差不多。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160430e227">
「…………」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160440e228">
「即便做了可能会徒劳……但不做的话
也只是无聊地虚度时光。
　既然如此，那就尝试一下可能会成功的方法
也不错。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160450e227">
「……」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160460e227">
「大概吧……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160470a00">
「接受提议吗？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160480e228">
「嗯，我加入。
　我试着去鼓动其他的年轻同伴。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160490e228">
「只是，估计组织不来那么多人……
　别抱太大希望。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160500a00">
「已经足够了。
　那就拜托了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆川沿い

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg112_川沿いの道a_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw村正_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160510a01">
「干得不错嘛。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160520a00">
「暂且如此吧。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160530a01">
「但是在这样的小河上
造桥很困难吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160540a00">
「我也这么觉得。
　若能有木匠经验的人就好了，只是……」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160550a01">
「我也能来帮忙吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160560a00">
「……不。
　那倒不必。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160570a01">
「果然。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　村正不是木匠，但可以行驶剑胄的特殊能力。
　必定能对桥的重建工作有所助益。
　
　不过，要如何向施工同伴解释这一切。

　一介警官本不该拿着剑胄。
　如果硬要搪塞过去唯恐招致怀疑，好不容易谈好的事
或许会因此化为泡影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160580a00">
「有别的事要拜托你。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160590a01">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆川沿い

	CreateColorEX("黒幕１", 25000, "#000000");
	Fade("黒幕１", 1000, 1000, null, true);

	DeleteStR(0,true);

	Fade("黒幕１", 1000, 0, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　物资准时得到了供应。
　次日就立刻动工。

　招集到的人数总共有六个。
　其实理应需要更多人手，但无法
奢求太多。

　首先开始现场勘查。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160600a00">
「果然……很深。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160610e228">
「河中间一带深及腰部呢。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160620a00">
「说不定还有更深的地方。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　下河勘察不过才几分钟，就领悟到此地
为何不能让孩子来嬉戏。
　太危险了。

　不仅深不见底，而且水流湍急。
　没有了重要的桥，也没有临时应付的浮桥
替代，也是可以理解的了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160630e228">
「我也知道不容易，只是……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160640a00">
「这里有造桥经验的人吗？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160650e227">
「……没……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160660e228">
「……显然没有吧。
　已经确认过了，那你呢？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160670a00">
「没有经验。
　与建筑相关的经验倒是有一些……
但造桥的话就没有了。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160680e227">
「突然间前途多难了呢……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160690e228">
「……哎呀，河也不算宽。
　就算是门外汉也没什么问题吧。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160700a00">
「是的。
　不过可能会花很长时间。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160710e227">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160720e228">
「姑且先放手一试。行吗？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160730e227">
「……知道啦。
　一个劲地抱怨也不是办法。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("黒幕２", 25000, "#000000");
	DrawTransition("黒幕２", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);




	DrawTransition("黒幕２", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕２");

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160740e109">
「……？
　喂警察，你泡在河里干嘛呢？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0160750e110">
「又烂醉了吗？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160760a00">
「不。
　为了重建桥梁，需要先进行勘察。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0160770e110">
「重建桥梁？
　你吗？」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0160780e110">
「和这些家伙？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160790e227">
「…………」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160800e109">
「哈。这样也好。
　警察你很有一套嘛。」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160810e109">
「让破坏桥的家伙认罪，而且
还作出了补偿。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160820e227">
「什么!?」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160830e228">
「别这样……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160840a00">
「不是的。
　他们和破坏桥梁并没有关联。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160850a00">
「而且他们不是因为我的命令才在
这里建工。
　只是出于善意想要重建桥梁而已。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160860e109">
「善意啊……
　那是怎样？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160870e227">
「…………」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160880e109">
「也罢。
　你们破坏的东西由你们自己重建，
我也没必要加以妨碍。」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160890e109">
「那就尽量努力吧。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160900e227">
「……啧……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160910e228">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　两人相伴离去。
　但正因他们的举动，引来了周边住民
聚集而来的视线。

　目光冷淡，没有一丝温暖。
　的确——恶劣的印象不可能这么轻易改观。

　暂且先不去在意他们。
　之后还要拐弯抹角地安抚大家。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0160920e307">
「…………」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0160930e307">
「……哼……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆川沿い
//◆とんてんかん
	Fade("黒幕１", 1000, 1000, null, true);

	Wait(1000);

	CreateSE("橋", "se背景_ガヤ_橋建設中01_L");
	MusicStart("橋", 0, 1000, 0, 1000, null,true);

	OnBG(100, "bg112_川沿いの道b_01.jpg");
	FadeBG(0, true);

	Fade("黒幕１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　数日一晃而过，但施工并没有多大进展。
　说句实话，的确是进程缓慢。

　这也无可奈何，毕竟都是一群外行。
　话虽如此，但桥梁的底部还是渐成雏型了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("橋", 1000, 0, null);


	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160940e228">
「果然还是需要桥桁吗？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160950e227">
「也不能就在基座上铺几块板子
就算完工了吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160960a00">
「嗯。安全性的确有问题。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160970e228">
「那要在正中间建造<RUBY text="···">支撑物</RUBY>吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160980a00">
「这个……那么……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　从河身宽度看来，感觉并不需要。
　但是，有桥桁的话稳固性会变好。

　材料尚有剩余。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160990a00">
「反正一样要造，尝试一下也好。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0161000e227">
「是啊。
　这样也没什么坏处。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0161010e228">
「桥台造好后就马上开始吧。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0161020a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆とんかん
	CreateSE("橋", "se背景_ガヤ_橋建設中01_L");
	MusicStart("橋", 0, 1000, 0, 1000, null,true);

	WaitKey(800);

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161030e307">
「…………」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161040e307">
「啊……喂……」

{	SetVolume("橋", 1000, 0, null);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0161050a00">
「？　哈，怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　循着类似轻微的呼唤声而回头张望，
果然有个老人站在那里。
　一身异于难民的服装，叼着根烟管眺望这里。

　烟管并没有烟气冒出，看起来似乎是中空的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161060e307">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0161070a00">
「……老人家？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161080e307">
「……没……」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161090e307">
「没什么。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0161100a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_017.nss"