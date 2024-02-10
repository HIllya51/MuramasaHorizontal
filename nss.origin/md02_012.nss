//<continuation number="1260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_012.nss_MAIN
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
	#bg018_公方執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_013.nss";

}

scene md02_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_011.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg018_公方執務室_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm24", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",0,true);

//◆童心·質素な僧衣＋編笠＋錫杖
	OnSE("se日常_建物_扉開く01",1000);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120010a07">
「哟，来化缘的吗？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆しゃらーん

	OnSE("se擬音_シリアス_錫杖鳴る", 1000);


	SetFwC("cg/fw/fw童心変装_大笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120020a09">
「我佛慈悲！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120030a07">
「什么啊!!」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120040a09">
「呼呼。
　茶茶丸大人，久疏问候啊。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120050a07">
「也没有很久吧。
　还有，快点将斗笠摘掉。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120060a09">
「喔……贫僧这实在无礼。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆編笠取る
	OnSE("se人体_動作_衣類脱ぐ01", 1000);

	StR(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStR(500,true);

	Wait(500);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120070a09">
「呵呼。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120080a07">
「砂锅登场。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120090a09">
「茶壶风格似乎不讨人喜欢。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120100a07">
「再好好钻研十年吧。
　说回来，有何贵干？　古河公方童心和尚。」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120110a09">
「你本来就是知道的吧？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120120a07">
「没有啊，完全不知道啊。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120130a09">
「真坏心眼。
　说明白吧，由贫僧……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120140a09">
「时机正好。
　有请返回普陀乐。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120150a07">
「我可是在镰仓防卫上疏忽，危及了大将领殿下
安全的笨蛋哟。
　放松警惕，还太早了吧？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120160a09">
「说不上谨慎不谨慎……幕府并无下达
那样的指令……
　说到底，不过是茶茶丸大人自己的想象。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120170a07">
「总之不会无罪释放的吧。
　我只是想省点麻烦而已哦。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120180a09">
「不不不。
　确实，贫僧有一些失态吧……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120190a09">
「奉刀参拜的时候，八幡宫发生了什么事，
以及事情的概要。连这些都没掌握，惩罚之类
也无从谈起。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120200a07">
「还没有？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120210a09">
「完全没有。
　大将领从八幡宫消失——是毫无疑问的事实。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120220a07">
「呼——」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120230a09">
「即使需要问罪茶茶丸大人，
也是事件明了后的事。
　如今为了稳定幕府，
万分需要大人的力量。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120240a07">
「稳定了之后就定罪处分吗？」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120250a09">
「哈哈哈。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120260a07">
「啊哈哈。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120270a07">
「一点也不有趣。」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120280a09">
「开玩笑的。
　追究些莫须有的罪名完全是无稽之谈……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120290a07">
「我没有罪吗？」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120300a09">
「当然。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120310a09">
「大人是武者。
　那么，武者被什么所杀害的话，只能说是
其本人的失策，不能归咎于他人的失败。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120320a07">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120330a09">
「真是的，大人也丑态尽露啊。
　想制霸天下，死时却尸骸无踪，如此
虎头蛇尾的一生。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120340a07">
「真是寡情薄意呢。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120350a09">
「……呼呣。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120360a07">
「什么？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120370a09">
「没什么。
　只是有点惊愕。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0120380a09">
「大人您为这样的事生气，真是做梦
也没有想到啊。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120390a07">
「……没有生气。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120400a09">
「哦呀。
　这是贫僧判断错了吗？真抱歉。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120410a07">
「这种事用不着道歉。
　要说的话就只有这些？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120420a09">
「能否请您回普陀乐呢？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120430a07">
「狮子吼和雷蝶就没办法吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120440a09">
「如此一说……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120450a07">
「他们也没那么笨吧。
　虽然是笨蛋。」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120460a09">
「虽能辨明事物的道理。
　但他们两者的脾气，都会选择和对立对手
正面冲突，除此之外没有他选。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120470a09">
「这实在有点棘手。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120480a07">
「说的不错嘛。
　老爷子在的时候，六波罗的缰绳实质
还是在你手上啊……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120490a07">
「如今，更不可能无法驾驭吧。
　取下头上的重石，不是更加容易操纵吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120500a09">
「喔，那太过夸奖了……
　像贫僧童心和尚，才没有如此才能。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0120510a09">
「斡旋于狮子吼大人和雷蝶大人之间明明
非常辛苦，大人失踪后议案积压，也没能
好好地处理。
　如此，幕府只有等着瓦解了——」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120520a09">
「为了天下万民！
　茶茶丸大人，恳请您助贫僧一臂之力！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120530a07">
「重要的是在狮子吼和雷蝶开始——
敌视<RUBY text="你">老前辈</RUBY>之前，
作为应对二者的缓冲素材所以想召回
最合适的人吧？」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120540a09">
「还没来茶水吗？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120550a07">
「不会有的。
　真是的，你这老头真会把人话当耳边风。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120560a09">
「茶茶丸大人……正是这样，拜托您。
　您这样避居于伊豆不是挺无趣的吗？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120570a07">
「才没有。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120580a09">
「在镰仓防卫的责任方面充分显示出自己
谨慎的态度，这样就足够了。
　贫僧游佐童心保证，
今后您不会被追究责任。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0120590a09">
「如果您觉得有需要，可立据。 」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120600a07">
「…………」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120610a09">
「第一点，关于租借……
　怎样？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120620a07">
「借你也可以。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120630a09">
「愿尽犬马之劳。
　贫僧打算作为茶茶丸大人的家臣为您效力。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120640a07">
「才不要……这么明显的腹黑家臣……
　哪来的斋藤道三啊……」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120650a09">
「被这么说还真遗憾。
　那么，请看看贫僧的诚意。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ばっ。しゃがむ
	OnSE("se人体_動作_一歩",1000);
	Move("@StR*", 500, @0, @50, DxlAuto, false);
	DeleteStR(200,true);
	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120660a07">
「……想干嘛？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120670a09">
「请允许贫僧舔舐您的脚。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120680a07">
「给我拿钱来啦!!」

{	StR(1000, @0, @50,"cg/st/st童心_通常_私服a.png");
	FadeStR(200,false);
	Move("@StR*", 500, @0, @-50, DxlAuto, false);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120690a09">
「唔呣。真是让人为难的大人啊。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120700a07">
「这家伙可以杀掉了吧……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120710a07">
「……嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120720a09">
「怎么了吗？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120730a07">
「童心和尚。
　这奇怪的东西是你带来的吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120740a09">
「哎呀？」

{	SoundPlay("@mbm09", 0, 1000, true);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120750a07">
「我可不记得有被<RUBY text="··">如此</RUBY>危险的家伙盯上。
　现在这个地方。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120760a09">
「……喔。」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120770a09">
「这是跟着来的吧。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120780a07">
「什么？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120790a09">
「就是前几天，在普陀乐<RUBY text="··">消遣</RUBY>的。
　把冈部家小姐作为菜肴。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120800a07">
「……那个。有听过汇报。
　以能舞台为借口，我记得其实玩的很愉快吧？」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120810a09">
「您有听说吗？
　哎呀，真难为情。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120820a07">
「偶尔也真的该难为情好吧，下流和尚。
　邦氏不是一副很受欺负的样子吗？」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120830a09">
「这是教育。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120840a07">
「虚伪。」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120850a09">
「呼呼呼……
　没办法啊，这样的恶趣味可是贫僧的工作。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120860a07">
「呃……是这个？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120870a09">
「比起单纯等待老鼠出动，倒不如用诱饵
引出再抓捕方为上策。
　冈部的残余党羽现在是隐忍慎重之时，
但我们可不允许就此放任。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120880a07">
「一开始的目的就是挑衅？」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120890a09">
「哈哈哈！
　贫僧想，这么做了后，
对狮子吼大人的辨析也有作用。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120900a07">
「没救了——
　那么，要怎样？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120910a09">
「也没有道理麻烦到茶茶丸大人。
　对吧……躲在天花板后的仁兄？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 4900, -240, 0, "cg/bg/bg018_公方執務室_01.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 300, @0, 286, Dxl2, false);
	Fade("絵背景100", 300, 1000, null, true);

	SetFwC("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120920a09">
「若不是贫僧的对手，你就太没劲了！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


//◆ずばー。天井を刺す
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);

	FadeStA(0,true);
	Delete("絵背景100");

	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef009_汎用下上軌道.jpg", false);
	CreateTextureSPadd("演出", 10000, Center, Middle, "cg/ef/ef009_汎用下上軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);
	OnSE("se人体_衝撃_瓦礫ぶつかる01",1000);
	Wait(200);
	OnSE("se戦闘_攻撃_キック02",1000);
	FadeDelete("演出", 500, true);
	WaitKey(1500);
	FadeDelete("黒幕１",1000,true);

	StR(1000, @0, @50,"cg/st/st童心_通常_私服a.png");
	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");

	SoundPlay("@mbgm24", 0, 1, true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120930a09">
「……」

{	FadeStL(300,false);
	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120940a07">
「逃了啊。」

{	FadeStR(300,false);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120950a09">
「早有应对吗……
　相当顽强的家伙。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120960a09">
「不过，要逃出这宅邸是没可能的。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120970a07">
「尽带些奇怪的麻烦事来。」

{	SetVolume("@mbgm*", 3000, 1000, null);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0120980a09">
「真的十分抱歉。
　这下，贫僧欠你两样人情了。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0120990a07">
「我可还没说要回镰仓哟。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121000a09">
「茶茶丸大人……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121010a07">
「再等等吧。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121020a09">
「呣？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121030a07">
「近期会回去。
　在看时机。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121040a09">
「所谓时机？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121050a07">
「这是我这边的事。
　好啦，不会说什么等两三个月的，放心。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121060a09">
「……明白了。
　在普陀乐静候佳音。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121070a07">
「好的。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121080a09">
「那么贫僧先告辞。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121090a07">
「回去吧回去吧。
　要撒盐了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すー。戸口開ける音

//	Move("@StR*", 1000, @50, @0, null, true);

	OnSE("se日常_建物_扉開く01",1000);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121100a09">
「茶茶丸大人。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121110a07">
「还有什么事吗？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121120a09">
「将才，是不能被毁灭迷惑的。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121130a07">
「……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121140a09">
「贫僧不懂。
　是什么让茶茶丸大人如此绝望……」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0121150a09">
「贫僧能明白的，
只有那双被毁灭所蚕食的双瞳。
　深深地……深深地。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0121160a09">
「……如此，会招致什么呢……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121170a07">
「那边那位和尚。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121180a09">
「唔呣……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121190a07">
「有个事想跟你说。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121200a09">
「有什么地方用得上贫僧的话都请说。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121210a07">
「会忽然变成妄想癖，有时候又拐弯抹角
进行宗教劝诱，还净说些非常莫名其妙的话，
总是滔滔不绝说些完全听不懂的语言。
有这种家伙在，该怎么办？」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121220a09">
「呼哈哈哈！
　就只有拿石头去扔他轰他走了！」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0121230a09">
「失礼了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//◆童心、去る
	Move("@StR*", 1000, @50, @0, null, false);
	DeleteStR(300,true);

	Wait(500);

	OnSE("se日常_建物_扉閉める01",1000);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121240a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121250a07">
「可恶的和尚。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0121260a07">
「我可没绝望。
　只是有点累而已……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_013.nss"