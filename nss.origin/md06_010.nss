//<continuation number="730">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_010.nss_MAIN
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
	#bg007_若宮大路a_03=true;
	#bg001_空d_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_011.nss";

}

scene md06_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_009.nss"

//◆郊外。bg049
	SoundPlay("@mbgm32", 0, 1000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 10000, "BLACK");

	OnBG(100, "bg049_景明故郷住宅地a_03.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("黒", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　为何，活着。

　为何，行走。

//おがみ：シナリオ修正
//　ここは何処だのだろう。
　此地究竟是何处。

　无从知晓。

　总觉得，净是不解之事。

　似乎不知不觉间记忆产生了中断。

　要去找回记忆吗……

　不，这样就好。
　反正也微不足道。

　不去管它。

　赘物少了反而轻松。

　没错，肯定是这样。

　可是，此地是何处？

　似曾相识又好像从未来过。

　有人在。
　去询问一下吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆泥酔中
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100010a00">
「打扰了。
　我在寻找我的记忆，你知道点什么吗？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100020e109">
「你们怎么这种时候还在外面
闲晃？　啊啊!?
　果然是可疑分子……」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100030e110">
「单单破坏桥梁还嫌不够吗。
　这次又想做什么!?」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100040e227">
「不是的！
　我们也在巡查是否有可疑分子啊。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100050e228">
「破坏桥梁的家伙一旦出现，
我们就想把他抓获……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100060e109">
「哈。不是在抓捕吧。
　犯人搜查犯人吗！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100070e227">
「都说了真的不是啦！
　不是我们！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100080e110">
「休想骗人。
　不是你们的话还能有谁！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……嗯。
　似乎在为何事争吵。

　附近也围着数十人，因为忙于争吵，
谁都无暇顾及我的提问。

　不行。
　根据手相来看，这里是人生的分叉路口。

　一定要向他们问一下，然后决定是抛弃记忆
还是拿回向神支付的五百日元。

　全部是为了北朝复兴……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100090a00">
「我想问一下路。
　通往神明或记忆，涅槃或地狱之处。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100100a00">
「啊，我一个人去就行了。
　也就是想寻找自我。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100110e227">
「哈？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100120e228">
「你究竟想干嘛……
　呜哇，一身酒臭味！」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100130a00">
「怎么回事呢。
　好像没有人喝醉啊。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100140e110">
「……喂。带这个烂醉如泥
的人过来的是谁啊？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100150e109">
「不知道。
　自己擅自过来的吧？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100160e228">
「喂，你这家伙。
　不好意思，我们现在正忙着。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100170a00">
「是嘛，在忙啊。
　我不知道自己为什么活着。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100180a00">
「有哪位知道吗？
　希望不吝赐教。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100190e110">
「这人醉了还那么恭敬……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100200e109">
「啊，这种事怎样都无所谓！
　总之你们这群家伙！
　休想忘了桥的事啊！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100210e227">
「都说了我们——」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100220a00">
「桥怎么了？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100230e228">
「哎呀……你看，桥身都坍塌到那边的河里了。
　被破坏后，就没法渡河了啊。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100240a00">
「原来如此。这样可不行。
　但是我认为——无法渡河的话，
用叉子或汤匙渡过不就可以了吗？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100250e228">
「……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100260e227">
「别理他……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100270e110">
「那座桥是我们生活中不可或缺的东西啊。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100280e109">
「别以为这样就完事了。
　快赔偿！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100290e227">
「赔偿……怎么能这样。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100300e109">
「不能赔偿的话——」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100310a00">
「用叉子。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100320e227">
「叉子？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100330e109">
「就把你们全部撵出去！」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100340a00">
「用叉子。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100350e227">
「用叉子!?」

//おがみ：音声合わせ修正
//「誰と話してんだよ！
//　っていうか、邪魔だからあっちに行ってろ、
//酔っ払い!!」
{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100360e109">
「你在和谁说话啊！
　话说你太碍事了，滚一边去，酒鬼!!」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100370a00">
「……？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100380e109">
「说的就是你！ 别东张西望的！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100390a00">
「我没醉啊。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100400e109">
「怎么看都已经烂醉了吧！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100410a00">
「哎呀。
　我醉了吗……？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100420a00">
「那我应该再做一些像是醉鬼
一样的举动比较好吧。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100430e109">
「已经够了!!」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100440e110">
「喂，别管他了。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100450e109">
「知道了。
　……听好，我只说一次。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100460a00">
「什么？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100470e109">
「不是跟你说！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100480e110">
「所以让你别管他……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100490e109">
「知道啦！
　够了，难民们！　是赔偿还是滚出这个地方，
选一个吧！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100500e227">
「……别这样自说自话啊！
　都说了我们没有破坏桥梁啊！」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100510e109">
「谁管你们！
　不管怎么说，你们都很碍事！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100520e227">
「什么!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100530a00">
「请不要吵了。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100540e109">
「行了，你给我一边呆着去！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100550a00">
「不行。
　不能吵架。」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100560a00">
「错的是我。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100570e110">
「什么？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100580a00">
「你们不应该互相指责。
　责备我就行了……」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100590a00">
「带来灾难的是我。
　是我不对。谴责我吧，惩罚我吧。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100600e227">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100610e228">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100620a00">
「拜托了。
　任凭你们处置。杀了我也无所谓。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100630a00">
「所以。」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100640a00">
「……所以……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//―――――――――――――――――――――――――――――

//◆ばた。倒れる
//◆空。割れた月
	CreatePlainEX("絵板写", 4900);
	CreateColorEX("黒幕１", 5000, "#000000");
	OnSE("se人体_衝撃_転倒03", 1000);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, Dxl2, false);
	Fade("黒幕１", 200, 1000, null, true);

	WaitAction("絵板写", null);
	Delete("絵板写");

	CreateTextureSP("割れた月大", 2010, Center, InBottom, "cg/bg/resize/bg001_空d_03l.jpg");
	CreateTextureSP("割れた月", 2000, @0, @0, "cg/bg/bg001_空d_03.jpg");

	Move("割れた月大", 10000, @0, -120, DxlAuto, false);
	FadeDelete("黒幕１", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　夜空变得辽阔。

　月亮。
　碎裂的月亮。

　……为什么会这样。

　对了。
　是被光踢坏的。

　真是个淘气的家伙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100650a00">
「哈哈。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100660a00">
「哈哈，哈哈哈。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("割れた月大", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　真可笑。
　月亮破碎了。真是可笑至极。

　笑得在地上直打滚。
　肚子好疼。因为笑得过于厉害。

　是啊……可笑。
　只不过。

　我说，光？

　为什么你……
　为什么不也像那样将我粉碎。

　为什么不带我一起走？

　为什么…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 1000);

//◆元の場所
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100, "bg049_景明故郷住宅地a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100670e110">
「……喂。
　这家伙，怎么处置？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100680e109">
「怎么处置……我怎么知道。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100690e227">
「…………」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100700e228">
「…………」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100710e109">
「……可恶。
　总觉得变得很荒谬。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100720e110">
「我也觉得。
　……今天就到此为止吧。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100730e109">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md06_011.nss"