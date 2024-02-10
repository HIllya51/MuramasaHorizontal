//<continuation number="490">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_013.nss_MAIN
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
	#bg112_川沿いの道a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_014.nss";

}

scene md06_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_012.nss"


//◆川沿い。bg112

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	CreateSE("SEL01","se自然_水_流れる01_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	OnBG(100, "bg112_川沿いの道a_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);


	SoundPlay("@mbgm30", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……这里吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, false);


	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0130010a01">
「桥？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130020a00">
「嗯，残损后的桥体啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　桥面虽说并不是很宽，一旁流淌的河水却极其深。
　我立于其上，确认着事实。

　这座虽简陋但实用的木桥，曾经就架在此处了吧。
　现在两岸只剩下一些派不上用场的木块。

　昨晩，调解争吵的人们的时候……虽然想不起
详细细节，但似乎多次听闻桥这个字。
　把桥破坏了，诸如此类的事。

　一定是这件事。
　因为这座桥，
昨晚的人们显露出敌意而争吵起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130030e109">
「……嗯？
　喂，那不是昨天的醉鬼吗。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130040e110">
「真的呢。
　今天一早就带着女人啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我循声回头，看到两个大概是附近住民的男子。
　兴许是要去工作场所吧，都穿着工作服。

　虽然我没什么印象，但他们似乎见过我。
　
　……也就是说，是那次争吵的当事人之一？

　我让村正留在原地，向那两人走去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130050a00">
「早上好。
　昨晚给您添麻烦了。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130060e109">
「……今天似乎没喝醉呢。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130070e110">
「是吗？
　昨天这位小哥不也是
只有说话的时候还算规矩嘛。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130080a00">
「不，请放心。
　不会再有那么无礼的举动了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　话虽如此，但还没有想好要做什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130090a00">
「其实，有些事想要打听一下。
　方便占用一下您的时间吗？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130100e109">
「你是谁啊？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130110a00">
「失礼了。
　我在镰仓警察署长手下工作，
叫做凑斗景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　已经好久没有亲口做自我介绍了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130120e110">
「警察吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130130a00">
「也可以这么认为。
　现在……正好不当班。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130140e109">
「是警察的话，
就快对那些家伙采取点行动吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130150a00">
「那些家伙？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130160e109">
「就是那群难民！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　他用一种唾弃般的口吻，尖刻地说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130170a00">
「……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130180e109">
「从北方还有西方，接二连三地来到镰仓。
　就没其他地方可以去吗？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130190e110">
「因为在关东，
镰仓或许算是最好的避难所了。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130200e109">
「要来的话那也没办法……
　但是尽给我们这些原住民添麻烦！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130210e110">
「是啊。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130220e109">
「食物也减少了，水也被污染了。
　臭气熏天……还有很多身染疾病的家伙。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130230e110">
「我也听说过这些传言。
　有地方痢疾已经扩散开来了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130240a00">
「…………」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130250e109">
「可恶。
　真缺德！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　男子中的一人，声如洪钟。
　引来了诸如洗衣妇女、刚起床的青年等等四周
住民们的视线。

　但其中，少有谴责的意味。
　大都流露出赞同之色。

　因为人口的激增而造成生活环境的恶化，原住民们
都抱有强烈的不满……原来如此。
　公共机关如果有余力，倒是可以期待他们采取适当的
措施，但现在已经无法指望了。

　这真是，棘手的问题啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130260a00">
「话说回来，那座桥——」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130270e109">
「啊……
　这也是那些家伙的错。」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130280e109">
「明明是通往街上的桥。
　就因为被他们破坏了，在桥对面
工地干活的人，只能一直靠
下游的另一座桥渡河。」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130290e109">
「这不就要绕很大一个圈子吗。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130300e110">
「真是荒谬……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130310a00">
「是难民们破坏了这座桥吗？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130320e110">
「不像是刮风或者涨水弄坏的吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130330a00">
「的确。
　但是，有难民作案的证据吗？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130340e109">
「证据……没有。
　但是除了他们，还有谁会这么做啊。」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130350e109">
「他们肯定是看不惯我们总是抱怨，
所以把桥破坏了。
　而且难民们就住在河的对岸。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130360e110">
「虽然他们这群人也不是每一个人都觉得
只要没了桥就不会再听到抱怨了。
　但这已经是一座很老的桥了。这样的笨蛋
只要有一个，就能轻易让桥倒塌。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130370a00">
「…………」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130380e109">
「巡警，你好歹做点什么啊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130390a00">
「是。
　我会在确认事态后进行妥善处理的。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130400e110">
「妥善处理啊。
　官差的妥善处理可没什么好指望的。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130410e109">
「果然，还是要靠<RUBY text="？？？">地头蛇</RUBY>一伙人吗？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130420e110">
「这附近的巡视如果
能有些责任心就好了。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130430e109">
「不仅如此。
　建议把难民们全部都赶出去。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0130440e110">
「但是，你也听说过他们要收保护费的吧？
　每个月哪有那么多钱支付给他们啊。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0130450e109">
「也是啊……
　那些家伙，只会狗眼看人低。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　两人似乎都对我失去了兴趣，
抱怨着离开了。
　应该是朝下游那座桥的方向去了吧。

　相对的，村正走了过来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0130460a01">
「……想要做一下的事，
是说重建这座桥？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130470a00">
「略有不同。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0130480a01">
「那是什么？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0130490a00">
「目前是——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　去另一方的当事者处，听听他们的说法。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1500, 0, null);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("SE*", null);
	WaitKey(1500);

}

..//ジャンプ指定
//次ファイル　"md06_014.nss"