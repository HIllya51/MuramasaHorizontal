//<continuation number="480">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_013.nss_MAIN
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
	#bg100_天守閣_03=true;
	#bg098_堀越御所内廊下_03=true;
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_014.nss";

}

scene md04_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_012.nss"


//◆夜
//◆普陀楽

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg100_天守閣_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm20", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　总之普陀乐城暂时还在。
　进驻军在日暮时分停止了攻击，撤回到海岸方面。

　堀越领众的幕僚团虽然提出了追击的建议，不过那
恐怕只是出于<RUBY text="····">激励士气</RUBY>的目的，实际上没人认为我军
还有余力追击。
　守卫藤泽口的部队死伤超过了一成。

　只能说是损失惨重。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	Wait(500);
	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130010a07">
「……？
　怎么了，哥哥？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130020a00">
「没什么……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我突然停下脚步。
　茶茶丸诧异地询问我。

　我的目光被外面慌乱的人群所吸引。

　躺在担架上的负伤者。
　或许是等不及被搬送，失去一条腿的士兵被战友背着
前往医疗所。

　担架搬运着<RUBY text="·······">一动不动的物体</RUBY>。
　被扔在路边，已经不再动弹的物体。他被丢弃在那里，
没有人注意到，或许其实大家都心知肚明……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130030a00">
「死了啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我说出了毋庸置疑的事实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130040a00">
「有尸臭。
　到处都是。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130050a00">
「城里的空气沉淀着死的味道。
　很熟悉。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130060a00">
「好想吐……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130070a07">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　茶茶丸露出了微笑。

　带着少女味十足的微笑，在我耳边低语道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130080a07">
「但是，还没有结束。
　还有更多人会死去。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130090a07">
「不断死去。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130100a07">
「……最后，<RUBY text="···">全死光</RUBY>。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆評議の間


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
	Wait(500);

//雰囲気的にここには常闇以外は立ち絵出さない？

	SetFwC("cg/fw/fw童心_沈思.png");

//嶋：修正（模様）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130120a09">
「小弓御所似乎被攻陷了。
　刚才来了急报。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130130a08">
「……是吗。」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130140a08">
「童心大人，非常抱歉。
　身为小弓的公方，吾向您道歉。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130150a09">
「哎呀哎呀，别道歉啊。
　小弓的事无可奈何。因为雷蝶大人在普陀乐
奋战啊。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130160a07">
「被进驻军占了先机的话小弓就会迅速陷落，
这些我们不是早就知道了吗？
　那里易攻不易守。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130170a09">
「是啊是啊。
　雷蝶大人不必挂心。现在必须集中精力对付
眼前的敌人。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130180a08">
「……嗯……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130190a07">
「童心和尚，狮子吼有联络吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130200a09">
「没有。
　敌人的信号干扰在东北方向尤其严重。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130210a07">
「是吗……
　不管了。反正他应该差不多进篠川领地了吧。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130220a09">
「还有两天……
　不，还得撑三天。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130230a07">
「三天实在够呛啊。
　双重意义上。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130240a08">
「狮子吼的援军三天能赶来吗？
　普陀乐的守卫还能撑三天吗？」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130250a08">
「……是这样吗？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130260a07">
「嗯。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130270a08">
「是啊……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130280a09">
「大船口的小弓、藤泽口的堀越，两御领众的
情况怎么样？」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130290a08">
「不怎么乐观。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130300a07">
「我这也是。
　今天一天被打得落花流水。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130310a07">
「能调一部分预备队吗？
　不然明天就撑不住了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130320a09">
「贫僧明白了。
　回头贫僧会安排的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼーん。爆撃音
	OnSE("se戦闘_破壊_爆発02", 1000);

	CreatePlainEX("絵板写", 15000);
	Fade("絵板写", 0, 1000, null, true);

	Shake("絵板写", 1000, 0, 3, 0, 0, 1000, DxlAuto, true);

	Delete("絵板写");

	Wait(300);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130330a07">
「…………
　陆军虽然撤退了，空中轰炸看样子打算
炸个通宵啊。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130340a09">
「就算黑灯瞎火地乱丢炸弹，朝着城中心丢
下去总会打着什么的。
　尽管不期待有什么直接的战果，光是妨碍
我们休息，意义就足够了。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130350a07">
「真麻烦。
　稍微放点水啊。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130360a08">
「不如你去对他们说说？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130370a07">
「你让我去求啊。
　如果他们能同意的话，我们从一开始
就不会打起来了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130380a09">
「呵呵……说得对说得对。
　贫僧有个更好的计策能让情况好转，各位愿意
听听吗？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130390a08">
「是什么？」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130400a09">
「没什么大不了。
　只是不想打不还手而已。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130410a07">
「…………那最好。
　但是，派谁去？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130420a07">
「堀越领众没那么有余裕。
　预备队吗？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130430a09">
「不不。
　预备队必须慎重使用。」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130440a09">
「有更加合适的人选。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130450a07">
「……哦。是啊。
　是有。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130460a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStL(500, true);
	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　茶茶丸看向她身后的我——不，是我身后的方向。
　我也有所预感般地，同时将视线投向那处。

　……无音又无风。
　那男人不知何时便伫立在那里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130470a09">
「能交给你吗，常暗斋？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0130480b37">
「当然可以。
　下官马上动身。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆常闇
//◆すっと去る
	SetBlur("@StL*", true, 1, 50, 50, false);
	Move("@StL*", 200, @-50, @0, Axl2, false);
	DeleteStL(200, false);


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_014.nss"