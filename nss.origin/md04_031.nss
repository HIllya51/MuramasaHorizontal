//<continuation number="1390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_031.nss_MAIN
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
	#bg104_普陀楽城外郭大船方面_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_032.nss";

}

scene md04_031.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_030.nss"


//◆藤沢口
//◆戦闘

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg104_普陀楽城外郭大船方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);
	CreateSE("銃撃戦", "se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("銃撃戦", 2000, 500, 0, 1000, null,true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, true);

	Wait(500);
	SetVolume("銃撃戦", 3000, 200, null);


	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310010a07">
「总觉得……
　今天很奇怪啊。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310020a00">
「哪里奇怪？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310030a07">
「进驻军的部队。
　他们的攻击也太马虎了吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310040a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310050a00">
「听你这么说确实如此。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310060a07">
「是吧？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310070a00">
「不过，那难道不是因为事情的进展如预想中
一样吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　环顾四周后，我在茶茶丸的耳边说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310080a00">
「我觉得若是他们打算在之后用上决战兵器，
便不会进行强攻以至白白牺牲士兵。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310090a07">
「话虽如此……
　总觉得不太对劲啊。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310100a07">
「沃尔夫也还没联络我们……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310110a00">
「…………」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310120a07">
「要是顺利收拾掉了的话，不可能毫无音讯。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310130a00">
「通过柳生常暗传递消息吗？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310140a07">
「嗯。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310150b37">
「属下在。
　就在方才，有最新消息传来。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆常闇斎

	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, false);
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310160a00">
「…………」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310170a07">
「…………」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310180b37">
「怎么了？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310190a00">
「对心脏不好吧。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310200a07">
「对心脏不好啊。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310210b37">
「是属下失礼了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一如往常，无声无息出现的那个男人，恭恭敬敬地
行了一礼。
　然后与刚才的我相同，对周围投以警戒的视线之后
再度开始说话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310220b37">
「在镰仓进驻军临时司令部中的一名同志
方才向我们通报。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310230a00">
「……？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310240a07">
「……不是沃尔夫？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310250b37">
「不是。
　但他是绿龙会的成员。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310260a07">
「怎么回事。
　因为联络人太多会混乱，我明明跟沃尔夫说好
由他承担所有联络工作的。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310270b37">
「沃尔夫教授现已被拘禁。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310280a07">
「……哈?!
　那个内裤大叔在搞啥！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310290a07">
「虽、虽然觉得不太可能——」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310300a00">
「不会是强迫猥亵罪吧？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310310a07">
「在这种时候!!」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310320b37">
「不，事态或许还要更严重些。
　似乎卡农中佐也和教授一样，被剥夺了行动
自由。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310330a07">
「……什么……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310340a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　卡农中佐？
　这名字倒是听说过。

　应该是——预定执行空投锻造雷弹作战的ＧＨＱ军官。
　
　那个人，被拘禁了？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310350a07">
「维罗少将呢？」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310360b37">
「属下不知。
　也有已被肃清的可能。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310370a07">
「发生什么事了？」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310380b37">
「昨夜凌晨……不，正确来说应该是今日。
　联合国副秘书长路比·撒修安东伯爵秘密入
境，到访镰仓市内野战司令部，似乎下达了什
么命令。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310390b37">
「此后，维罗少将不知去向。
　卡农中佐与沃尔夫教授被分别监禁。」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310400b37">
「撒修安东伯爵身为联合国全权代理以及大英
联邦女王的信任大使，已在事实上掌握了军权。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310410a07">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310420a00">
「……茶茶丸，怎么回事？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310430a07">
「败露了……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310440a07">
「卡农中佐掌管ＧＨＱ的对大和政策，而他本
人是新大陆独立派，哥哥。
　为了独立，他希望得到大和，而为了争夺大
和，他才要使用锻造雷弹。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310450a07">
「他原本是希望在帮助<RUBY text="我们">绿龙会</RUBY>，
也即是沃尔夫教授的同时，
对我们加以利用……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310460a00">
「…………
　在这种紧要关头，卡农中佐和他的同党
被联合国识破了？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310470a07">
「只能这么想。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310480b37">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　原来如此。
　像进驻军这样强大的军事组织若是被绿龙会这种诡异
的组织插手，就会露出空隙，被人乘机而入吧。

　<RUBY text="新不列颠">新大陆</RUBY>独立派——<RUBY text="美国梦想者">有着梦想的人们</RUBY>。若要说大英联
邦公开的大敌是俄罗斯帝国的话，那么可以说潜在的大
敌便是他们。
　大规模起义已有过四次。中小规模暴动则不计其数。

　既然进驻军的中心派阀是暗地里敌视大英联邦的独立
派的话，那么他们接受了像沃尔夫教授这样有目的的合
作者便合情合理了。
　想必他们是认为能派上用场的同盟者越多越好。

　<RUBY text="··">寄生</RUBY>十分顺利。
　然而在宿主即将枯死的现今——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310490a00">
「…………」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310500a07">
「……可恶……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310510a07">
「为什么阴谋这种东西就是无法顺利?!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310520a00">
「因为是阴谋吧。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310530a07">
「这样下去锻造雷弹不会空投下来。
　因为联合国来的家伙比起对付大和
更想先肃清ＧＨＱ吧……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310540b37">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310550a00">
「茶茶丸。
　那个卡农中佐，是个<RUBY text="···">能干的</RUBY>男人吗？」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310560a07">
「咦？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310570a00">
「要是还他人身自由的话，像现在这种状况
还能收回失地吗？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310580a07">
「嗯……这个……也是一种办法。
　那家伙顽强得很，脑子也灵活。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310590a07">
「至少能夺回指挥权继续作战吧。
　那个全权代理的好像也还没有明目张胆地
把中佐当成叛国者对待……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310600b37">
「嗯，正是如此。
　不过凑斗大人……您有何打算呢？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310610a00">
「若是救了那个男的就有办法扭转局势的话，便
救他出来。」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310620a00">
「我去去就来。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310630a07">
「哥哥你要去?!」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310640a00">
「除了我还有谁能去？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310650a07">
「不，但是……
　不行呀，很危险的。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310660a00">
「这可不像是在战场应说的话。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310670a07">
「冒险也要有个度啊。
　像最近那么危险的事可不要！」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310680a00">
「最近？
　是指建朝寺那时的事吗？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310690a07">
「那时候是我的失误。
　没想到那个黝黑太郎竟然是武者……
啊——我竟然挑动哥哥去对上那种家伙，
真想狠狠揍翻当时的自己！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310700a07">
「即使是现在想起来也会食欲减退！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310710a00">
「……不是轻松干掉那家伙了吗。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310720a07">
「从结果上来说是这样啦。
　进驻军司令部里的龙骑兵可绝对不只一两个
啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310730a00">
「我会想办法对付的。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310740a07">
「若只是去想就能有办法的话，六年前的战争
中我们国家就不会输掉了！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310750a00">
「这算什么。
　你就如此无法信任我吗？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310760a07">
「不、不是的。
　不是这样的……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310770a00">
「…………」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310780a07">
「就、就算瞪我也不行！ 
　我我我我才不怕呢！」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310790a07">
「呜……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310800a00">
「算了。
　你同意也好不同意也罢。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310810a00">
「我走了。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310820a07">
「我——不——许——!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ずるずる
//	Request("@StL*", Smoothing);
//	Move("@StL*", 300, @50, @100, null, false);
//	Zoom("@StL*", 300, 1500, 1500, null, true);

	DeleteStL(150,true);
	CreateTextureEX("でかちゃちゃ", 1000, @-250, @-300, "cg/st/resize/st茶々丸_通常_制服a_l.png");

	Fade("でかちゃちゃ", 150, 1000, null, false);


	OnSE("se人体_動作_人引きずる_L", 1000);
	Shake("でかちゃちゃ", 400, 1, 0, 0, 0, 1000, DxlAuto, true);
	Shake("でかちゃちゃ", 400, 1, 0, 0, 0, 1000, DxlAuto, true);



	WaitKey(1000);
	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310830a00">
「别拽腰带。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310840b37">
「堀越中将大人。
　那个，旁人在看着。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310850a07">
「不行不行不行————!!
　你非要去的话——」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310860a00">
「怎样？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310870a07">
「我也一起去！」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310880a00">
「你是傻子吗？」

//◆コミカル怒
{	SetComic(@0,@0,15);
	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310890a07">
「没有你傻！」

{	DeleteComic();
	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310900a00">
「将军怎能离阵？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310910a07">
「哥哥你还不是副官！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310920a00">
「那我不做副官就可以了吧。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310930a07">
「你要丢下我吗?!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310940a00">
「虽然我无意抛下你，不过既然变成了那样，
我认为我没有犹豫的理由。」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310950a07">
「哇哦，你这人好过分！」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310960b37">
「凑斗大人。
　堀越中将大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("でかちゃちゃ", 300, true);


	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我被茶茶丸往后拽着，正要再度走出去，一把强忍笑意
的声音横插了进来。
　容貌奇异的男人捂着嘴看着我们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310970a00">
「这次是你吗？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310980a07">
「唔——」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310990b37">
「请务必将此事交给属下来办。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311000a07">
「……常暗？」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311010b37">
「其实，属下本就有此打算。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311020a00">
「你也没有什么分身的余暇吧。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311030b37">
「可暂代属下之职的人多如过江之鲫。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311040a00">
「我也是一样。
　我这边倒还方便些。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311050b37">
「但此事由属下来做正是人尽其才。
　您并非专精于潜入工作。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311060a00">
「……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311070b37">
「常暗乃足利家的刺客，柳生一门之家长。
　潜入敌阵之事就如吃饭喝水一样平常。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311080a07">
「常暗……能交给你吗？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311090b37">
「为了绿龙会。
　为了我们的信仰。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311100b37">
「决不负大人所望。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311110a07">
「嗯……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311120a00">
「……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311130b37">
「凑斗人。
　正如堀越中将大人所说——
世间不如意事十有八九。」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311140b37">
「或许会有比这更加意想不到的事态发生。
　请您留在堀越中将大人身边，以防事态有变。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311150b37">
「常暗在此请求大人。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311160a00">
「……明白了。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311170a00">
「柳生常暗斋。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311180b37">
「属下在。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311190a00">
「你是生是死，都与我无关。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311200b37">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311210a00">
「但是，不要白白送了性命。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311220a00">
「我……绝不容许那种事发生……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311230b37">
「————」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311240b37">
「属下知道了。
　不过，大人不必担心……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311250b37">
「我有预感，此行将是属下的命运之行。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311260a00">
「命运？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311270b37">
「是。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311280b37">
「恐怕——留在此处的凑斗大人亦然。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311290a00">
「…………」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311300b37">
「……真是的。
　说了些如同预言者一般的话。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311310b37">
「净是些无聊之语，恐污了大人的耳朵。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311320a07">
「常暗……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311330b37">
「属下告退。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆しゅいん。消失


	OnSE("se人体_動作_跳躍02",1000);
	DeleteStA(200,true);

	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　阴郁的男人如同出现时那般行了一礼——
　便仿若暗影一般消失了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311340a00">
「……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311350a07">
「哥哥，为什么说那种话？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311360a00">
「……怎么说呢。
　预感什么的，我也感觉到了。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311370a07">
「什么预感？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311380a00">
「和那个男人，没有再见的机会了。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311390a07">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("銃撃戦", 1500, 0, null);
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_032.nss"
