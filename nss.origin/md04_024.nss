//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_024.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_02=true;
	#ev912_荒覇吐竜気砲アップ_a=true;
	#ev806_戦争絵シリーズその４_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_025.nss";

}

scene md04_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_023vs.nss"


//◆藤沢口·夕

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="····">上空战况</RUBY>发生了戏剧性的变化。

　无法抵挡攻城军的强势攻击，即将被攻入城内的时候，
东北方向的上空出现一只飞行舰……
　一瞬便荡平了出击迎战的进驻军龙骑兵，来到普陀
乐上空。

　进驻军附近的飞行舰团被这异样的压力所震慑，渐渐
后退。
　要反击要塞级战舰是不可能的。大概是打算先观察一
下情况吧，它们由龙骑兵掩护着返回舰首。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240010a07">
「哈……哈哈！
　来了啊，狮子吼！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240020a07">
「就凭一艘飞行舰。
　真是乱来！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240030a00">
「那艘船是……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240040a07">
「摩天蛟。
　那可是在筱川开发，
归六波罗所有的唯一一只大型飞行舰。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240050a07">
「跟要塞级比起来毫不逊色。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　这飞船确实了不起。
　即便只是远远望去，也知道其设计出众，
并非只是体型庞大而已。

　恐怕是当今世界最强的飞行舰之一吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240060a00">
（但，除此之外——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　飞舰所搭载的骑兵，其战斗力也异常强大。

　方才的空战。
　……由于是上空战斗而无法详细得知。但那属于<RUBY text="··">狙击</RUBY>。

　载于摩天蛟的骑兵以远距离射击将敌骑击坠。
　那装载枪炮并非——被普遍认为最有希望作为下一代
<RUBY text="ＡＤＳＡ">对武者用射击兵器</RUBY>的<RUBY text="ＨＶＡＰ">高速彻甲弹</RUBY>。


　而且精度和威力也太高了。
　那是别的东西。更新，更可怕的……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240070a00">
（那是——）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆江ノ島の荒覇吐

	EfRecoIn1(18000,600);

	CreateTextureEX("絵回想900", 2001, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Fade("絵回想900", 0, 1000, null, true);

	
	EfRecoIn2(300);
	
	WaitKey(1500);
	
//◆発振砲
//◆戻り

	EfRecoOut1(300);
	
	Delete("絵回想*");

	CreateTextureSP("砲", 15000, @0, @0, "cg/ev/ev806_戦争絵シリーズその４_a.jpg");


	EfRecoOut2(600,true);

	Wait(500);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240080a07">
「振动炮。
　骑体是零零式龙骑兵。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　像是是看穿了我的想法般，茶茶丸补充说明道。
　然后又加上一句。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240090a07">
「这宣告着英雄时代的终结。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240100a00">
「宣告终结？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240110a07">
「没错。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240120a07">
「战场是英雄们的圣域。
　与敌骑挥剑相向、激烈交锋、力量与技艺相
较量，最终只有打倒对手的勇者才能紧握胜利。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240130a07">
「但，以后将不再是这样……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　茶茶丸手指指向天空。
　那里，战斗再次展开。

　不，或许将其称之为战斗并不适合。
　筱川军的零零式紧逼进驻军殿军的剩余龙骑兵。
完全不需靠近敌骑，从远方单方面攻击，便能将其击落。

　与其说是战斗，这更像是狩猎。
　更准确地说，那是游猎。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240140a07">
「不需要力量、技艺以及勇气。
　从远到看不清敌人面孔的地方瞄准并射击
就行。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240150a07">
「……没有英雄的出场机会。
　即使将来战场上英雄出现了，也只会成为
杂兵的饵食而已。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240160a07">
「因为零零式——
　凌驾于真打之上的数打终于诞生了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("砲",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　惨烈的景象。

　拔剑、提枪、英勇挺进的大英帝国骑士们——甚至连
一次反击都无法实现。
　在嘲笑般的狙击下，轻而易举便被打倒，徒劳地死去。

　那一瞬间，我并非与救我于水火的友军，而是与身为
敌方的他们共鸣了。
　共同感受被时代的浪潮所舍弃的人的悲哀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240170a00">
「时代改变了吗？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240180a07">
「联盟军也在不断改良高速彻甲弹。
　不久将用于实战。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240190a07">
「远距离相互射击将成为战争的全部。
　剑戟艺术将从战场上消失。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240200a00">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240210a07">
「在那样的时代，神话无法成立。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240220a07">
「英雄不存在的话，也就没有魔王。
　也就没有让神爬出来的余地。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240230a07">
「所以，趁着现在干吧，哥哥。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0240240a00">
「呼唤神……吗？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240250a07">
「结束这古老的时代。
　创造<RUBY text="·····">最后的神话</RUBY>。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0240260a07">
「反正还是抓紧的好……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　城外的进驻军也开始撤退。

　开战至今他们的攻势以空战较为优越，也就是空中
轰炸支援要占很大一部分。
　现在失去如此优势，自然要重新考虑作战方式。

　总算能争取到一点时间。
　于我们所必要的，足够拖延到银星号觉醒的时间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_025.nss"