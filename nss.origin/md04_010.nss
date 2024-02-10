//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_010.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_01=true;
	#bg105_城門付近内側_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_011.nss";

}

scene md04_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_009.nss"

//◆藤沢口
//◆交戦中

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);
	CreateSE("SE銃撃戦", "se背景_ガヤ_戦闘_空爆_L");
	MusicStart("SE銃撃戦", 2000, 500, 0, 1000, null,true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　蜂拥至藤泽的攻城军十分忠实于常规战法。
　首先利用远距离炮击和龙骑兵进行空袭，削弱防御火
力后派出装甲部队。

　但另一边则是自命为大和战争史上首屈一指的普陀乐
城塞。
　趁轰炸的间隙重整军势，利用堡垒的炮击使敌人身陷
交叉火力之中，从而抑制敌军前进。

　随着时间流逝而愈加激烈的攻防拉锯战仍在持续。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg105
	SetVolume("SE銃撃戦", 2000, 200, null);

	CreateTextureEX("絵背景100", 1000, @0, @0, "cg/bg/bg105_城門付近内側_01.jpg");
	Fade("絵背景100", 1000, 1000, null, true);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100010a00">
「……堀越领众表现不错嘛。」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100020a07">
「你觉得不错吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100030a00">
「看不出是超过六年没参加实战的军队。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100040a07">
「啊，那是当然。
　在大战结束的六年内，他们可没闲着。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100050a00">
「……是吗。
　是因为有过几次叛乱，所以自然就有镇压
经验了吗？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100060a07">
「跟这也有一定关系。
　只是硬要说的话，其实正相反。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100070a00">
「相反……？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100080a07">
「反抗上一代堀越公方被关监狱，
被流放的人里以尉级军官居多。
　是我干掉上一代后将他们召集起来的。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100090a07">
「对他们来说，已经不是第一次参加这种以大军
为对手的绝望战斗了。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100100a00">
「…………原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　如果由这群上过修罗场的中尉大尉在最前线担任指挥，
自然就不会让士兵产生动摇。
　下级指挥官的资质如何会从士兵身上反映出来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100110a00">
「但是——虽然表现很好……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我用无视身分差别的口吻继续说道。
　周围自然还有其他幕僚，但战场的交响曲让他们听不
清，就算听清楚了，这种情形也由不得他们分神追究。
所以也不会在意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100120a00">
「上空情况不妙啊。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100130a07">
「嗯……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100140a00">
「照这样下去，我们的空战兵力会全灭的。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100150a07">
「完全正确。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　她早就想到了吧。
　茶茶丸烦恼地挠着额角。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100160a07">
「现在这情况没有办法解决啊！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100170a00">
「完全没办法吗？」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100180a07">
「只要<RUBY text="··">那个</RUBY>还在就无计可施啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 5000, @0, @0, "cg/ev/ev805_戦争絵シリーズその３_b.jpg");
	Fade("絵背景200", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　茶茶丸说着指向盘踞高空的飞行舰。

　那并不是单纯的飞艇或单纯的军用飞行舰。
　而是世界最大的飞船。

　要塞级的重飞行舰。
　与那巨大的体积成比例，弹药装载量也是最大
的，同时兼有最强大的龙骑兵航空母舰机能。

　简直就是空中要塞。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100190a07">
「因为那个担任了基地的角色，敌人的龙骑兵
就可以保有高度优势而不断进攻。
　即使我们打退再多，敌人都没完没了。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100200a07">
「一旦想集中战力<RUBY text="··">攻陷</RUBY>它的话，
那些隐形龙骑兵就会出来阻挠。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100210a00">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100220a00">
「真的是无计可施了啊。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100230a07">
「是啊。
　在现代战争中，反应迟钝可是致命的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100240a00">
「航空战的损伤比例大约一比四吗？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100250a07">
「或许要更糟糕。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100260a00">
「…………
　可能这称不上对策。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100270a07">
「啊？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100280a00">
「将我们的龙骑兵全部撤回怎么样？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100290a07">
「……放弃不利的战斗来保全航空战力？
　这倒不失为一个选择。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100300a07">
「但这样一来，这条防线就保不住了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100310a00">
「空中的<RUBY text="···">大家伙</RUBY>不光是龙骑兵母舰，
而且还是轰炸舰吧？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100320a07">
「嗯。
　我们撤回龙骑兵的话，他们没理由不轰炸的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　有种战术叫轰炸强袭。
　用护卫龙骑兵保护周身，让飞行舰降到低空，对敌阵
进行高精度的轰炸。

　成功的话战果显赫，但是飞行舰被敌军龙骑兵攻击或
是地面的对空射击击沉的危险也很大。
　对方要实行这作战也需要决心。

　我们撤回龙骑兵的话，敌人实行轰炸强袭的危险性
就会降低。
　我理解茶茶丸的顾虑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100330a00">
「没错。
　但是，这次是有<RUBY text="··">理由</RUBY>的。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100340a07">
「……哎？　什么理由？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100350a00">
「你忘了吗。
　<RUBY text="他们">进驻军</RUBY>的目的是什么？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100360a00">
「他们明明军事力量强大，却不急着开战，还
耗费了六年的时间，是为什么？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100370a07">
「————」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100380a07">
「啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景200", 1000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　堀越公方啪地用手掌拍了下自己的额头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100390a07">
「……不好。
　脑子都变成战争笨蛋了。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100400a00">
「是的。
　他们在考虑赢得战争之后的事。」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0100410a00">
「在考虑如何才能不与市民为敌，
在市民的支持下进行统治。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100420a07">
「……普陀乐中心部先不说，轰炸边缘地区的话
危害到周边地域的可能性很高。
　军队只要撤回就能避免危害，但是……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100430a07">
「土地是挪不开的。
　这藤泽口虽说是在普陀乐边缘，但相对来讲
挺接近市区。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100440a00">
「虽然居民大概都被疏散避难去了……
　但是应该有没来得及逃跑的，而且尚未疏散
的地区可能也会被波及，而就算破坏的是无人
区也会给市民留下不好的印象。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100450a00">
「这会给战后的统治带来不便。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100460a07">
「这样一来，他们就不会进行轰炸强袭。
　至少在他们自己处于压倒性优势下，用别的
手段能赢的时候不会。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100470a00">
「嗯。
　说到底这场空战的优劣很明显。想轰炸强袭
的话早就付诸行动了。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100480a07">
「对。
　……啧，我脑子反应太慢。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100490a07">
「这一慢白死了多少人啊！」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100500a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100510a07">
「他们可是宝贵的战斗力。从现在开始也要珍惜。
　谢谢你，哥哥。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100520a00">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　茶茶丸召集幕僚，简单地下了命令。
　领命的一方最初很惊讶，但似乎马上就理解了其含义，
连忙四散去落实命令。

　通信兵的喊声与四处奔波的传令兵的脚步声，让周围
的喧嚣更甚一层。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100530a07">
「但是不管怎样，撤回龙骑兵我们很难办啊。
　就算飞行舰不轰炸，爆装龙骑兵也会趁机
大闹一番吧。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100540a00">
「保存航空战力更重要吧。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100550a07">
「这是没错。
　之后得注意的是……
空投袭击吗。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100560a00">
「陆战用龙骑兵吗？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100570a07">
「嗯。我不认为高射炮能阻止那些空投猎
兵的入侵。
　必须让撤回的龙骑兵备战。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100580a00">
「这战斗也很不利……
　但总损伤比不至于达到一比四。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100590a07">
「自家地盘上打架总不会吃亏的。
　一点不利算不了什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆藤沢口の戦場
//◆ぼーんぼーん
	DeleteStA(1000,false);
	FadeDelete("絵背景100",1000,true);
	MusicStart("SE銃撃戦", 0, 1000, 0, 1000, null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　在我与茶茶丸对话期间，战况仍在不断发展。

　枪火交织，刀剑碰撞——
　生命逝去。

　不停地逝去。
　无尽地逝去。

　生命的价值如同草芥。
　无论谁高喊着想否定这一观点，在生命化为尘土
的事实面前都是无力的。

　这里是战场。
　是名为战场的世界。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1500, 0, null);
	SetVolume("@OnSE*", 1500, 0, null);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_011.nss"