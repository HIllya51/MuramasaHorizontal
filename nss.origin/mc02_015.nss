//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_015.nss_MAIN
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

	$GameName = "mc02_016.nss";

}

scene mc02_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_014.nss"


//◆フェードイン
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	StL(1100,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(0,false);
	SoundPlay("@mbgm35",0,1000,true);
	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150010a00">
「那……是这么一回事吗。
　因为情势大转变而感到焦急的宫殿下与署长
收买了因丑闻而被贬到横须贺的进驻军将校，
并企图破坏军港——」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150020a00">
「而后行动失败。
　东窗事发后，导致ＧＨＱ对朝建寺的制裁……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150030a03">
「是。就是这么回事。
　……您无法相信吗？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150040a00">
「…………
　信。虽然很遗憾。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150050a00">
「我似乎不得不相信。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150060a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　事情全都合乎逻辑了。
　为什么进驻军与亲王阵营会突然对立
——无法理解的部分已全消除了。

　即便想怀疑也没有怀疑的理由。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150070a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　——何至如此。

　心中涌现的感慨，并不是在责备亲王们的短见。
　让那些本应深思熟虑的人做出如此暴行的世故变化，
才令人感叹。

　不过……这样一来。
　
　建朝寺袭击事件——说白了——就是亲王他们
自作自受吗。

　也就是说——<k>
　
　
　————那件事也是。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：明堯の死
	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 2000, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　养父他……
　是以自己的命了断自己的策谋吗。

　这就是，养父死的意义吗……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150080a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我如此试想着，并没有无可接受之处。
　道理层面上——完全可以理解。

　但。
　撇开道理不谈…………我无论如何……

　难以压抑这份
　涌上心头的<k>
　
　　　　　　　　　　　　　　　　　　…………情感。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：バロウズ

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, InBottom, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	CreateTextureSP("絵回想200", 2100, Center, InBottom, "cg/st/3dバロウズ_立ち_通常.png");


	EfRecoIn2(300);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　那位骑士。

　那造型独特的剑胄，激起了我的某些回忆。
　以前，曾在学校里看过的西洋史资料集。

　书中印着一张照片。
　永世中立国的珍宝——“弓圣”威廉·退尔。

　为中世纪欧洲史染上绚烂色彩的伟大英雄所喜爱的铠甲，
在英雄死后，以英雄之名秘藏，是名铠中的名铠。
　传说，由左腕的石弓放出的箭是每击必杀的
魔弹。据说曾准确射下放在儿子头上的苹果。

　那位骑士的剑胄简直就和这珍宝一样。
　
　不——不一样。

　是不同的。

　当然，这基于对一国至宝不可能那么容易就被
带出国的判断。
　然而就算没有上述判断，我的眼睛也不认为
那个剑胄是真品。

　那是赝品。
　是仿造品。

　造型上，完美地成功复制。装甲的强度一定
也能媲美真品。
　但是丝毫不存在于“弓圣”上的东西，却
渗透出了这副剑胄的表面。

　这是锻造师的虚荣心。
　强烈，而又扭曲的自负心。

　锻造师边借用知名英雄的剑胄骗取名声，
边固执认定比起英雄使用的剑胄，自己打造的
作品实际上更优秀……
　我看得到那卑微而扭曲的人格。

　看见那剑胄的人绝对不会
发出无尽的感叹。
　他们只会皱起眉头，不愉快地发出
呻吟而已吧。

　这种剑胄————杀死了养父。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150090a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　如同香奈枝小姐所说。
　事情已经结束了。
……在政治上，已完全结束了。

　但是。
　在我心中却——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("くろ");
	Delete("絵回想*");

	EfRecoOut2(600,true);

	StL(1000,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150100a03">
「……话说回来。
　景明大人？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150110a00">
「是。
　怎么了，大尉阁下。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150120a03">
「那天，我拨给您电话之后，
您过了许久才现身……
　是发生了什么事吗？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150130a00">
「……是的。
　以结果来说，我辜负了大尉对我的
忠告。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120a]
　先不论她是不是真的想给我忠告，
暂且遵从自己的情感回答了她。
　实际上，她的忠告原本是可以发挥作用的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演回想", 4100, Center, Middle, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Fade("絵演回想", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120b]
　要是没出现<RUBY text="···">妨碍者</RUBY>的话。
　要是我能迅速解决的话。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演回想", 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150140a00">
「……大尉阁下。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150150a03">
「什么事？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150160a00">
「…………像恶魔般巨大的武士……
您有没有什么头绪呢。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150170a03">
「恶魔般？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150180a00">
「是的。
　我想不出其他更好的形容词了。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150190a03">
「……我不知道……
　当然进驻军的骑士们都持有
形形色色的剑胄。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150200a03">
「像恶魔吗……
　似乎并不符合直属于正规军的
骑士们的兴趣。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150210a00">
「……的确。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　假设军中有想要用那种武器的怪人，
周遭的人应该不会感到开心吧。
　军队这种机关，是有组织性的，
不允许有扰乱纲纪的行为。

　如此说来……不是ＧＨＱ？
　
　不，时机未免也太巧了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150220a00">
「……」


{	StCL(1200,@ 80,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStCL(300,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150230a04">
「您是在哪见到的兴趣这么低级的
士兵呢？　凑斗大人。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150240a00">
「嗯。
　那时，我正在前往建朝寺的途中。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150250a04">
「…………喔？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150260a03">
「…………？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150270a00">
「他趁我不备偷袭了我。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我咀嚼着苦涩，混合着唾液吐出实情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150280a00">
「要是早些把那武士打退……
　养父或许就能得救。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150290a03">
「————」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150300a03">
「咦？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150310a03">
「……父亲？」


{	SoundPlay("@mbgm32",0,1000,true);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150320a00">
「是的。
　您听说过署长在建朝寺遭杀害
的事情吗。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150330a03">
「嗯、啊……是。
　不，姑且知道这件事……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150340a04">
「……是镰仓署长菊池明尧大人。
　已经确认过那位大人的遗体了。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150350a00">
「……这样啊。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150360a00">
「他是我的养父。
　我受过他许多恩惠。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150370a03">
「——————」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150380a04">
「可是……你们不同姓啊？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150390a00">
「因为某些原因，养父从凑斗家除籍。
　在那之后，他就改用入赘前的旧姓……
菊池。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150400a04">
「……这样啊。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150410a00">
「如果我听从大尉的忠告，立刻赶往
现场的话……说不定就能保护他。
　从那骑士射出的箭中……救出养父……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150420a00">
「……那个骑士……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainEX("絵板写", 19900);

	CreateColorEX("絵色黒", 10000, "#000000");
	CreateTextureEX("絵演立絵", 11000, -925, -1476, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	Fade("絵色黒", 1600, 1000, null, true);

	Move("絵演立絵", 6000, @0, @576, null, false);
	Fade("絵演立絵", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　那个弓骑士。
　
　他——无疑是进驻军的骑士。

　我应该从香奈枝小姐的口中问出那家伙的身份才对！
　她一定知道！<k>
　
{Fade("絵板写", 300, 1000, null, false);}
　……这想法如同闪电般掠过我脑海，瞬间消失。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
　知道了又能如何。
　找出他，袭击他，向他复仇吗。

　如果我这样做的话——大鸟大尉的立场会如何。

　如果自己带来的俘虏脱逃，而且还利用自己所提供的
情报，斩杀了骑士——真打剑胄的所有者，无疑就是传
统的贵族阶级。
　……没人会替大和出身的异端分子辩解吧。

　不仅仅是添点麻烦的问题。
　所以我做不到。

　——无能为力。
　养父的仇，我报不了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150430a00">
「……呜!!
　那个……骑士……!!」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150440a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆時間経過

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"mc02_016.nss"