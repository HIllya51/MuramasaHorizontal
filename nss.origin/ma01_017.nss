//<continuation number="1370">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_017.nss_MAIN
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
	#bg007_若宮大路a_01=true;
	#bg017_竹林_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_018.nss";

}

scene ma01_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_016.nss"



	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	OnSE("se日常_学校_チャイム01",1000);
	WaitKey(2000);

	SoundPlay("@mbgm22",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//◆チャイムの音
//◆大通り

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　放学后。
　我们一边沿路前行，一边向铃川说明之前的
经过。

　是铃川主动询问起我们的。他似乎并非只想
充当监护人，而是想给予我们帮助。
　对于这种态度，没有人不欣然欢迎。

　……昨夜不知是谁，好像还说过再也不要借
助他人力量这种固执己见的话。
　不知道。忘记了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);

	StL(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");

	StR(1010, @-60, @0,"cg/st/st忠保_通常_制服.png");
	StCR(1000, @60,@0,"cg/st/st小夏_通常_制服.png");


	FadeStL(300,false);
	WaitKey(200);
	FadeStR(300,false);
	FadeStCR(300,true);


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170010b57">
「奴隶买卖啊。
　虽然是不可轻信的传闻，
却不能一笑置之吧……
考虑到当下的世情。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170020b43">
「实在是想一笑置之呢。
　但万一真是那样，说实话是有点麻烦啊。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170030b57">
「被运到海外去……没错。是个麻烦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　听过忠保回避要点的发言，铃川深深颔首。

　岂止是麻烦。
　两人大概都心知肚明，只是特意这么说着而已吧。

　内脏深处感到了一阵恶寒。
　想着该不会……

　该不会，在我们还在磨磨蹭蹭的时候，已经晚了一步吧。
　……那是让人情不自禁地想发出呻吟、恐怖至极的想法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170040b57">
「但是……
　说不定，意外地那也并不是那么悲观的情况？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170050b56">
「诶？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170060b57">
「即使幕府真的在做这种无法无天的勾当
……当然，这罪不可恕。
　但比起其他事故或者犯罪的可能性，这种情况
或许更能期待饰马的平安无事。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170070b43">
「唔嗯，那也……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170080b56">
「嗯……大概。可是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
　的确，奴隶的话就不会被杀了吧。
　可是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170090b33">
「你在说什么啊老师!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　面对我和忠保一言不发暧昧不明的反应，
小夏回头大喊起来。
　她逼近铃川，出言顶撞。

　真难得。
　不如说，这光景头一次见到。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170100b33">
「什么叫平安无事，那样才不是平安无事！
　被像物件一样被对待，被买卖……
那样，不就跟死了一样吗？」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170110b33">
「不是比死了还惨吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
  直到不久之前还在对该为铃川的同行感到高兴，
还是该为律的安危忧心举棋不定，一脸复杂表情
沉默不语的样子仿佛是假的一样。
  小夏不停地说着。

　那表情纯粹地，在生着气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170120b33">
「律比任何人都讨厌那种事。
　她虽然总是任意妄为、惹是生非……
却爱装出一副大人的样子，爱管闲事。」

//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170130b33">
「和她在一起很开心……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170140b33">
「所以……」

{	FwC("cg/fw/fw小夏_怯え.png");}
//◆涙ぐむ
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170150b33">
「……呜——」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170160b56">
「冷静点，小夏。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　小夏泣不成声。我从身后用双手轻轻抓住她那
即使如此也没有平复迹象的柔弱肩膀。
　这种时候的她，没有谁来安慰一下是不行的。
而那大概，是我的任务。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170170b57">
「……是吗。
　来栖野是这样想的啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　意外的，铃川十分冷静。
　仿佛重新认识一般的视线投注在垂头抽着
鼻子的小夏身上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170180b57">
「身为人类却像物件一样被对待，
比死还残酷吗……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

	SetBacklog("「老师的想法错了吗。", "voice/ma01/0170190b43", 忠保);
	SetBacklog("　果然还是活着最重要、生命最强、",null,null);
	SetBacklog("性命ＩＳ　ＭＯＲＥ　ＨＥＡＶＹ∨∨地球吗？」",null,null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170190b43">
「老师的想法错了吗。
　果然还是活着最重要、生命最强、
性命ＩＳ　ＭＯＲＥ　ＨＥＡＶＹ <RUBY text="ＴＨＡＮ">∨∨</RUBY>地球吗？」

</PRE>
	SetTextEXC();
	Request("@text0100", NoLog);
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　你说的是哪国话啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170200b57">
「不。我认为人类并非只要活着就足够。
如何活着十分重要。
　既然活着，就应该追求更好的生活方式。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170210b57">
「即使结果终究是死。
　……不过，和来栖野的想法差不多吧。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170220b56">
「哎？
　那……」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170230b57">
「就是这么回事。
　刚才我的话，并不是那个意思……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　稍微有些难为情，铃川用手托住了下巴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170240b57">
「或许能将饰马安全地<RUBY text="····">营救出来</RUBY>，
刚才我想表达的是这个。」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170250b33">
「……哎!?」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170260b43">
「那到底是什么意思？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170270b57">
「倘若六波罗是为了贩卖奴隶而绑架市民，那么
你觉得绑架之后他们又会怎么做？」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170280b57">
「新田。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170290b56">
「到!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　突然以上课的方式被点名，我惊慌失措。
　条件反射地做出起立的姿势——不过原本就
站着——同时思考罗列起各种想法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170300b56">
「呃，那个，就是说，我不认为他们能在国内
做这种买卖……那就运到港口，再从那里用船
送到海外去吧。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170310b57">
「每抓一人就送一次，吗？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170320b56">
「是……啊？　不是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……<RUBY text="·······">每抓一人送一次</RUBY>？

　至此，我终于明白了铃川的意思。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_快活.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170330b56">
「原来如此！　就是说——」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170340b43">
「不可能只为了一个人费那种工夫。
所以在聚集到一定数量之前，一定
会把他们监禁在国内某处！」

{	SetComic(@0,@0,1);
	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170350b56">
「让我来说啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　怎么能如此冷酷无情地抢风头。
　你是魔鬼吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170360b57">
「正是如此。
　虽然不知道那些奴隶究竟有多大价值，
但反复运输并不合算，风险也会增高。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170370b57">
「应该在某个隐秘的场所有<RUBY text="··">仓库</RUBY>
存在。如果能顺着线索找到那里的话
……或许能做些什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　虽然这么说着，铃川却没有表现出一丝乐观的样子，
仍是那副平静的表情。
　然而我的心境却豁然开朗。

　这么一说果然正是如此。
　道理如此简单。
　但我却连想都没有想过。

　这就是人生阅历的差异吗。
　这么一想倒稍微有些不甘心。

　因为不愿去想律被当作奴隶贩卖这种事，
也就一直没有做更深的思考。
　这样是不行的吧……
　即使是讨厌的事情也不能不好好考虑。

　开心的同时也在反省。
　也似乎明白了那个扑克脸忠保的内心其实也是相似的。

　而要说小夏如何，她已经坦率地感激起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetComic(@0,@0,4);
	SetFwC("cg/fw/fw小夏_ドリーム.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170380b33">
「老、老师……好厉害。我好感动。」

{	DeleteComic();
	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170390b57">
「太夸张了，来栖野。又不是发表了什么
特别奇绝的构想。」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170400b33">
「不不！　老师果然就是不一样。和这些
滥竽充数只会浪费空气进行光合作用
的蜣螂之类完——全不一样！
　我，相信老师……！」

{	FwC("cg/fw/fw鈴川_驚き.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170410b57">
「是、是吗。」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170420b56">
「哈哈哈，你看啊忠保。刚刚还误解
顶撞老师的家伙在说些什么呢？」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170430b43">
「那就是所谓人类的强大啊雄飞。人就是
靠着忘记痛苦的过去一步步前进的生物啊。
不过话说回来小夏的忘却周期也未免太短
了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドカバキ。
	OnSE("se戦闘_攻撃_殴打連撃01_L",1000);

	CreateColorSP("フラッシュ", 15000, "#FFFFFF");
	DeleteStCR(0,true);
	DeleteStR(0,true);

	CreateTextureSP("絵クエイク", 50, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	Shake("絵クエイク", 600, 0, 10, 0, 0, 600, null, false);
	Fade("フラッシュ", 300, 0, null, true);

	WaitKey(200);

	Fade("フラッシュ", 0, 1000, null, true);
	Shake("絵クエイク", 600, 10, 10, 0, 0, 600, null, false);
	Fade("フラッシュ", 300, 0, null, true);

	WaitKey(200);

	Fade("フラッシュ", 0, 1000, null, true);
	Shake("絵クエイク", 600, -10, 0, 0, 0, 600, null, false);
	SetVolume("OnSE*", 600, 0, null);
	FadeDelete("フラッシュ", 300, true);
	Delete("絵クエイク");

	WaitPlay("OnSE*", null);

	StR(1000, @30, @0,"cg/st/st小夏_通常_制服.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170440b33">
「那么老师，接下来怎么做？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170450b57">
「是、是啊。总之我觉得应该先好好调查一下
那个疑似现场的竹林……」

{	SetComic(@0,@0,6);
	FwC("cg/fw/fw忠保_困惑.png");}
//◆ボコ
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170460b43">
「也有那之前必须先去一趟医院的感觉。」

{	SetComic(@0,@0,6);
	FwC("cg/fw/fw雄飛_沈むb.png");}
//◆ボコ
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170470b56">
「还有之后必须再去趟动物园寄养个野兽
的感觉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
　包含羞耻心的一击着实沉重。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170480b57">
「但是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　一边走着，铃川一边自顾自低语起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170490b57">
「不论哪里……都是丑陋的世间啊。
　奴隶贸易这回事，虽然是否真的存在
不得而知，但人们却真心地怀疑它确实
存在……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170500b57">
「对自己的国家无法信任到这般地步……
　会演变成这样，在过去完全不可想象。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170510b57">
「迟早有一天，会变成在光天化日之下公然进行
奴隶买卖的国家……吧。
　这个，大和国…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　……铃川。
　
　是啊。铃川是在被六波罗统治之前的大和国长大成人的。

　对我们而言，六波罗是懂事之时就已经存在的统治者。
即使全然不觉得感谢，也是「理所当然」的存在。在他
们统治之下的大和国，同样也「理所当然」。

　但铃川不同。
　他知道那个古老美好的大和，又被迫看着她惨遭破坏
的模样。

　……很痛苦吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170520b33">
「没事的，老师！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　看着那样的铃川，小夏开朗地说道。
　或许是想挽回之前的失分吧，那声音充满鼓励。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170530b33">
「请您放心。
　如果老师被抓做奴隶，我会买回来的！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　可惜白费力气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170540b57">
「不。就算被买回去。还是很困扰。」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170550b33">
「那、那么，我来当奴隶请您买下。」

{	SetComic(@0,@0,13);
	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170560b33">
「主——」

{	SetComic(@0,@0,16);
	FwC("cg/fw/fw雄飛_驚くb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170570b56">
「冷静，小夏。
　不，拜托你赶紧冷静下来。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170580b43">
「你在暴走呢！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　到了这当口，真想放弃了。
　教训。这是对来栖野小夏注入铃川、
焦虑和善意就会爆炸的，混杂的危险。

　看着推推搡搡的我们，铃川轻轻地笑了。
　那之后，难以察觉地低声自语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170590b57">
「丑陋的世间……正因，如此。
　美丽之物，才必须好好珍惜。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170600b57">
「好好地……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170610b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――





	CreateColorSP("暗転", 15000, "#000000");

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg017_竹林_01.jpg");

	DeleteStL(0,true);
	DeleteStC(0,true);
	DeleteStR(0,true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);



//◆竹林

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170620b57">
「这里吗……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170630b43">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　被横砍去的竹林一角。
　我们带着铃川，再次来到这里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	StL(1010, @60, @0,"cg/st/st小夏_通常_制服.png");
	StCL(1000, @-60, @0,"cg/st/st忠保_通常_制服.png");
	FadeStR(300,false);
	WaitKey(200);
	FadeStL(300,false);
	FadeStCL(300,true);


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170640b57">
「饰马的踪迹最后得到确认之处便是这个竹林。
　几乎同一时刻，有疑似武者身影的目击报告。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170650b57">
「而那位名为凑斗的警官……看到这幅乱象之后
就断定是武者所为了吗？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170660b43">
「的确如此呢。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170670b57">
「根据呢？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170680b56">
「那个……怎么说的来着？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170690b43">
「让我想想。记得好像是说因为切口断面<RUBY text="··">过于</RUBY>
<RUBY text="··">整齐</RUBY>了之类的吧。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170700b57">
「唔……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　侧倾着头，铃川靠近被砍断的竹子。
　和昨天那个半吊子警官做过的一样，
他目不转睛地凝视着断面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170710b57">
「原来如此。被干净利落地切断……
普通的人类不管使用怎样的刀具，都
不可能做到这点。
　其他还说什么了吗？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170720b43">
「好像还对移动方法抱有疑问。从哪里、
如何进入，又是如何离开的。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170730b56">
「嗯……武者虽然能飞，但他不可能是飞来的。
说是那样做会在附近引起相当大的噪音。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170740b43">
「可是可是，以装甲的形态出入……简直是笑话。
　如此一来只能认为是只身侵入，
再在竹林内进行装甲。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170750b43">
「即使不谈怎样进入，他到底是怎么回去的。
怎么避人耳目地把律运出去的……基本上就
考虑了这些方向。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170760b57">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　铃川交叉着手臂，视线投向空中。
　但很快回过头，向我问道。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170770b57">
「是说抄了近道吗？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170780b56">
「诶？　不……」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170790b33">
「好像没有听过这种说法。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　对不知怎么突然大幅发展的对话，我们摇头不解。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170800b57">
「……听起来好像正要得到那样的结论。
　不是吗。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170810b43">
「不，实际如何呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　近路。
　也有这种可能性，吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170820b56">
「唔嗯……要是某处的忍者屋姑且不论，但
只是个普通的竹林啊，这里。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0170830b33">
「不过田中爷爷的话，为了击退入侵者
不知什么时候就挖了
一条也不是没法想象。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0170840b43">
「不。要是会造那种磨磨蹭蹭的玩意儿，
那个人早就配备加特林枪了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　唔。
　姑且不提他实际有没有做过，想法肯定是往
那个方向倾斜过的，绝对。

　……那边说不定就有竹枪做的陷阱之类的。
　小心点吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170850b57">
「是吗……
　算了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　残留着些难以捉摸的神色，铃川直起身。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170860b57">
「分头行动，寻找线索吧。
　虽然事到如今追踪足迹是不可能了，不过或许
能找到犯人或者饰马的遗留物品。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170870b56">
「明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg017_竹林_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);


//◆転換

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　忠保和小夏，以及铃川，各自进入了竹林分
头行动。大概是小心翼翼看着脚下行走的缘故，
竹叶窸窣的声响从远处传来。
　我留在现场。说不定还有什么看漏的地方。

　和就算隔着教室两端那么远的距离也能看清教科书的
忠保不同，我的视力只是普通人的水平，为了准确无误
只能像青蛙一样匍匐在地上。
　虽然丢人，也总能做些什么。

　这样做的时候，忽然想起。
　似曾相识的感觉。
仿佛在何时何地也做过同样的事情。
是什么呢——对了。

　在学校背后的小树林里捉迷藏的时候。
　我扮鬼，逃过律的眼睛，四肢爬行着躲避在隐秘处想
往树林深处逃去。

　可是很快就被找到了。
　而且被找到的方法还相当不得了。

　突然感到背部骑上了相当大的重量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwリツ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0170880b11">
『嚯——嚯嚯嚯！　这模样真是太合适
你了雄飞！　来来大声哼哧哼哧叫起来，
重点是要用鼻子发声哦！』

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170890b56">
（怎么连马都不是！　一下就变成猪了啊！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……不知不觉陷入回忆，却没有一丁点好的记忆。
　真是的到底怎么回事啊那个人。

　对脑中不断闪过的画面疲惫不堪，我抬起头。
　那一刹那。什么东西一晃，进入视线。

　白色的碎片。
　乍一看，只是石头而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 1, null);
	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170900b56">
（啊……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　我有印象。
　这是——没错。

　海豚挂件。
　……总是挂在律书包上的……

　只有头的部分。
　在沙砾间滚动着。

　我把它捡起来细看。
　……没有错。

　干净利落地——跟周围的竹子完全相同——被斩断。
　甚至有着律的气味的错觉。

　一旦带着这种心情，便觉得只剩头部的海豚凄惨至极。

{	OnSE("se人体_体_心臓の音02",1000);}
　散发着尸臭。
　——海豚的首级。

　好友的身影，与它重叠了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170910b56">
（不要）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
　攥紧拳头。

　幻象仍没有消失。

　我闭上双眼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	CreateColorSP("暗転", 15000, "#000000");
	DrawTransition("暗転", 600, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　什么都看不见。
　这样就好了。

　现在，什么都，不想看。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Wait(1000);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170920b57">
「……新田。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("暗転", null);

	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(0,true);

	SetVolume("@mbgm*", 2000, 1000, null);
	DrawDelete("暗転", 600, 100, "slide_05_00_0", false);

//◆竹林


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170930b56">
「诶？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　回过神来的时候，铃川站在面前。
　他用惊讶的目光看着紧紧握住右拳的我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170940b57">
「发生了什么吗？」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170950b56">
「……不。没什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　现在还不想向他报告发现了物品这件事。
　反正不管怎么看，都不是可以称之为线索的东西吧。

　铃川肯定有所怀疑，但他没有追问下去。
　视线只是扫了一眼，就从我的拳头上移开了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170960b57">
「我发现了有趣的东西哦。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170970b56">
「……线索吗!?　是什么!?」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0170980b57">
「现在给你看还早。
　去把另外两个人叫过来吧。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0170990b56">
「是！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg017_竹林_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	CreateSE("SE01","se自然_水_流れる01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);


//◆洞窟河川……を用意するのもコスト的にアレか。竹林のままで良いや。
//◆ＳＥ：水流。激しい。


	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0171000b33">
「这个……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171010b56">
「河？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171020b43">
「不如说，是地下水脉呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　压轴的忠保，做了最正确的表述。

　延伸向源氏山的平缓斜面。
　表面宛如山谷，不如说如同敞口般开裂，
试着窥探其中则可见水波流动于谷底。

　气势惊人。
　深度似乎也相当惊人。

　的确，与其说是河流，
那看起来更像是间或露出地面的地下水脉。
　称其为洞窟河川或许更加浅显易懂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171030b43">
「原来如此。这个声音，
原来不是从弁天川传来的。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171040b56">
「我也这么想着呢。
没想到在这种地方会有这种东西。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　竹林里响着不知从哪儿传来的水声。
　仔细想想，要说是弁天川的声音也未免太近，
太过激烈。那条河离这里至少也有半公里距离，
损失了一部分水流应该相当平缓才对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0171050b33">
「……巧妙地被地面的凹凸隐藏了起来。
稍微离远一点就看不到了。
　这样不就神不知鬼不觉了吗？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171060b43">
「至少这里变成田中帝国以后，
大概就没人看到过了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　忠保低声深深感慨。
　同感。可是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171070b56">
「有趣的东西就是指这个吗？　老师。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0171080b57">
「无趣吗？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171090b56">
「不，可是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　铃川不可能在现在的状况下
出于地质学的观点对此兴致十足。

　也就是说。
　这不就是那个「近道」吗——他表达着这样的观点。

　重新审视一下的确如此，那个「出入口」的
大小足以容纳成年男子潜入。
　洞窟的直径应该也有两米左右了吧。

　但是其中一半都被汹涌的水流占据。
　而且从外貌来看，川底河床跟公共游泳池一样
平整的可能性连万分之一都没有。

　……作为近道来说，问题似乎多了点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171100b56">
「不会是想说从这里用小船下去之类的吧？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171110b43">
「我个人觉得，潜水艇倒是说的过去。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0171120b33">
「进不去的。进不去的。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0171130b57">
「不需要那种东西。
　你们忘了吗？　犯人不是普通人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　……啊！
　这样啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171140b56">
「武者的话……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171150b43">
「……就能轻而易举地行动，这种小河的程度。
　无论是顺流而下还是逆流而上。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　即使再背上一个人。
　那对于身着剑胄、拥有恶魔般力量的武者来说，
恐怕连辛苦都谈不上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171160b56">
「那，犯人真的就是从这里！」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0171170b33">
「抓着律……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171180b43">
「逃到哪里去了。
　……一想象那个画面，该说滑稽吗，有种想笑
又笑不出来的感觉呢。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171190b43">
「是怎样的家伙呢？」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0171200b57">
「是本地人吧。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171210b43">
「呃？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　大概本是在自言自语，却冷不防得到了回应，
忠保发出了打嗝一样的声音。
　用锐利的目光看着忠保的脸，铃川继续说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0171220b57">
「是本地人。还能有其他考虑吗？
　而且久居本地……至少得有十年以上。
在田中老人迁来此处定居之前就在附近，
把这里当作游乐场的人。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0171230b57">
「若非如此……不可能会知道如此隐秘的水路。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171240b43">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　忠保转过脸。
　这种状况相当少见，他的脸色很不好看。

　本地人。
　也就是说，<RUBY text="·······">是我们身边的人</RUBY>。

是加入了六波罗的家伙。肯定不是什么正经人。
野木山组的关系者，或是其他黑社会组织，这种
范畴吧。然而即使如此，他也是镰仓的居民。
是伙伴，至少也是同族，总归是这样的存在。

　在我的意识里，六波罗是没有实际轮廓的「敌人」。
　只是单纯地憎恨，单纯地讨厌。

　可是就在那里，那张「脸」出现了。
　一张非常熟悉的面孔——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0171250b33">
「会通向哪里呢，这个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　突然的声音来自小夏。
　她直直凝视着昏暗的河面，仿佛什么都没听见。

　虽然不可能听不见。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171260b56">
「啊……是啊。
　会不会是钱洗弁天？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171270b43">
「下游大概是呢。
　但是从那种地方出去的话
不可能避开人们视线的哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　顺着搭话的我，忠保也应声附和。
　而铃川，大概也不想让阴郁的气氛继续蔓延。
他眺望着斜面上方，继续说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0171280b57">
「……那么是上游吗。
　这河是从哪里流来的……我大概了解。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171290b43">
「源氏山的峰顶吗？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0171300b57">
「想法没错，但从那种地方出去也无处可逃吧。
　在此之前，应该有和这里相似的地方。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171310b56">
「那是……？」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0171320b57">
「我知道一处。
　走吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　说着，铃川率先迈步走去。
　那张侧脸一反常态地严肃。

　……是啊。
　我们终于来到了这里。

　能够看见带走律的犯人的背影之处。

　很危险，吧。
　甚至不需要再三考虑。

　手心渗出汗水。
　膝盖颤抖。

　——总觉得，
　有什么话快要脱口而出。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0171330b43">
「走吧，雄飞。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0171340b56">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　然而，在话语成形之前，我就被这样催促着，
开始踏上不知通向何方的道路。
　
　那恐怕——是为了迎接终结。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2500, 0, null);
	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);

	CreateColorEX("暗転", 1500, "#000000");
	Fade("暗転", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);
	WaitKey(2000);

	CreateSE("SE01","se自然_水_流れる01_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);
	FadeDelete("暗転", 2000, true);


//◆転換
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//◆以下、顔グラなし
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0171350a01">
《………………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0171360a01">
《……主君……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0171370a01">
《主君。听见了吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma01_018.nss"