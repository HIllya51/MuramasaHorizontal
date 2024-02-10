//<continuation number="1450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_021.nss_MAIN
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
	#bg034_署長宅茶の間a_03a=true;
	#ev259_村正Ｈ_a=true;
	#ev259_村正Ｈ_b=true;
	#ev259_村正Ｈ_c=true;
	#ev259_村正Ｈ_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_022.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#md06_021=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md06_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

..//ジャンプ指定
//前ファイル　"md06_020.nss"


//◆署長宅

	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm33", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……重举酒杯。
　饮下毫不知味的酒。真是愚不可及。

　果然还是做不到。

　平息纷争之类的事也好，
　构筑平和之类的事也罢。

　我根本就无能为力。

　……早就是预料之中的事。

　好似偶然一梦。
　而现在如梦初醒。

　不过如此而已。

　剩下的便是现实。
　
　……我，终究什么都做不了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　想想还真可笑。

　杀人犯竟要无视自己的过去——
　不要争吵，要共存，真是说得好听。

　要何等自以为是才能道出如此豪言壮语。

　可惜并未得到上天的无视。
　退却伪装，原形毕露。

　伪圣人终以丑角的姿态失败退场。　

　可笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210020a01">
「主君……」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210030a00">
「…………」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210040a01">
「我认为你已做得很好。
　无需为此感到羞耻。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……羞耻。

　我为何不用感到羞耻。
　我这种人。

　夺走了多少——多少——宝贵的生命。
　其中甚至包括统大人和光，我本该守护的家人。
　
　身为人的耻辱。

　向全世界播撒灾难。
　明明有机会阻止——却没能做到。
　
　身为人的耻辱。

　然后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210050a00">
「当然耻辱。
　最应该感到耻辱的就是——」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210060a01">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210070a00">
「对所犯之罪……
　一个都没有遭到报应。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　没有按照法律受到制裁。
　类似赎罪、补偿之事，一件都没做。

　什么都没做，什么都做不了。
　逍遥法外地活着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210080a00">
「这就是耻辱。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210090a01">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210100a00">
「……为何活着……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210110a00">
「我，为何活着……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210120a01">
「…………」

//◆コミカル怒
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210130a01">
「……………………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210140a00">
「为什么……」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0210150a00">
「……我……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210160a01">
「呜……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210170a01">
「你这个。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210180a00">
「根本连活着的资格也没有……」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0210190a00">
「……活着……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210200a01">
「…………」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210210a01">
「——诶——」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	//状態定義
	OnBG(100, "bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0, true);

	//リコ背景抹消
	RecoIn();

	SoundPlay("@mbgm33", 0, 1000, true);
}
//========================================================

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆大フォント
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210220a01">
<FONT size="32">「喂!!」</Font>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//―――――――――――――――――――――――――――――

//◆糸放射
	SetVolume("@mbgm*", 1000, 0, null);


	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
//	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "zoom_01_00_0", true);

	WaitKey(500);

	CreateSE("SE01","se人体_衝撃_転倒03");
	CreatePlainEX("絵板写", 3990);
	Fade("絵板写", 0, 500, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵板写", 600, 0, 40, 0, 0, 1000, Dxl2, false);

	FadeDelete("絵背景20",300,true);

//◆ＥＶ：村正さんブッキレ。景明を拘束して踏む。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　变化来得太突然，太激烈。
　思维还来不及跟上，信息处理也有所滞后。

　……我被怎么了？
　丝——钢丝？

　村正……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵板写");

	CreateTextureEX("むらまさ覆", 3010, -235, -45, "cg/ev/resize/ev259_村正Ｈ_al.jpg");
	Fade("むらまさ覆", 1000, 1000, null, true);

	CreateTextureSP("むらまさ", 3000, @0, @0, "cg/ev/ev259_村正Ｈ_a.jpg");

	WaitKey(1000);

	SoundPlay("@mbgm05", 0, 1000, true);

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210230a01">
「啊，啊啊啊啊，真是的！」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210240a01">
「真是火大！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210250a00">
「喂。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210260a01">
「你这个人啊——！
　为什么会这么不知所措，这么无可奈何，
这么毫无办法啊！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210270a00">
「什、什么？
　不，先把这个束缚给……」

{	FwC("cg/fw/fw村正_驚きb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210280a01">
「呜噢噢噢——!!」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210290a00">
「冷静点，村正。
　……冷静点。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210300a01">
「不要。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　被讨厌了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210310a01">
「活着不好吗！
　即便什么也不能做。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210320a01">
「为什么连这种程度的事都
不能原谅自己？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210330a00">
「我……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210340a01">
「就算是蚯蚓、蝼蚁、水黾一类，除了　
呼吸、食泥、吸食体液外基本一无是处　
的生物，也能堂堂存活于世！
　所以你也大可活着！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210350a00">
「不，等一下。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210360a01">
「我在说话，闭嘴好好听着！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210370a00">
「但我并不这么认为。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210380a01">
「若觉得自己生存得毫无意义，
请反过来想想！
　仅仅是活着本身就已经极具
价值了！」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210390a01">
「所谓天道，不会做没有意义的事。
　你现在就这样顺应天意活着，
<RUBY text="····">这就够了</RUBY>！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210400a00">
「……那个……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210410a01">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　这是狡辩。
　无条件肯定现状，而对过去的事　
置之不理——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210420a00">
「……我犯了罪。
　这是无可辩驳的事实。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210430a00">
「所以，我……
　必须针对我的罪孽，承担起
责任……」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210440a01">
「好了好了，我知道我明白。
　自己所做的事，好好地亲自承担起　
全部的责任，这种人很伟大吧！」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210450a01">
「但这跟你是否会这样是两回事！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210460a00">
「……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210470a01">
「你认为自己有多厉害!?
　觉得是超越常人的英雄豪杰吗!?」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210480a00">
「并非……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210490a01">
「在这个世界上，无法担负沉重的责任
而选择逃避与遗忘却能活下去的人
数不胜数！　倘若照你的意思，这些人
都没有活下去的价值了吗!?」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210500a00">
「不……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210510a01">
「所以啊！
　不过都是些普通人而已！」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210520a01">
「人世间就是由普通人聚集而成。
　你难道无法认同，自己不过是其中的一员吗!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210530a00">
「…………」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210540a00">
「……可是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　抛下责任的人确实多如牛毛。
　但我所应承担的责任，是无法与这些人　
相提并论的——大量杀戮之罪。

　忘却这一切活下去。
　这种肤浅而卑劣的行为……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆コミカル怒
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210550a01">
「————」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210560a01">
「哎哎，好吧。知道了。
　我根本是在对牛弹琴。没办法。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210570a00">
「什么？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210580a01">
「哈啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸放射
//◆差分：村正さん足コキに移行

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
//	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "zoom_01_00_1", true);

	WaitKey(500);

	CreateTextureSP("むらまさ02", 3100, @0, @0, "cg/ev/ev259_村正Ｈ_b.jpg");

	Delete("むらまさ");
	FadeDelete("絵背景20",1500,true);


	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210590a00">
「……喂——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　钢丝再次闪现，锐利的感觉爬上我的皮肤。
　寒冷的触感在身上蔓延。

　衣服已被褪去，有这种感觉也无可厚非。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210600a01">
「然后……这样……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210610a00">
「行啦，等等。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　这只脚，是想要做什么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210620a01">
「母亲大人曾告知我，
这里……如果这么做的话……
　任何男人都会有所反应。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210630a00">
「……那只巨蚁……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　若无其事地教了些什么！

　男性部位被碰触，一阵凉意爬上背脊。
　身体一个哆嗦，无法抑制地战栗起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210640a01">
「哇啊……它动了。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210650a00">
「……害怕的话就别碰。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210660a01">
「哪、哪有？
　哼——唔嗯，太没出息了。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210670a01">
「这样做、这、这里应该就、就会
变、变成这、这样吗？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210680a00">
「你结结巴巴的在说什么呐？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　实际上醉了的不是我，而是她吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210690a01">
「等等。行、行了啦！
　总之，一定要让你明白！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210700a00">
「什么？」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210710a01">
「你根本就不是什么了不起的人。
　如果无法接受低贱的生存方式，
那我就把你变成低贱的人。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210720a01">
「成为我的玩物，这衣冠不整的身姿——
　咿呀!?　这玩意一颤一颤的!!」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210730a00">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210740a01">
「…………」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210750a01">
「呜。太难看了，主君！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210760a00">
「怎么看都是你在拼命逞强。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210770a01">
「你也只有现在还能说这种风凉话！
　男……男人的身体是无法忍耐住的吧。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210780a01">
「这样做的话，很快——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　村正的样子就如同潜水时陷入缺氧状态而呼吸混乱，
手上的动作随即重新开始起来。
　握住我分身的脚趾，笨拙地抽动着。

　动作生涩，毫无技术可言。
　但不知是偶然还是本能，力道控制得着实巧妙。

　粘膜所受的刺激恰如其分，以至于欲望处开始充血。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210790a01">
「咿呀!?
　为什么变得这么大！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210800a00">
「说这种不负责任的话会让我感到为难。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210810a01">
「这东西就该这样吗!?」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210820a00">
「啊……就是这样的。
　你觉得它应该变成什么样？」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210830a01">
「……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210840a01">
「…………」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210850a01">
「和我预想的一样！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210860a00">
（太逞强了……）

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210870a01">
「哇……还立起来。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210880a00">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210890a01">
「呼，呼呼呼！
　看、看啊，这玩意儿多有精神。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210900a00">
「什么看啊看啊的，显然比你这副
缺氧的样子要健康多了吧。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210910a01">
「这……这种事啊。
　不管你如何否定，如何提出质疑，
如何卑贱——」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210920a01">
「活着的人就给我好好活着！
　不要再说什么没有意义之类的话！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210930a00">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210940a01">
「觉得低贱的话，就以低贱的
方式生存好了！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210950a00">
「……村正。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210960a01">
「觉得自己是垃圾也好。
　不管是罪孽还是责任，承认自己没有　
能力去背负不就好了。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210970a01">
「我——就是要贬低你。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆差分：村正脱衣
	CreateSE("SE01","se人体_動作_抱く01");
	CreateTextureEX("むらまさ03", 3200, @0, @0, "cg/ev/ev259_村正Ｈ_c.jpg");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("むらまさ03", 1000, 1000, null, true);
	Delete("むらまさ02");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　村正将衣服解开。
　露出犹如与溶解了射干种子般的肌肤。

　以如此毫无防备的姿态，跨坐于我的身上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210980a00">
「等一下……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210990a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("むらまさ覆", 3200, -160, -60, "cg/ev/resize/ev259_村正Ｈ_cm.jpg");
	Move("むらまさ覆", 8000, -210, -200, DxlAuto, false);
	Fade("むらまさ覆", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　反射性地试图制止她，却没有得到回应。
　肉体与肉体，就这样一点点互相接触。

　到此——也就到此为止。
　只有接触的密度发生着微妙的变化，除此之外
没有任何实质进展。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211000a01">
「……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　微妙的连系煽起性感。
　触使我的某个部位也产生了反应——村正亦复如是。

　不知是哪里分泌出的粘液，把两人间的空隙牢牢黏合。

　但那并不是性技巧使然。
　不过是村正她——或许对未知事物的
恐惧而——感到犹豫所致，仅此而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("むらまさ覆弐", 3210, -160, -60, "cg/ev/resize/ev259_村正Ｈ_cl.jpg");
	Move("むらまさ覆弐", 8000, -235, -45, DxlAuto, false);
	Fade("むらまさ覆弐", 1000, 1000, null, false);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211010a00">
「已经够了……快停下。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211020a01">
「什、什么嘛。
　不喜欢？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211030a00">
「不是不喜欢，只是——」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211040a01">
「明明已经压倒过人家一次了。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211050a00">
「呜……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211060a01">
「做、做了那种事——
　却又半途而废！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211070a01">
「啊～真是的。一想起来
就生气！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211080a00">
「那时候是……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211090a01">
「吵死了，闭嘴！
　你——想这样做吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆差分：繋がる。

	CreateTextureEX("むらまさ04", 3300, @0, @0, "cg/ev/ev259_村正Ｈ_d.jpg");
	Fade("むらまさ04", 1000, 1000, null, true);
	Delete("むらまさ03");
	Delete("むらまさ覆*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　已经有所觉悟了吗？
　村正将体重一股脑地压在我身上。

　分身的顶端顺势探入蜜穴，被夹住——
　刺破。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211100a01">
「啊……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211110a01">
「……唔……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211120a00">
「笨蛋……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　我嘟哝着。
　从结合的部位清晰可见，滴下红色的液体。

　村正的肉体，重现为剑胄之前的身姿。
　若过去村正没有性交的经验——变成这样
也是理所当然的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211130a01">
「我不是笨蛋。
　你才是。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211140a00">
「像这样硬来难道不是笨蛋。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211150a01">
「才没有硬来……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211160a01">
「做——做这种事会心情舒畅吧。
　不用在意啦，好好享受这种暴行就好了哟。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211170a00">
「虽是这么说。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　村正太过无知。
　一味地忍住疼痛而扭动……
这与带来性快感之事相去甚远。

　本来就不该在尚未湿润时强行插入。
　过大的摩擦会导致疼痛，我也有所感受。

　如果照此下去，无论村正如何努力，我的分身
恐怕不久将会萎靡不勃，无法继续。
　当然，这样也无所谓……<k>但是…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211180a01">
「嘶……呜……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211190a00">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211200a01">
「啊……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211210a00">
「…………」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211220a00">
「村正。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211230a01">
「哎……？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211240a00">
「不用这么粗鲁。
　放松一点，速度放缓慢慢来。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211250a00">
「让它们轻柔地摩擦。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211260a01">
「这……这样……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　村正言听计从地改变了做法。
　虽然动作依旧笨拙，但疼痛却缓和了许多。

　女方性经验缺乏的时候，要先抑制　
双方的力道，否则无法共享鱼水之欢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211270a00">
「还有，不用摒住呼吸更好。
　轻轻浅浅地喘息即可。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211280a01">
「唔，嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　要忍耐疼痛，自然会摒住呼吸，但憋气的话
身体就会乏力。
　所以这样下去只会增加无谓的伤害。

　眼见情况变得稍事从容，我向两人的结合之处　
伸出了一只手。
　探索触碰她的阴蒂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211290a01">
「啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　村正的身体弹了起来。
　自己也未触摸过那里吗？

　未知的刺激可能近似于痛苦，但尽管如此，　
还是能够分散破处之痛吧。
　为了不让指甲碰疼这一部位，
我小心翼翼地轻轻爱抚着。

　村正的阴道突然收紧了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211300a01">
「唔，嗯……！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211310a00">
「不喜欢……？」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211320a01">
「不是不喜欢……
　不是不喜欢，只是……！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211330a01">
「……不用管我。
　只要你——」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211340a00">
「……是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　想起来。
　村正做这件事的缘由。

　不该用这种方式予以回应。

　我伸出双臂，阻止了村正腰部的动作。
　转而由我扭动起自己的身躯。

　钢丝已经失去了大半的束缚力。
　自然无法妨碍我。

　我一点点地深入探索。
　以寻求自身的享乐。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211350a01">
「哈啊——嗯，唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　撕心裂肺般的痛感迫使村正潸然泪下。
　湿润的瞳孔溢出泪滴。

　滴落在我的嘴角，我当做甘露将之舔舐。

　兴奋。
　凌辱之感高涨。

　不再压抑自己的情欲，不再让对方也得以享受。
　唯有不断追寻着涌起的欲望。　

　我专心沉浸于这种低贱的行为之中。

　向着界限迸发。
　直至极限。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211360a01">
「啊……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　黑色的东西。
　污秽之物，充斥内心。

　嗜虐成性。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("むらまさ覆", 3310, -500, -300, "cg/ev/resize/ev259_村正Ｈ_dl.jpg");
	Move("むらまさ覆", 10000, -550, -500, null, false);
	Fade("むらまさ覆", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
　——对。
　就是这样。

　有什么好迷惑的。
　有什么可烦恼的。

　我就是热衷于此事的男人。

　深知下贱之乐的人。

　用力一顶。
　坚强的女子落下眼泪。

　我咧开唇角微笑。

　愉悦。
　欣喜。
　心旷神怡。

　是啊。
　贯穿它。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("むらまさ覆", 1000, false);

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211370a01">
「主君————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　到达最顶峰。
　肉体与精神同时荣登极乐。

　完美的喜悦。
　在那个瞬间，我切实感受到了活着的意义。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
//◆フェードアウト
	CreateColorEXadd("白", 15000, "WHITE");
	Fade("白", 2000, 1000, null, true);

	WaitKey(500);

	ClearWaitAll(2000, 2000);

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　……然后。
　和村正一同在虚脱中瘫软于床。
　
　我真是无可救药。

　认为自己没有价值也没有存活的资格，
却还能恬不知耻地沉溺于贪图享乐之中——
　我就是这种人。

　绝望了。
　
　……何等的。这是何等的低贱。

　更何况。<k>
　一旦接受了，居然觉得其实也不过如此。

　毫无违和感。

　我想，或许我就是这种人吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211380a00">
「村正。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211390a01">
「……嗯……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211400a00">
「你，辛苦了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　耳朵被村正拉扯。
　心不在焉地听着她不满的低声抱怨。

　真是的……从没听说过这种鼓舞人心的方式。
　笨拙也该有个限度。

　但是。
　
　
　————第一次。

　对于这份笨拙。
  感到爱怜。

　这拟态肉身的伴侣。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211410a00">
「村正……」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211420a01">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211430a00">
「能和我在一起吗？」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211440a01">
「……………………」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211450a01">
「…………嗯…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　得以片刻安宁。
　自杀害光以来——不，自杀害养母以来，
久别的宁静。

　臂弯中的温度是我贵重的宝物。

　曾渴求村正钢铁一般的冰冷。
　而今却与之相反，我渴望着来自同一个人的
肉体的温暖。

　……仔细想来真是没救了。
　
　这样自嘲着。

　睡意袭来。

　我在温柔的泥泞中沉沦。
　两年以来，久违地陷入熟睡。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(1000, 0);
	}
//============================================


}

..//ジャンプ指定
//次ファイル　"md06_022.nss"