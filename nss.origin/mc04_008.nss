//<continuation number="1120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_008.nss_MAIN
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

	$GameName = "mc04_009.nss";

}

scene mc04_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_007vs.nss"

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm28",0,1000,true);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/絵背景20", 10, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	CreateTextureSP("Ｃ/絵背景30", 15, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	Zoom("Ｃ/絵背景20", 0, 990, 990, null, true);
	Zoom("Ｃ/絵背景30", 0, 985, 985, null, true);

	CreatePlainSP("絵板写", 20000);

	CreateTextureSP("Ｃ/絵立", 500, Center, InBottom, "cg/st/st花枝_通常_私服.png");
	Move("Ｃ/絵立", 0, @0, @-140, null, true);
	SetVertex("Ｃ/絵立", center, bottom);
	Zoom("Ｃ/絵立", 0, 500, 500, null, true);

	Request("Ｃ/*", Smoothing);
	Delete("上背景");

	FadeDelete("絵板写", 300, true);

	SetFwL("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080010a03">
「……」


{	FwL("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080020b18">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateSE("はやあるき","se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("はやあるき",0,1000,0,2000,null,false);

	MoveCamera("Ｃ", 30000, @0, @0, @500, null, false);

	CreateColorEX("絵色黒", 19900, "#000000");


	SetFwL("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080030a03">
「<RUBY text="Ｌｏｎｇ　ｔｉｍｅ　ｎｏ　ｓｅｅ，ｍｙ　ｓｉｓｔｅｒ">好久不见啊，我可爱的妹妹</RUBY>。
　<RUBY text="Ｈｏｗ　ａｒｅ　ｙｏｕ">你还好吗</RUBY>——」
{
	WaitKey(2800);
	SetVolume("はやあるき", 0, 0, null);
	SetVolume("@mbgm28", 0, 1, null);
	OnSE("se人体_衝撃_転倒05", 1000);

	CreatePlainSP("絵板写", 10000);
	Shake("絵板写", 100, 0, 20, 0, 0, 1000, null, false);
	Fade("絵色黒", 100, 1000, null, true);}

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//―――――――――――――――――――――――――――――

//◆↑台詞途中で香奈枝転倒
	WaitKey(500);

	Delete("絵背景30");
	Delete("絵板写");
	Delete("Ｃ");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	StL(1000, @0, @0,"cg/st/st花枝_通常_私服.png");
	FadeStL(0,true);

	CreatePlainEX("絵板写", 5000);
	FadeDelete("絵色黒", 1000, true);

	OnSE("se擬音_コミカル_頭ぶつける", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, false);

	SetFwC("cg/fw/fw花枝_微笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080040b18">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se擬音_コミカル_グリグリ", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, false);

	SetVolume("@mbgm*", 500, 1000, null);

	SetFwC("cg/fw/fw香奈枝_凹む.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
{SetComic(@0,@0,12);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080050a03">
「……那个……
　为什么我和血肉相连的妹妹感动地再会的瞬间
我会被绳子绊倒而且脑袋还被踩在脚下啊……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw花枝_野心.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080060b18">
「子弹擦着耳朵过去了。
　烫伤了。头发也断了一些。你还有什么抱怨
吗，混蛋！」


//◆ここのボイス、「正確に」と「狙います」の間に
//◆小声で「頭を」と入れる
{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080070a03">
「对不起。
　下次我会再瞄准一些的。」


</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ぐりぐり
	OnSE("se擬音_コミカル_グリグリ", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, false);

	SetFwC("cg/fw/fw香奈枝_ショックb.png");

	SetComic(@0,@0,2);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080080a03">
「脚跟为什么更用力了啊！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw花枝_罵倒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080090b18">
「刚才，『瞄准』和『一些』之间，
好像听到了什么啊！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080100a03">
「不是幻听吗？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080110b18">
「神知道不是那样。」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080120a03">
「呜呜，妹妹竟然不相信我。太可悲了。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080130b18">
「这种假哭让不信任度提高了百分之五十。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080140a03">
「先不管这个，你是不是该把脚挪开了？
　因为其实我不太喜欢用脸摩擦地板。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080150b18">
「在那之前，我有件事问你。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080160a03">
「不能在之后吗？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080170b18">
「不行。
　根据你的回答，我可能就这样弄断你的脖子。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080180a03">
「…………」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080190a03">
「什么事？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080200b18">
「雄飞君是你杀的吗？」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080210a03">
「————」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080220a03">
「你这样问，是认真的？」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080230b18">
「…………<?>
{Wait(300);}
……<?>
{Wait(300);}
对不起。
　我只是问问看。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆香奈枝起き
	Delete("絵板写");

	SetVolume("@mbgm*", 2000, 0, null);

	StR(1000,@0,@30,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	Move("@StR*", 300, @0, @-30, Dxl1, true);
	OnSE("se人体_動作_手払う02", 1000);

	SetFwC("cg/fw/fw香奈枝_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080240a03">
「呼。
　真是过分的妹妹，我头发都沾上灰了。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080250b18">
「你知道雄飞君死了啊。」


{	SoundPlay("@mbgm18",0,1000,true);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080260a03">
「嗯。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080270b18">
「犯人呢？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080280a03">
「……」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080290b18">
「看来你知道。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080300a03">
「这件事，能交给我处理吗？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080310b18">
「你打算一个人解决？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080320a03">
「…………嗯。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080330b18">
「我是他的未婚妻。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080340a03">
「即使如此。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080350b18">
「…………
　之后能向我解释吗？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080360a03">
「这个啊……」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080370b18">
「……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080380b18">
「竟然想搪塞我。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080390a03">
「对不起。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆嘆息
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080400b18">
「…………」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080410b18">
「那，你回来做什么？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080420a03">
「为了在可爱的妹妹陷入困境时华丽地登场。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080430b18">
「……原来目的是华丽地登场啊。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080440a03">
「顺便也会来救妹妹的。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080450b18">
「你这次是怎么了？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080460a03">
「难以置信？」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080470b18">
「当然难以置信。
　至今为止你都没有多事来插手，
一直袖手旁观吧。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080480a03">
「那是因为我一直觉得这样最好。
　我也很有兴趣，
你会怎样去处理<RUBY text="····">那个男人</RUBY>。」



{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080490b18">
「那，为什么现在来？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080500a03">
「我看到了如今的形势。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080510b18">
「形势？
　————啊。原来如此。」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080520b18">
「杀死狮子吼，
你想要这样避免和进驻军开战吗？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080530a03">
「确实如此。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080540b18">
「虽然这确实是有效的手段。
　……你这样打算的话，就交给我吧。」



{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080550b18">
「我会让狮子吼再活三年。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080560a03">
「让那个<RUBY text="Ｑｕａｒｔｅｒ">洋人的孙子</RUBY>活下来，
　会增加很多不必要的牺牲啊？」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080570b18">
「不过在三年之后，我会全部清算。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080580a03">
「全部？」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080590b18">
「大鸟。
　幕府。
　关东。
　大和。」


//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080600b18">
「大陆。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080610a03">
「…………」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080620b18">
「你不信？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080630a03">
「如果不信，姐姐我就不会这样惊讶了。」



{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080640b18">
「今天你先回去吧。
　刚才狮子吼把外面的武者叫回来了，你们最
好小心避开他们。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080650a03">
「那边不要紧吧。
　纱代守着大门那边呢。在我杀了狮子吼之前
没人能通过那里。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080660b18">
「……你听我说话了吗？
　解决狮子吼的事，交给我。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080670a03">
「提问。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080680b18">
「什么事？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080690a03">
「你不介意和邦氏殿下结婚吗？」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080700b18">
「————」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080710b18">
「……殿下不是坏人。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080720a03">
「这是拒绝交往时的惯例台词呢。」


{	FwC("cg/fw/fw花枝_罵倒.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080730b18">
「吵死了。
　本来，我生在大鸟这种家庭中，能和喜欢的
人结婚才奇怪啊。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080740a03">
「政治婚姻是贵族的义务啊～」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080750b18">
「是呀……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080760a03">
「不过，我做过一次梦呢。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080770b18">
「梦？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080780a03">
「虽然是政治婚姻。虽然是父母决定的事。
　即使如此，妹妹还是能和喜欢的人结合，
变得幸福……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080790a03">
「这样的梦。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080800b18">
「…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080810a03">
「人类在得而复失的时候，会
变得最贪婪吧。」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080820b18">
「……那要我怎么办呢。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080830a03">
「能不能不要妥协，以后找一个政治上过得去，
同时又有爱情的结婚对象呢？」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080840b18">
「别做梦了。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080850a03">
「以你的奸邪计谋，这种事很容易。」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080860b18">
「你的保证一点也不可信。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080870a03">
「来吧，为了妹妹未来的恋爱。
　我就像奔马一样，去把碍事的男人踢死吧。」



{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080880b18">
「……你，这样做真的好吗？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080890a03">
「什么事？」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080900b18">
「因为。
　狮子吼，是你的——」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080910a03">
「嗯。
　<RUBY text="·····">正因为如此</RUBY>。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080920a03">
「我想要亲手做个了结。
　对不起，花枝。这才是最重要的理由。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080930a03">
「我不想把那个男人让给你。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080940b18">
「…………」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080950a03">
「如果没有正式的理由，
我本来打算一直忍耐的。
　现在有了啊，<RUBY text="这个">理由</RUBY>。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080960a03">
「现在杀了那个男人，能够拯救大和很多人的
性命。
　并且，现在能杀那个男人的只有我。
你做不到。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080970b18">
「……姐姐……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080980a03">
「所以，我就不交给你去做了。
　明白吗，花枝？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080990a03">
「不能妨碍姐姐的<RUBY text="··">享受</RUBY>哦。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081000b18">
「…………
　如果这是别人说出的话，我就该说别这样拙
劣地为我着想了。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081010b18">
「我不会说什么了。
　姐姐是<RUBY text="··">认真</RUBY>的。仅此而已。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081020a03">
「ＹＥＳ。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081030b18">
「『精神状态不正常的人』这种说法，现在我
要用在你身上。」



{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081040a03">
「由你来说出口，我会很郁闷啊……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081050b18">
「连替父亲报仇的事，你也要独占吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081060a03">
「妹妹的就是姐姐的。
　姐姐的还是姐姐的。」


//◆長々と嘆息
{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081070b18">
「…………」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081080b18">
「狮子吼刚才出去迎击你了。
　大概是去了大厅吧。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081090a03">
「哎呀……我是从那边来的啊。
　是在哪里走岔了吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081100a03">
「看来我和那个男人真是无缘啊。」


{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0081110a06">
「如果真的无缘，那会很幸运吧。
　……可惜，我们早已相遇了。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081120a03">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"mc04_009.nss"