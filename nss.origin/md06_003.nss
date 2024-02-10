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

scene md06_003.nss_MAIN
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
	#bg111_武帝の宮_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_オーリガ=true;

	$PreGameName = $GameName;

	$GameName = "md06_004.nss";

}

scene md06_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_002.nss"

//◆武帝の宮。武者が数人立ち並ぶ？

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg111_武帝の宮_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm24", 0, 1000, true);

	#voice_on_オーリガ=true;

	StC(1000, @0, @0, "cg/st/stオーリガ_通常_私服.png");
	FadeStC(300, true);

	SetFwR("cg/fw/fwオーリガ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030010b01">
「知事先生。
　欢迎您的到来。」

{	FwR("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030020b01">
「来到敝舍，还请您放松。」

{	NwR("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030030e201">
「哈……多谢。」

{	FwR("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030040b01">
「本应带您去露台，
为您奉上茶点。
　但我推测，您更希望尽快将
事情交代清楚为好。」

{	NwR("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030050e201">
「的确……
　现在对我来说，绿茶和
伯爵茶都没什么差别。」

{	FwR("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030060b01">
「来这里的人大都如此。
　总坚信着一盏茶时
国家就会灭亡。」

{	NwR("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030070e201">
「……」

{	FwR("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030080b01">
「忘了自我介绍，我是奥利加。
担当“武帝”的对外联络员。」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030090b01">
「您不介意我作为代表
听一下您的陈述吧？」

{	NwR("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030100e201">
「这是自然。
　决定权也掌握在您手中吗？」

{	FwR("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030110b01">
「不。我只负责交流。
　做出决定的是那一位——」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆キャラ消し

	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボックスを適当な位置に動かすか。
　
　　　　　　　「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/stオーリガ_通常_私服.png");
	FadeStR(300, true);

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030120e201">
「……那位是？」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030130b01">
「“武帝”。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030140b01">
「此名号虽是我们的总称，但要论有谁
能独自承担委托的话，就是指那个人。
在“武帝”规模最小的时候，
他就已经是“武帝”了。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030150e201">
「……？
　总之，就是你们的社长吗？」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030160b01">
「社长！　真不错啊，社长。
　嗯，您这么认为也可以。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030170b01">
「只不过是个对于利益追求兴致索然，
又令人头痛的社长呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　
　　　　　　　「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/stオーリガ_通常_私服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fwオーリガ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030180b01">
「哎呀。
　<RUBY text="··">社长</RUBY>他不好闲聊。」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030190b01">
「您也很着急了吧。
　那就立刻切入正题吧。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030200e201">
「嗯。
　……单刀直入地说，
希望借用你们的武力。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030210b01">
「为了抵御露帝军的攻击，是吧？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030220e201">
「您已经知道了吗？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030230b01">
「如果无法时常确保良好的情报，
<RUBY text="·····">本社的工作</RUBY>就无法顺利展开。
　地球彼端的政变也能够在一小时内
获得汇报，邻近一带的消息则能更早获知。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030240e201">
「……不用详细说明情况真是再好不过。
　正如您所说，是函馆的露帝军。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030250b01">
「明早，就会渡海开始进攻陆奥。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030260e201">
「……<RUBY text="··">明早</RUBY>!?」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030270b01">
「哎呀，您不知道吗？
　这下糟了，情报可不是简单的
贩卖品……不过算了，仅限这次服务，
下不为例。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030280b01">
「是明早哦。露帝军的计划表中　
写明要去陆奥郊游。　　
　还以为您早已获知此事，
才匆匆赶来这里。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030290e201">
「……不……
　我也知道形势刻不容缓，
但没想到……居然是明早。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030300e201">
「情报属实吗？」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030310b01">
「如果波浪和海风的状况不佳，
说不定会推迟哦。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030320e201">
「…………」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030330b01">
「倘若改变心意想去祈求神风，
我可以介绍您不错的神社。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030340e201">
「不用了。我在先前的大战中已
充分领悟到神风对他们不起作用。
　还是希望拜托你们。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030350e201">
「如果为时未晚……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwオーリガ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030360b01">
「要是赶不上呢？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030370e201">
「再去神社。
　要不然纵身跃下悬崖峭壁，亦或是去到
进得出不得的森林也罢。」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030380b01">
「没关系。不用担心。
　只要在这里缔结契约，就一定来得及。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030390b01">
「“武帝”的战斗力在机动性和灵敏性方面
都绝不会落于人后。
　况且这一次距离又很近……
真是天赐良机。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030400e201">
「请稍加言辞。
　例如运气不好的话……」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030410b01">
「不觉得正是不幸中的万幸才更
弥足珍贵吗？
　平静中的幸运大都不会被察觉，
其价值不过如此。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030420b01">
「那么，说一下您的委托。
　只是在必要的时间内，雇佣必要规模的　
战斗力，作为海峡的防御部队？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030430e201">
「哈……啊，不是。
　不是防御，我们希望可以先发制人。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030440b01">
「先发制人？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030450e201">
「在露帝军对函馆采取行动之前。
　给以打击……让他们撤退。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030460b01">
「原来如此。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030470b01">
「我们所要求的雇佣费用，
大都是必要的成本费。
　即便如此也不是笔小数目，持续雇佣的
话则会价值不菲。」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030480b01">
「如今的陆奥，恐怕负担不起吧。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030490e201">
「……说得真直接。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030500b01">
「失礼了。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030510e201">
「但您说得没错。
　一方面经济陷入混乱，
另一方面费用却在不断增加。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030520e201">
「可供我自由支配的钱……」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030530b01">
「只能短期雇用了。
　那么放弃防御，开展进攻。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030540b01">
「这样才是明智之举。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030550e201">
「……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030560b01">
「没有比进攻更好的防御方式。
　在函馆战斗的话，
也不用担心战火波及陆奥。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030570b01">
「在我们的立场看来，这样也更为合适。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030580e201">
「那么？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030590b01">
「没问题。
　对于我方来说，没有异议。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030600e201">
「哦……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030610b01">
「下面。
　……就<RUBY text="···">取决于</RUBY>您了。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030620e201">
「————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwオーリガ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030630b01">
「听说过“武帝”的契约是怎么一回事吗？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030640e201">
「……有所耳闻。
　听过各色传言。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030650b01">
「本应包含理由，
详细的说给您听呢。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030660e201">
「理由吗……？
　那就不必了。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030670b01">
「不感兴趣？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030680e201">
「不如说还是不听为好。
　大概都是些让人不舒服的话。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030690e201">
「多余的话不听也罢，只是想尽到自己的
责任，死得其所。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030700b01">
「我明白了。
　那么请稍等。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030710b01">
「话说回来，我可以认为这意味着您已经
接受了承诺条件吗？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030720e201">
「……嗯。
　所有的事情都已打理妥当。
我并不打算从这里活着回去。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030730e201">
「要杀要剐，悉听尊便。
　……不，还是希望你们可以选择
痛快点的方法。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030740b01">
「很好。
　那么？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030750e201">
「……？　那么？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030760b01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030770e201">
「还有什么其他需要准备的？
　我一定会倾其所有……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030780e201">
「无论如何……只要能守护住陆奥。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030790b01">
「是吗？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030800b01">
「那么最后再确认一下。
　知事先生，您在寻求武力吗？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030810e201">
「是……
　请务必。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030820b01">
「“武帝”！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	DeleteStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
　　　「————————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/stオーリガ_通常_私服.png");
	FadeStR(300, true);

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030830e201">
「……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030840b01">
「契约已经通过。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030850b01">
「立刻编成部队，向函馆进发。
　破坏露帝军的司令部，让舰船无法航行。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030860b01">
「最晚将于今夜达成。」

//◆嘆息
{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030870e201">
「……呼……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030880b01">
「一脸如释重负的样子呢。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030890e201">
「是啊。
　心中放下了一块大石头。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030900e201">
「非常感谢……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030910b01">
「不必。
　因为这是契约。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030920b01">
「只要……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030930e201">
「是。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030940b01">
「只要您没有产生太大的
误解就好。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030950e201">
「误解？」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030960b01">
「…………」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030970b01">
「藏部带刀！」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0030980e147">
「是！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がしゃっ。武者が一歩歩いた音

	OnSE("se特殊_鎧_駆動音02", 1000);

	WaitKey(500);

	SetFwC("cg/fw/fwオーリガ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030990b01">
「这次就交给你这队吧。」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031000e147">
「感激不尽。」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031010b01">
「说出“武帝”的戒律。」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031020e147">
「善恶相抵！」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031030b01">
「那要怎么做？」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031040e147">
「计算杀死敌兵的数量。」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031050e147">
「然后弑杀等量的陆奥民众。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031060b01">
「很好。」

{	SoundPlay("@mbgm04", 0, 1000, true);
	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031070e201">
「……!?」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031080b01">
「不过，要预先减少<RUBY text="··">一名</RUBY>。」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031090e147">
「是。」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031100b01">
「去吧。」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031110e147">
「是！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がしゃっ。去る
	CreateSE("SE01","se人体_足音_鎧_複数駆け去る01");
	MusicStart("SE01",0,800,0,1000,null,false);

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031120e201">
「……等、等一下！」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031130b01">
「怎么？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031140e201">
「您是说连陆奥的民众也要杀!?」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031150b01">
「是这么说。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031160e201">
「不止杀我一人!?」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031170b01">
「委托人的性命自然要取。
　但是……这次的情况，
只有那种程度是不够的。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031180b01">
「这次的大军不是死将军一人就可以
阻止得了的。
　等价的杀戮很必要……如果只取您一人
的性命，<RUBY text="·······">这笔帐很不划算</RUBY>。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031190b01">
「因此，不足的人数就要从您的同伴，
　从守护的人中补足。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031200e201">
「……敌人和我方，杀死同样的人数吗？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031210b01">
「嗯，正是如此。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031220e201">
「——————」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031230b01">
「果然好像有些误解了呢。
　但是没关系，您不必后悔哦。」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031240b01">
「您什么也没做错。」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031250b01">
「“武帝”不介入的话，陆奥的人只有
单方面的遭遇杀害。
　露帝的正义之下，人们单纯地被杀害。」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031260b01">
「但如果我们采取行动后情况就不同了。
　两方必定不相伯仲。」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031270b01">
「为了不让正义胜利。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031280e201">
「…………为什么？」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031290b01">
「……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031300e201">
「为什么要做这样的事？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031310b01">
「先前不是不想听理由吗。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031320e201">
「为什么!?」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031330b01">
「…………
　<RUBY text="···">为什么</RUBY>。」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031340b01">
「为什么，不管敌方还是我方都会惨遭杀害？
　为什么，不管是善是恶都要惨遭杀害？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031350b01">
「回答我！」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031360e201">
「…………」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031370b01">
「因为这正是……
　您所寻求的武力。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

//◆フェードアウト
//◆テロップ「ＥＮＤ」
	CreateColorEX("黒", 6000, "BLACK");
	Fade("黒", 1500, 1000, null, true);

	WaitPlay("@mbgm*", null);

	CreateTextureEX("絵エンド", 6000, 20, Middle, "cg/sys/Telop/lg_エンド.png");
	Fade("絵エンド", 1000, 1000, null, true);

//◆ウェイト
	WaitKey(3000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md06_004.nss"