//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_009.nss_MAIN
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
	#bg088_高級ホテルのホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_010.nss";

}

scene md03_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_008.nss"


	PrintBG("上背景", 30000);
	CreateColorEX("黒", 5000, "BLACK");
	Fade("黒", 0, 500, null, true);
	OnBG(100, "bg088_高級ホテルのホール_01b.jpg");
	FadeBG(0, true);

	FadeDelete("上背景", 1000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　在这薄暗笼罩的空间里，可以感觉到有几个人
无声地走了过来。
　数人……十人，亦或更多。

　他们既不排队也不摆阵型，只是随意地待在
各自想待的地方。
　但是，不知是不是有意的——他们像是要将
我以及我身边几人围住般扩散开来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090010a13">
「看来都到齐了。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090020a13">
「好了……今晚我们有两名新同伴。
　首先从我们开始介绍，没有异议吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆拍手。ぱちぱちぱち

	OnSE("se人体_動作_拍手01", 1000);
	Wait(300);
	OnSE("se人体_動作_拍手01", 1000);
	Wait(200);
	OnSE("se人体_動作_拍手01", 1000);

	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　昏暗得连对方的脸都看不清的空间里，只有拍
手的声音回荡着。
　这是在表明赞同的意思吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm02", 0, 1000, true);
	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090030a13">
「好的。
　那么……开始介绍<RUBY text="··">我们</RUBY>。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090040a13">
「现在聚集在这里的人可说是良莠不齐。
　比如说，给我贴上妄想狂标签的学徒。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




//◆茶々丸
	
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, true);
	
	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090050a13">
「她生来就是异能者。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆常闇

	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(1000, true);

	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090060a13">
「暗地中的天主教徒。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆消す

	DeleteStA(300,true);

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090070a13">
「以及——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　教授舒展双臂，示意室内的各处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090080a13">
「大陆经济界的幕后黑手。
　新兴宗教的大干部。
　本应已被处刑的连环杀人犯。
　无人不晓的银幕明星。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090090a13">
「退役军人、丑角、大地主、多重人格者、财
阀顶尖人物、物理学者、神父、高级娼妇、禅
宗的破门僧、靠股票发大财却不知道怎么用钱
青年、天才料理人、占星师——」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090100a13">
「乱七八糟，全都乱七八糟。
　就连人种和国籍都不统一。」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090110a13">
「这，究竟是何种集团？
　只是从全人类中抽签选出
而来集会的吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090120a00">
「…………」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090130a13">
「不是的……
　是愿望让我们集结在一起。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090140a13">
「为了仅此一个的欲求，我们聚集起来。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090150a00">
「为了什么？」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090160a13">
「神！」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090170a13">
「是神！」

{	NwC("cg/fw/nw緑龍会Ａ.png");}
//【ｅｔｃ／緑龍会Ａ】
<voice name="ｅｔｃ／緑龍会Ａ" class="その他男声" src="voice/md03/0090180e290">
「神……没错，是神！」

{	NwC("cg/fw/nw緑龍会Ｂ.png");}
//【ｅｔｃ／緑龍会Ｂ】
<voice name="ｅｔｃ／緑龍会Ｂ" class="その他男声" src="voice/md03/0090190e291">
「若是真有神，好想见见啊！」

{	NwC("cg/fw/nw緑龍会Ｃ.png");}
//【ｅｔｃ／緑龍会Ｃ】
<voice name="ｅｔｃ／緑龍会Ｃ" class="その他男声" src="voice/md03/0090200e292">
「我只对神感兴趣……」

{	NwC("cg/fw/nw緑龍会Ｄ.png");}
//【ｅｔｃ／緑龍会Ｄ】
<voice name="ｅｔｃ／緑龍会Ｄ" class="その他女声" src="voice/md03/0090210e293">
「神是必要的。
　为了将罪孽深重的我体无完肤地否定。」

{	NwC("cg/fw/nw緑龍会Ｅ.png");}
//【ｅｔｃ／緑龍会Ｅ】
<voice name="ｅｔｃ／緑龍会Ｅ" class="その他男声" src="voice/md03/0090220e294">
「爱人恨人养育人杀人凌虐人都已经玩腻了！
　我想见见非人的东西。我想见神！」

{	NwC("cg/fw/nw緑龍会Ｆ.png");}
//【ｅｔｃ／緑龍会Ｆ】
<voice name="ｅｔｃ／緑龍会Ｆ" class="その他男声" src="voice/md03/0090230e295">
「哎呀，这句话用来当笑话再好不过了。
『神真的存在！』」

{	NwC("cg/fw/nw緑龍会Ｇ.png");}
//【ｅｔｃ／緑龍会Ｇ】
<voice name="ｅｔｃ／緑龍会Ｇ" class="その他男声" src="voice/md03/0090240e296">
「停——停停!!
　才没有神！　有就宰了祂！」

{	NwC("cg/fw/nw緑龍会Ｈ.png");}
//【ｅｔｃ／緑龍会Ｈ】
<voice name="ｅｔｃ／緑龍会Ｈ" class="その他女声" src="voice/md03/0090250e297">
「神一定会爱我的。」

{	NwC("cg/fw/nw緑龍会Ｉ.png");}
//【ｅｔｃ／緑龍会Ｉ】
<voice name="ｅｔｃ／緑龍会Ｉ" class="その他男声" src="voice/md03/0090260e298">
「神……」

{	NwC("cg/fw/nw緑龍会Ｊ.png");}
//【ｅｔｃ／緑龍会Ｊ】
<voice name="ｅｔｃ／緑龍会Ｊ" class="その他女声" src="voice/md03/0090270e299">
「神——」

{	NwC("cg/fw/nw緑龍会Ｋ.png");}
//【ｅｔｃ／緑龍会Ｋ】
<voice name="ｅｔｃ／緑龍会Ｋ" class="その他男声" src="voice/md03/0090280e300">
「神！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090290a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090300a07">
「怎么样，哥哥。
　世上都是些无聊的人渣吧？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090310a07">
「人类已经不能让这些家伙们满足了。
　不指望神，人生就过不下去了。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090320a07">
「为此他们无论什么都肯做。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090330a00">
「……什么都肯？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090340a07">
「在这里的人除了目的之外还有一个共同点。
　那便是<RUBY text="········">能调动金钱和人力</RUBY>。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090350a07">
「他们会用自己的实力暗地协助。
　协助我和哥哥接下来要做的事——」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090360a07">
「协助使银星号成为神的计划。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090370a00">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090380a07">
「这个集会原本只是厌倦生活的人为了消遣而
成立的研究魔术、炼金术之类的神秘学结社。
　但是，现在有点不一样……」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090390a13">
「因为发生了几件事。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090400a13">
「首先是我推论出神实际存在。
　……但当时我自己对论文的正确与否
缺少自信。」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090410a13">
「所以我只得给自己的论文命名为<RUBY text="···">梦想论</RUBY>。
　但是——」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090420a07">
「我读了沃尔夫的论文。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090430a07">
「这个<RUBY text="·········">已然感受到神的存在</RUBY>的我。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090440a00">
「感受……？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090450a07">
「我能听到。
　声音……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090460a07">
「因为我并不是作为人类出生的。
　能听到人类听不到的声音。」

//◆怒り表情
{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090470a07">
「在地底<RUBY text="····">不断嘶叫</RUBY>的家伙的声音。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090480a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]  
　大概是我把“你究竟在说什么”这想法直接写在了
脸上，甚至连黑暗都掩藏不住。

　茶茶丸露出一个非常讽刺的笑容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090490a07">
「你想听吗，哥哥？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090500a07">
「你想体味<RUBY text="········">足利茶茶丸的世界</RUBY>吗！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090510a07">
「就是这样!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se特殊_陰義_発動04", 1000);

	CreateColorSP("白", 5000, "WHITE");
	DrawTransition("白", 1000, 0, 1000, 300, null, "cg/data/zoom_01_00_1.png", true);
	WaitKey(500);

}

..//ジャンプ指定
//次ファイル　"md03_010.nss"