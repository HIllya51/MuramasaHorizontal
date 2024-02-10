//<continuation number="950">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_017.nss_MAIN
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
	#ev137_首領輪姦=true;
	#ev137_首領輪姦_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_018.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	#ma05_017=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene ma05_017.nss
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
//前ファイル　"ma05_016.nss"
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev137_首領輪姦.jpg");
	Delete("上背景");

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	//状態定義
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev137_首領輪姦.jpg");

	//リコ背景抹消
	RecoIn();
}
//========================================================


	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170010b31">
「不要……」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170020b31">
「住手……快住手啊。」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170030b31">
「放开我……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領無惨。
	SoundPlay("@mbgm34",2000,1000,true);
	FadeDelete("絵暗転", 2000, true);

	SetNwC("cg/fw/nw山賊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170040e083">
「不行哦，首领。
  不是才刚刚开始吗。」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170050e084">
「你知道在后面排队等着的还有多少人吗？
　现在就大喊大叫的也太早了些。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170060b31">
「咕……唔唔……
　不知羞耻的家伙……！　居然以多欺少……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170070e085">
「没办法嘛。你以为我们这是隔了多久才
终于可以不用右手解决了啊。
　因为首领你不允许我们找女人。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170080e086">
「没错没错。
　镇子里有不少年轻貌美的姑娘，我为什么非
得含着手指眼巴巴地远远看着啊……啊，想起
这些我又硬了。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170090e086">
「含进去啊，首领。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170100b31">
「不要……这种东西别靠近我！
　你这混蛋！」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170110e086">
「……」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170120e083">
「喂喂，别打人啊。
　别糟蹋了难得的美貌，多让人扫兴。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170130e086">
「不，不是那样。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170140e083">
「嗯？」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170150e086">
「……总觉得，让人兴奋。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170160e083">
「……啊，是吗。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170170e086">
「嘿嘿嘿嘿嘿！
　那就这样做吧！」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170180b31">
「……不要！
　你干什么？　用我的头发……！」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170190e086">
「用你那美丽的秀发，擦净我们的污秽……
　哦哦，好干净，好干净。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170200b31">
「呀……」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170210e086">
「啊啊，感觉我的心都被填满了呢。
　现在是我的人生最充实的一刻……！」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170220e084">
「这小子真恶心。」

//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170230e084">
「不过，可行。」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170240e085">
「太可行了。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170250e083">
「好，我也要充实一次！
　来吧，首领，不喜欢用头发的话就给我用嘴。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170260b31">
「嗯!?
　不要，嗯……唔，嗯唔！」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170270e083">
「不要碰到牙齿哦。
　敢这么做的话就把你的牙全拔光。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170280b31">
「……」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170290e083">
「哦哦……女人的嘴果然最棒了。
　比起下面的嘴，我更喜欢上面的嘴。」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170300e085">
「是吗？　古怪的家伙。
　我可是正统派，钟爱这里……哦！」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170310b31">
「嗯嗯!?」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170320e085">
「嘿嘿。如何啊，首领？
　被挺进最深处的感觉。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170330b31">
「不要，好难受……
　好痛……停下来啊！」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170340b31">
「啊啊！」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170350e085">
「哎呀，真是抱歉。
　我最喜欢这样了。」

//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170360e085">
「唔啊，受不了了。
　一想到她刚才还是处女，
就更控制不了自己了。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170370b31">
「呜呜……！」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170380e085">
「别哭啊，首领。
　不要紧，首领马上也会觉得舒服的。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170390b31">
「谁、谁会……对你们几个……啊啊！
不要，别那么……激烈！」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170400e085">
「来了来了来了！
　高潮来了——!!」

//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170410e085">
「一鼓作气！
　射在首领体内！」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170420b31">
「不要！
　至少拔出来再……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170430e085">
「我从生理上拒绝！
　来吧，摩擦子宫口……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170440b31">
「啊啊……
　啊——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	CreateColorEX("絵白濁", 5000, "#FFFFFF");
	Fade("絵白濁", 200, 1000, null, true);
	WaitKey(1000);
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev137_首領輪姦_b.jpg");

	FadeDelete("絵白濁", 2000, true);

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170450b31">
「唔……
　……唔唔……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170460e085">
「哈……
　太过瘾了。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170470e086">
「尽情射了一次。
　光你这一发肯定就能致孕呢。」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170480e085">
「哈哈哈。
　要是知道我侵犯了首领，还让她怀孕了，
我那已死的老爹会有什么反应呢。」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170490e084">
「唔哇。别说让人硬不起来的话啊！
　要是我老爸，绝对会杀了我。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170500e086">
「没事啦。
　我们只是听从新首领的命令而已。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170510e083">
「没错。这个女人已经不是首领了。
　呃……话说回来，和一个平民战斗，落得惨
败不说，最后还让我们也当平民百姓，这种首
领谁受得了啊。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170520b31">
「……」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170530e084">
「就是啊。
　那这次换我来。」

//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170540e084">
「啊……可是，都松得不行了。
感觉可能不会太好。」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170550e085">
「因为六个人连续做的缘故。」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170560e084">
「算了，总之先插进去吧。
　喔唷。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170570b31">
「嗯……！」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170580e084">
「……果然还是不够劲。
　首领，再收紧一点啊。
我一点都不舒服哦？」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170590b31">
「唔……！
　别提……无理的要求啊……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170600b31">
「都是因为你们，一次又一次地……
　射在我体内……！」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170610e084">
「这倒是事实。
　该怎么办呢——」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170620b32">
「用这个啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆チャッ。金属音
	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw山賊Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170630e084">
「尊弟？
　……那不是首领的太刀吗。
拿这东西干嘛？」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170640b32">
「把刀柄插进那个女人的后穴，如何？
　这样做的话就能紧一点了吧。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170650b31">
「……!?」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170660e084">
「……哦哦！
　不愧是尊弟，不对，首领！　这办法好科学
啊！」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170670e086">
「你不仅搞错科学概念了而且还藐视科学。
　不过，可行。」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170680e085">
「太可行了。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170690b31">
「呀……！」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170700b32">
「太好了呢，姐姐。
　还能派上<RUBY text="··">用场</RUBY>呢。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170710b31">
「一……一磨……
　让他们住手……！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170720b32">
「……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170730b31">
「一磨……！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170740b32">
「你们干什么呢？
　动作快点。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170750e083">
「嘿嘿嘿……
　既然您吩咐了……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170760e085">
「来啊，首领，乖一点哦。
　把腿张开，屁股朝这边
……啊，别乱动，别乱动。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170770b31">
「不要！　不要啊！
　放开我！　求你们了，饶了我吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EV100", 4000, 0, 0, "cg/ev/resize/ev137_首領輪姦_bm.jpg");

	Move("絵EV100", 2000, -503, @0, Dxl1, false);
	Fade("絵EV100", 1000, 1000, null, true);

	SetNwR("cg/fw/nw山賊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170780e083">
「乖啦乖啦。
　把后穴撑开……哇，好小啊。」

{	NwR("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170790e086">
「真的呢。
　首领的肛门真的好小，排泄的时候
不觉得不便吗？」

{	NwR("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170800e085">
「哦，好可爱的后穴。
　真符合首领的风格。」

{	FwR("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170810b31">
「不要！
　你们不要看那种地方！」

{	NwR("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170820e084">
「好了好了。别这么说。
　我们啊，都是第一次看像首领这样身份高贵
的女人的后穴。」

{	NwR("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170830e083">
「而且，让我们看看屁股又怎样，
都看光啦。
　刚才首领的阴道和处女膜都被我们
观察过啦，不是吗。」

{	NwR("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170840e085">
「没错没错。破处后又一次张开，
连精子流入的子宫口都
被我们仔细地欣赏了一番。」

{	FwR("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170850b31">
「唔……呜呜……！」

{	NwR("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170860e086">
「接下来。把刀柄抵上去。
　能进去吗？　试试看吧。」

//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170870e086">
「要插进去了哦，首领。」

{	FwR("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170880b31">
「……不要……」

{	FwR("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170890b31">
「不要啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆龍槌閃·惨。
//◆ブラックアウト？
	CreateColorEX("絵黒", 5000, "#000000");
	Fade("絵黒", 2000, 1000, null, true);

	CreateSE("SE01","se擬音_粘着質_ゲル潰れる01");
	MusicStart("SE01",0,1000,0,750,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	WaitKey(2000);

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆壊れ
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170900b31">
「…………」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170910e086">
「哦哦。
　能进去呢。虽然有点裂开了。」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170920e084">
「很好！　收紧了！
　在首领体内和刀柄摩擦的感觉……
怎么说呢，棒透了！」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170930e083">
「似乎很开心呢。
　但是我也有我的坚持！　来吧，首领，
你的嘴都闲下来啦。快点舔，快点含进去啊。」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170940e085">
「我怎么做呢。
　那就用胸吧。好像很柔软很有感觉哦。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170950b31">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(2000, 2000);
	}
//============================================

}

..//ジャンプ指定
//次ファイル　"ma05_018.nss"