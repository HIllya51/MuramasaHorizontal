//<continuation number="450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_008.nss_MAIN
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
	#bg007_若宮大路a_01=true;
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_009.nss";

}

scene md04_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_007.nss"


//◆鎌倉市街

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);
	SetNwC("cg/fw/nwＧＨＱ広報官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆女性
//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080010e001">
《镰仓的诸位市民。
　我们进驻军完全没有加害诸位的意图。》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080020e001">
《我们是来解放你们的。》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080030e001">
《六波罗幕府不是国际统一共荣联盟承认的正
当政府。
　他们只是依靠军事力支配你们、折磨你们的
非法强盗集团。》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080040e001">
《我们大和进驻军将铲除六波罗，为你们夺回
正当的权益……》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080050e001">
《诸位市民，请遵循巡逻士兵的指示。
　请减少外出，在自宅、工作场所、最近的
商店等地稍加等待。》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080060e001">
《外出则有可能被卷入战火。
　请减少外出。》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080070e001">
《若能得到诸位市民的鼎力协助，进驻军必
会确保镰仓市的安全。
　与六波罗的战斗只会在普陀乐城周边地带
进行，并且在短时间内结束。》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080080e001">
《请诸位暂时忍耐。
　希望各位市民鼎力相助。》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080090e001">
《如需食物或其它生活必需品，请向巡逻的
士兵索要。
　他们会分配给大家所必需的分量……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆建朝寺

	CreateColorEX("黒幕１", 3000, "#000000");
	Fade("黒幕１", 1500, 1000, null, true);

	Delete("@text0010");

	OnBG(100, "bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(0, true);
	Wait(500);
	FadeDelete("黒幕１", 1500, true);

	Wait(500);
	StL(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStL(500, true);

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080100a11">
「他们和从海岸登陆的军队不一样呢。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080110a10">
「你说从横浜走陆路直接过来的那些家伙？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080120a11">
「恐怕是。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080130a10">
「人数不多，
　装备也是轻便型的。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080140a11">
「大概只有负责安抚市民的宣抚班打头阵。
　大部队之后才到。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080150a10">
「镰仓被占领了吗……」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080160a11">
「手段高明啊。
　肯定是做过周密的计划，暗中不断地训练过
队伍了。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080170a11">
「巧妙地避开了与市民间的冲突。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080180a10">
「是吗。这再好不过。
　但是……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080190a10">
「事态变得严重了。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080200a11">
「是啊。
　他们的行动虽然救了我们……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080210a10">
「高兴不起来啊。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080220a11">
「是的。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080230a10">
「警署那边怎么样？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080240a11">
「刚才派人过去了。
　依照进驻军的指示。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080250a11">
「我吩咐他们，如果进驻军请求什么难办的
协助的话，就借口我不在而拖延时间。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080260a10">
「那就好。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080270a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080280a10">
「菊池。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080290a11">
「在。」

{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080300a10">
「开始了呢……」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080310a11">
「……嗯。很遗憾。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080320a10">
「最想避免的就是开战，结果……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080330a11">
「事已如此，也无可奈何。
　接受现实吧。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080340a11">
「我们只能竭尽全力了。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080350a10">
「是啊。
　以前在战场上也曾经这么做过。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080360a11">
「是。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080370a10">
「他们也会来这里吗？」

{	FwC("cg/fw/fw署長_通常.png");}
//嶋：修正（予想）【090930】
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080380a11">
「会来吧。
　必须预测对方的打算，准备对策。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080390a10">
「嗯……
　话说回来。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080400a10">
「黑濑童子和一条姑娘怎么样了？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080410a11">
「在里面接受治疗。
　他们都是武者，过不了多久就会痊愈的吧。」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080420a10">
「是吗，那就好。
　啊……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080430a11">
「什么？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080440a10">
「……村正大姐呢？」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080450a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_009.nss"