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

scene mb02_007.nss_MAIN
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
	#bg033_普陀楽城宿舎_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_008.nss";

}

scene mb02_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_006.nss"

//◆翌日
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_普陀楽城宿舎_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　先行将一条送出，我暂且留在宿舍。

　今天的计划是分头在城内巡视。
　借联络城内各部门的名义。

　联络的紧急性与机密性虽不高，却需要口头传达。这
是政所公职人员日常负责的事务之一。
　也就是说，即便四处走动，也不会引人起疑。

　岩田女士已经向我们保证过了，就算被巡逻兵盘问，
只要拿出恰当的文件再加以说明就没事了。
　对于想亲自收集情报的我们来说，再没有比这更好
的条件了。

　情报——没错，情报。而且我们要的不是已经转变成
文字的情报，而是最真实的情报。
　无论是制定行动计划还是付诸实施，不亲自熟知一些
城内的情况，一切都无从谈起。

　说起来，我和一条的任务就是要使游佐童心大吃一惊，
但看起来想让那位高僧惊呼「哇哦」，似乎比乘独木舟
横渡大洋还难。
　无法轻举妄动。

　但，太花时间终究还是下策。
　过了一个晚上一条依旧丝毫未变，浑身上下缠绕着危险
的气息。

　看起来倒也像是因城内工作的紧张感而忐忑，这
至少算是一种补救。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070010b20">
「那位小姐假扮成武官潜入进来或许
要好一些。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070020a00">
「也许吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　来这里的途中与她擦肩而过了吗。
　听到岩田女士顾忌着身后叹了口气，
我向她点头回应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070030b20">
「为了不过分惹人起疑，由我先打理一下吧……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070040a00">
「拜托了。
　我也稍微思考一下吧。……城内有贩卖
生活杂物之类的店铺吗？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070050b20">
「倒是有出入南外城城墙的商贩。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　南外城城墙。徒步去虽说有点远，但也不是什么难事。
可以根据情况顺路去看看。
　我点点头，转移了话题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070060a00">
「昨天见到冈部的千金了。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070070b20">
「……是吗。
　那位小姐啊。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070080a00">
「那位小姐说寄住在京极家，但说实在话，
她现在究竟处于怎样的立场？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070090b20">
「说实话，是种麻烦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　是因为我起初就约定了要说实在话的缘故吗。
　这位中年密探直言不讳。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070100b20">
「留下她也起不了什么作用。
　但若放任自流，则有可能变成集合反幕势力
的头目……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070110a00">
「原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　唯一足以成为足利护氏宿敌之人——冈部赖纲的女儿。
　作为心中暗藏对六波罗不满之人的象征性统帅者，
或许是个绝佳的人才。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070120a00">
「小姐周围有类似的迹象吗？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070130b20">
「在篠川似乎已经出现了。
　因此将她转移到守备更为坚固的普陀乐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　所以被送过来了吗。
　的确，就算有人想要得到樱子小姐，也不至于对这座城
下手吧——<k>不。现在下定论尚显轻率。

　毕竟，这里就有一个反六波罗的男人成功入侵了。
　不能断言就没有其他人。

　……如此一来，那位小姐的末路就很明显了。

　不在这一刻。若现在动手会刺激人心。等个一年
或是两年，待冈部这个名字渐渐被人们淡忘时。
　大概就会——暗中……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070140b20">
「……你打算利用她吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070150a00">
「还未有此打算。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070160b20">
「对<RUBY text="··">我们</RUBY>来说，也是颗略有些危险的棋子。
如果到了决定利用那位小姐之时，
事先与我商量，
想必可避免滋生无用的分歧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070170a00">
「……我明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　听起来像是忠告，其实是恫吓。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_008.nss"