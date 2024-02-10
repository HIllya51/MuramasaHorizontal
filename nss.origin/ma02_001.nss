//<continuation number="410">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_001.nss_MAIN
{
	$TITLE_NOW = "　";

	//★個別マクロ超速対応
	Conquest("nss/ma02_001.nss","BoyaboyaAction",true);
	Conquest("nss/ma02_001.nss","BoyaboyaSet",true);

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
	#bg001_空a_01=true;
	#bg020_山脈坑道_01=true;
	#bg020_山脈_01=true;
	#ev501_村正鎮座=true;


	//▼ルートフラグ，選択肢，次のGameName
//嶋：初期化
	$Others_Flag = 0;
	$OthersFav_After = 0;

	#voice_on_長坂右京=true;
	#voice_on_湊斗景明=true;
	#voice_on_村正=true;

	#av_八八式指揮官騎=true;

	$PreGameName = $GameName;
	$GameName = "ma02_002vs.nss";

}

scene ma02_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma01_026.nss"

//◆空
//◆銃声×２
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg001_空a_01.jpg");

	FadeDelete("上背景", 3000, true);

	WaitKey(1000);

	CreateSE("SE01","se戦闘_ライフル撃つ遠音01");
	CreateSE("SE01a","se戦闘_ライフル撃つ遠音01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(300);
	MusicStart("SE01a",0,1000,0,700,null,false);

	WaitPlay("SE01a", null);

//◆坑道前。六波羅一般兵×２
//◆倒れ込む音と共に一般兵消去，一人ずつ

	PrintGO("上背景", 15000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	StCL(1000, @0, @0,"cg/st/st六波羅兵士_通常_制服.png");
	StCR(1000, @0, @0,"cg/st/st六波羅兵士_抜刀_制服.png");
	Request("@StMR*", Smoothing);
	Rotate("@StMR*", 0, @0, @180, @0, null,true);

	FadeStA(0,true);

	FadeDelete("上背景", 2000, true);

	CreateSE("SE02","se人体_衝撃_転倒03");
	CreateSE("SE02a","se人体_衝撃_転倒03");

	MusicStart("SE02",0,1000,0,800,null,false);
	DeleteStCL(300,true);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	DeleteStCR(300,true);


	WaitPlay("SE*", null);

	SetFwC("cg/fw/fw長坂_驚き.png");

	#voice_on_長坂右京=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010010b45">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝·ＧＨＱ軍装
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(300,true);

	CreatePlainSP("絵板写", 10000);
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服a2.png");
	FadeStR(0,true);
	OnSE("se戦闘_銃器_構える01",1000);
	FadeDelete("絵板写", 300, true);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010020a03">
「咳、咳。
　…………呼。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010030a03">
「果然还是没法喜欢上枪械啊。
　不仅烟气熏人，打击感也不好。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010040a04">
「唉呀，大小姐。
　明明是远程武器，哪来的什么打击感呢。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010050a03">
「有的哦——
　弹头击穿目标的瞬间，
被破坏的器官发出的旋律
仿佛就会从指尖涌向脊椎深处。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010060a04">
「那不就只是被满足的嗜虐性
在让身体颤抖而已吗？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010070a03">
「这么下定论的话，就是单纯的变态了呢。
　婆婆好过分。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010080a04">
「身为人类还要去杀人的家伙全都是变态的
异常者，大小姐。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010090b45">
「……慢着……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(160,true);

//◆長坂
	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStL(240,true);

	SetFwC("cg/fw/fw長坂_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010100b45">
「这——
　这是什么意思？」



</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服a2.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010110a03">
「就是这个意思啊。
　那个——」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StCR(1100, @120, @0,"cg/st/stさよ_通常_私服.png");
	Request("@StMR*", Smoothing);
	Rotate("@StMR*", 0, @0, @180, @0, null,true);
	Move("@StMR*", 300, @-30, @0, DxlAuto, false);
	FadeStCR(300,false);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030c]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010120a04">
「是六波罗地方官，长坂大尉阁下。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010130a03">
「长坂大尉。
　作为进驻军司令部派遣的巡察官，对大和军
官兵的不恰当行为进行纠正是我的职责。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010140b45">
「我的士兵对贵官有什么失礼的举动吗
……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010150a03">
「征发村民，超过限度的苦役，对退出工作的
人施以私刑。
　无论哪个都不是作为一个军士官的人应有的
做法呢？」


{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010160b45">
「这种事情无须贵官加以指责！　大和的内政
难道不是已经委任于六波罗吗！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010170a03">
「嗯。
　在ＧＨＱ的监督之下。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010180b45">
「如果是说采矿工程的申请的话，早就已经办妥！
　许可也拿到了……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010190a03">
「可是，那终究只是书面上的东西。
　对你们施政的实际情况进行调查，在发现有
不妥事实时，采取防止状况恶化的措施也属于
巡察官的职权范围内。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010200b45">
「开什么玩笑……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010210a03">
「这只是我个人的见解。
　……不过是不是因为给民政局送的礼不够呢？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010220b45">
「科布登中佐的肚子也好钱囊也好卧榻也好，
都已经用那家伙想要的东西塞得满满当当！
　难道那还不够？　简直瞎扯！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010230a03">
「你确定是这样吗？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010240b45">
「当然确定！　这项工程的一成预算都被那家
伙一个人吞掉了！
　贵官难道一点都没听说过吗!?　那家伙已经
答应过会把所有事情都安排好哦!?」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010250a03">
「……哎呀，糟了。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010260a03">
「纱代，听到刚才的话了吗？　我们，好像掌
握了行贿受贿案件的重大证据呢。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010270a04">
「实在是相当戏剧性的发展呢，大小姐。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010280b45">
「在耍我吗，你们这些混账!?」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010290a03">
「倒是没有那个意思呢。
　对吧？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010300a04">
「请恕我直言，大小姐。
　从客观角度评价，我们完全是在耍着大尉阁
下玩呢。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010310a03">
「哎呀，是这样吗？
　非常抱歉。我真是的，对这种事情不是很
了解呢。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010320b45">
「…………
　目的……是什么。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010330a03">
「目的？」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010340b45">
「贵官的目的！　说到底你是想要什么。钱吗，
或者说想要矿山的特权？
　是的话就直说，没必要那么拐弯抹角，我会
考虑的！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010350a03">
「…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010360a03">
「真让人头疼呢，纱代。
　人家没有领会我的意思呢。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0010370a04">
「实在让人头疼。
　这样如何呢。干脆在大尉阁下的脑袋上开一
个进风窟窿，帮他提高提高明白事理的能力怎
么样？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010380a03">
「这就是所谓的热心吗。
　那么，既然都这样说了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆チャキ。香奈枝，銃構え

	CreatePlainSP("絵板写", 5000);
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(0,true);
	OnSE("se戦闘_銃器_構える01",1000);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0010390a03">
「<RUBY text="ＰＬＥＡＳＥ　ＧＯ　ＴＯ　ＹＯＵＲ　ＧＲＡＶＥ">请进到你的墓穴中去</RUBY>。
　村民们好不容易挖出的坑道，
请有效地充分利用吧。」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0010400b45">
「——臭丫头!!!!!!!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆長坂，装甲。八八式竜騎兵指揮官仕様
	#av_八八式指揮官騎=true;

//◆突進

	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 1200, 0, null);
	Fade("絵フラ", 200, 1000, null, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_通常.png");
	FadeStC(0,true);

	CreateSE("SE01a","se特殊_鎧_装着04");
	MusicStart("SE01a",0,1000,0,750,null,false);

	Fade("絵フラ*", 1600, 0, null, true);


	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStC(300,true);

	CreateTextureSP("絵演立", 1000, Center, Middle, "cg/st/3d八八式指揮官_騎突_戦闘.png");
	SetBlur("絵演立", true, 3, 500, 50, false);
	Zoom("絵演立", 0, 700, 700, null, true);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("絵演立", 300, 5000, 5000, null, false);
	Fade("絵フラ", 250, 1000, null, true);

	PrintGO("上背景", 10000);
	CreateColorSP("絵黒地", 100, "#000000");
	FadeDelete("上背景", 3000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　地方官——虽然似乎正面临失去这个地位的境况——唤
出自己的剑胄，装甲完毕正要跃起的瞬间，老人才意
识到自己必须采取行动。
　同时，也意识到了已经赶不上的事实。

　阻止那个愚蠢的男人是自己的责任。
　男人的愚蠢，还有其原因，明白这些的如今只剩下
他一个。

　想亲手做一个了断。
　在无谓的流血再次发生之前。

　没有赶在那个男人的暴走波及这个小山村前阻止他，
令老人悔恨不已。

　——明明只让两个无用的男人死去就好。
　
　如此想道。

　可恨的是自己年老力衰。
　为挑战地方官进行的准备需要耗费的时间超出预料，
于是只得在旁坐视事态恶化。

　如今，这个刹那也是。

　这个推动村子被侵蚀——或者说是大闹一
场的——那个年轻女子估计会被杀掉吧。
虽然也不能不说是自作自受。
　但是，她似乎是来拯救村子的。

　而此刻在这里被杀害的话，恐怕会留下灾祸。
　尽管老人不了解世间动态，但也知道祖国在战争中
落败，正处于被占领的现状。

　如果隶属进驻军的人在这个村子里惨死的话……

　尽管那个女子不管怎么看都应该是大和人，可是那军
服无疑昭示着她隶属进驻军司令部的身份。
　没有人能够保证进驻军不会为她的死向当地居民问责。

　必须马上阻止那个男人。
　非阻止不可，他责无旁贷。
　
　然而。

　——终究无法做到。

　回首往事，一生载满悔恨。
　如今已是日薄西山的年龄，可还要在悔恨上面
再添一笔吗。

　龙骑兵发起疾冲。
　撕裂天空，犁破地面。

　尽管只是数打，仅是等同于伪造品的剑胄，可其带来
的速度与力量终究是人类无法比拟的。
　休谈与之抗衡，就连看清那动作都难以实现。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_centerin(@0, @0,1000);
	SL_centerinfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　——快去阻止。
　
　老人祈愿着。

　阻止那一闪。
　唯独那仅凭此身绝对无法企及的一闪，就
没有人——去阻止吗。

　阻止之后，再让我去亲手做个了结。

　虚妄的祈愿。
　根本没有应验的可能。

　……不，
　过去曾有过。

　曾有过响应无力民众的呼喊，以绝大力量挥舞刀刃
之人。
　曾经——能够相信那是存在的。即便与现实有所差异，
但世间存在着足以让人相信的事实。

　如今，再也没有。
　人们已经失去信仰。
　呼喊那名字时，蕴含的不再是希望，而是咒诅。

　老人的愿望无法传到任何人身边。
　即使能够传到，也没有任何人会聆听。

　没有——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆割り込み剣撃。ガシーン
	CreateSE("SE02","se戦闘_攻撃_刀振る02");
	MusicStart("SE02",0,1000,0,800,null,false);

	SL_rightdown(@0, @0,1500);
	SL_rightdownfade2(10);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　任何人——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
//◆八八式を吹っ飛ばす
	PrintGO("上背景", 10000);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	StL(1000, @30, @10,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	FadeStL(0,true);

	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Delete("上背景");
	FadeDelete("絵フラ", 2000, false);

	Shake("@StL*", 800, 1, 2, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @-60, @0, Dxl1, true);

	WaitAction("絵フラ", null);

	PrintGO("上背景", 15000);

	CreateColorSP("絵黒", 5000, "#000000");
	DrawDelete("上背景", 200, 1000, "slide_01_03_1", true);

	CreateCamera("Ｃ", -100, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景10", 0, Center, Middle, "cg/bg/bg020_山脈_01.jpg");
	Zoom("Ｃ/絵背景10", 0, 1500, 1500, null, true);

	CreateTextureSP("Ｃ/絵演立絵村正", 250, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	SetVertex("Ｃ/絵演立絵村正", center, bottom);
	Zoom("Ｃ/絵演立絵村正", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	MoveCamera("Ｃ", 3000, @-70, @50, @100, AxlDxl, false);

	SoundPlay("@mbgm04",0,1000,true);

	DrawDelete("絵黒", 2000, 1000, "slide_01_03_1", false);

	Wait(1800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　鲜红的色彩跃动着。
　……血色的深红。

　仿佛在诅咒苍天一般。

　厚重的甲铁。
　凶锐的刀刃。
　充满力量的气息。仅是看到就不禁心生骚动。

　武的具现化。
　犹如天降神兵，又像黄泉恶鬼。

　那是，什么。
　那是何物。

　那是
　不该存在
　但也绝无错认的可能。

　然而此刻，就在那里的事物。

　那是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0010410b06">
「爷爷……
　那个，是什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　对于身旁孙女的疑问，老人已有答案。
　那究竟为何物，他已知晓。

　他的脑髓，不，
　他的血液知道。
　锻冶种族的血将那赤红孤影的意义告知于他。

　那是。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正，適当に演出
	CreatePlainSP("絵板写", 10000);

	CreateTextureEXadd("絵演効果", 3010, Center, Middle, "cg/ev/ev501_村正鎮座.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev501_村正鎮座.jpg");
	BoyaboyaAction();

	FadeDelete("絵板写", 2000, true);

	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵色白", 2000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　——真性之剑胄。
　还有，真正的武者。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 2000);



}

..//ジャンプ指定
//次ファイル　"ma02_002vs.nss"

.//プロセス用======================================================

..//鎮座のゆらめき
function BoyaboyaAction()
{
	CreateProcess("プロセスボヤ", 5000, 0, 0, "BoyaboyaSet");
	Request("プロセスボヤ", Start);
	Request("プロセスボヤ", Disused);
}

function BoyaboyaSet()
{
	begin:
	while(1)
	DrawTransition("@絵演効果", 0, 0, 300, 100, null, "cg/data/circle_07_00_0.png", true);
	{
	DrawEffect("@絵演効果", 3000, "LowWave", 0, 20, null);
	Fade("@絵演効果", 800, 500, null, true);

	Wait(200);

	Fade("@絵演効果", 2000, 0, null, true);
	}
}