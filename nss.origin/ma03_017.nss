//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_017.nss_MAIN
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

	$GameName = "ma03_018.nss";

}

scene ma03_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_016.nss"

//◆貴賓席

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fw雷蝶_不興.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170010a08">
「什么嘛，那台难看的骑体！
　田村想让那种东西在吾的竞速中跑吗！」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170020a08">
「不可原谅……
　虽然违背了吾之美学，不过让吾来把它碾死
吧。」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170030e284">
「是。请务必这么做。
　中将阁下——」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170040a08">
「叫吾雷蝶夫人！」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170050e284">
「非、非常抱歉。雷蝶夫人。
　其实，比起翔京兵商，下官早就很讨厌报国之
志微薄，只热衷于追求自己公司利益的田村甲
业了。」

//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170060e284">
「来到赛场上，做出有如侮辱中……雷蝶夫人
的举动。
　下官认为只能对它进行坚决处理。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170070a08">
「没错呢。
　那就听从你义弟的请求吧？　大久保。」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170080e284">
「是——」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170090a07">
「哎呀哎呀哎呀。
　冷静点嘛蟹肉棒。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170100a08">
「你说谁是蟹肉棒!?」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170110a07">
「无聊事还是别干了。
　本来就猥琐的脸会变得更猥琐的。」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170120a07">
「我说……你也不想
　变得比现在更猥琐的吧？」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170130a08">
「你这小鬼用一脸认真在担心的样子说什么鬼话
————!!
　吾的脸，哪里，猥琐了!?你给吾重新好好
看看再说!!」

{	FwC("cg/fw/fw茶々丸変装_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170140a07">
「…………」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170150a07">
「噗。」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170160a08">
「吼————!!」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170170a07">
「啊哈哈哈哈。
　作为旁观者来说你这家伙真有趣啊。虽然即
使是搞错了也不想跟你成为朋友。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170180a08">
「吾才不想跟你成为朋友呢！」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170190a07">
「是吗？」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170200e284">
「……打扰一下，堀越公。
　对我们主君，您的言行有些过于失礼……再
加上，您不能这样妄加指责，烦请注意。」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//◆冷たい侮蔑
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170210a07">
「啊？
　你什么意思啊？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170220a07">
「想死吗？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：抜刀音。ジャキン。
	OnSE("se戦闘_動作_刀構え02",1000);

	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170230e284">
「…………是、是我无礼了……！
　恳请您原谅。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170240a08">
「大久保，你退下吧。」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170250e284">
「是——是。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆人が引き下がるＳＥ？
	OnSE("se人体_動作_後ずさり01",1000);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170260a08">
「……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170270a07">
「田村那台骑体，还挺有趣嘛。
　我觉得很好哦？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170280a08">
「哼。哪里好了。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170290a07">
「不对不对。
　我是说它真的<RUBY text="···">很有趣</RUBY>……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170300a08">
「？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 150, "#000000");
	FadeDelete("上背景", 1000, true);

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"ma03_018.nss"