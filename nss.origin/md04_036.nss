//<continuation number="1590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_036.nss_MAIN
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
	#bg080_飛行船船室Ab_01a=true;
	#bg036_競技場通路_01=true;
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_037.nss";

}

scene md04_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_035.nss"


//◆監禁用の一室。bg080？
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1500, true);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360010b03">
「……………………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆斬殺音

	OnSE("se戦闘_攻撃_刀刺さる03", 500);
	Wait(1500);
	OnSE("se人体_衝撃_転倒02", 1000);
	Wait(500);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360020b03">
「……？」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆がちゃ

	OnSE("se日常_建物_扉開く01", 1000);
	Wait(1500);

	StCR(1000, @-30, @0, "cg/st/stウォルフ_通常_私服.png");
	Move("@StMR*", 500, @-30, @0, Dxl2, false);
	FadeStCR(500, true);

	Wait(500);

	SoundPlay("@mbgm21", 0, 1000, true);

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360030a13">
「哟，卡农君。
　你还精神吗？」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360040a13">
「还没舍弃希望吧？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360050b03">
「沃尔夫教授?!」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360060a13">
「太好了。至少还活着。
　我还担心得不行，怕你会轻易上吊呢。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360070b03">
「……这个嘛，我还没有厉害到被绑在椅子上
还能上吊。
　不过，您是怎么来这的？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360080a13">
「被自己人救了。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360090b03">
「自己人？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360100a13">
「是他。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆常闇

	StR(900, @150, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(500, true);


	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360110b03">
「……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360120a13">
「巴尔特罗米欧，还他自由吧。」

{	FwH("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360130b37">
「是。
　中佐大人，失礼了。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆一閃。縄を切る
//	Move("@StR*", 300, @-200, @0, DxlAuto, false);
	DeleteStR(300,true);


	OnSE("se戦闘_攻撃_刀振る01", 1000);

	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵背景200", 300, 1000, null, true);
	Fade("絵背景200", 500, 0, null, true);
	Delete("絵背景200");
	OnSE("se日常_衣類_衣擦れ01", 1000);

	Wait(250);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360140b03">
「……教授。
　他是大和人？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360150a13">
「啊，没错。既是大和人，又是我的朋友。
　现在这种事没什么所谓吧？」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360160a13">
「好，中佐，重新开始吧。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360170b03">
「开始什么？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360180a13">
「你没睡醒吗？
　当然是，我们的较量。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360190b03">
「……都到了现在这种地步。
　一切都已经结束了。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360200b03">
「现在我是等待处刑的叛国者。
　就算能逃出去，也只会变成等待抓捕的
逃犯而已。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360210a13">
「不要说这种没出息的话。
　你身上不是还寄托着维罗少将的梦想吗？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360220b03">
「……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360230a13">
「明面上，你还不是叛国者。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360240b03">
「……您说什么？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360250a13">
「路比·撒修安东还没有掌握潜伏在ＧＨＱ内
独立派的全貌。
　所以，他怕公开事件，会造成他们失控。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360260a13">
「是吧，巴尔特罗米欧？」

{	FwH("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360270b37">
「是的。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360280b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360290a13">
「懂了吧，中佐。」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360300a13">
「只要干掉撒修安东伯爵，接下来就有办法！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360310b03">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360320b03">
「有武器吗？」

{	FwH("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360330b37">
「这是负责监视的士兵所持的枪。
　请拿好，中佐大人。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360340b03">
「<RUBY text="加兰特">步枪</RUBY>就不用了。
　给我手枪就好。」

{	FwH("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360350b37">
「是。」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360360a13">
「很好，很好！
　那咱们走吧，卡农中佐！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360370b03">
「……嗯。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆通路。bg036？

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	DeleteStCR(0,true);

	OnBG(101, "bg036_競技場通路_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	SetNwH("cg/fw/ny護衛官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／高官護衛】
<voice name="ｅｔｃ／高官護衛" class="その他男声" src="voice/md04/0360380e073">
「……站住！
　这里是撒修安东伯爵大人的——」

//【ｅｔｃ／高官護衛】
<voice name="ｅｔｃ／高官護衛" class="その他男声" src="voice/md04/0360390e073">
「什么，卡农中佐?!」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360400b03">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆常闇。すーっと

	StR(900, @-150, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, false);
	Move("@StR*", 300, @-200, @0, DxlAuto, false);
	DeleteStR(300,true);
//◆剣閃、二回

	OnSE("se戦闘_攻撃_刀振る01", 1000);

	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵背景200", 300, 1000, null, true);

	OnSE("se戦闘_攻撃_刀_ヒット01", 1000);
	OnSE("se戦闘_攻撃_刀振る02", 1000);
	CreateTextureEX("絵背景300", 2100, Center, 0, "cg/ef/ef015_汎用横軌道.jpg");
	Fade("絵背景300", 300, 1000, null, true);
	OnSE("se戦闘_攻撃_刀_ヒット02", 1000);
	Fade("絵背景200", 0, 0, null, false);
	Fade("絵背景300", 500, 0, null, true);


	Delete("絵背景*");
	Wait(300);

	OnSE("se人体_衝撃_転倒02", 1000);
	Wait(500);

	OnSE("se人体_衝撃_転倒03", 1000);


	SetFwH("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360410b37">
「好——两位。」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360420a13">
「嗯，谢谢。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360430b03">
「……厉害。
　转瞬之间就收拾掉全副武装的两名士兵。」

{	FwH("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360440b37">
「只是些小把戏。」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360450a13">
「这位朋友很可靠吧？
　那么——」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆がちゃ
//◆高官部屋

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se日常_建物_扉開く01", 1000);
	OnSE("se日常_建物_扉開く06", 1000);

	OnBG(100, "bg018_知事執務室_01.jpg");
	FadeBG(0, true);

	Wait(500);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	Wait(1000);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0360460b25">
「大鸟大尉吗？
　欢迎回来——不过进来的时候请安静些。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0360470b25">
「我正在读书……」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360480b03">
「是吗。<RUBY text="玛塔·哈里">狐狸精</RUBY>不在吗。
　天助我也。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

//◆かちゃ。銃を構える音
	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0360490b25">
「————」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆キャノンとサシュアント

	StR(1000, @0, @0, "cg/st/stキャノン_射撃_制服.png");
	StL(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStL(500, false);
	FadeStR(500, true);

	Wait(500);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0360500b25">
「克莱布·卡农……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360510b03">
「正是。
　路比·撒修安东。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0360520b25">
「……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360530b03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0360540b25">
「这是报复？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360550b03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0360560b25">
「对我这个女王的使者。
　维护世界和平组织的代表者。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆アップ


/*

	CreateTextureEX("サシュアント", 1000, @-100, @-100, "cg/st/resize/stサシュアント_通常_私服_l.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 1500, 1500, null, true);

	Fade("サシュアント", 150, 1000, null, true);

*/

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg018_知事執務室_01.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -200, -350, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 500, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 500, @0, @300, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(500);


	SetFwH("cg/fw/fwサシュアント_叫び.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0360570b25">
「你仅仅为了报复就要杀了我?!」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360580b03">
「不。
　只是，你碍了事。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ばーん。射殺。
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);

	CreateColorSPadd("白", 15000, "White");

	DeleteStA(0,true);
	Delete("絵色100");
	Delete("絵演窓上*");
	Wait(200);
	FadeDelete("白", 1000, true);

	Wait(500);

	OnSE("se人体_衝撃_転倒03", 1000);

	Wait(1000);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360590b03">
「……而且我实在不想看你那副难看的表情。」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360600a13">
「干得好，中佐。
　但是现在一切才刚刚开始。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360610a13">
「你必须再度控制ＧＨＱ，派兵夺取锻造雷弹，
用它轰炸普陀乐城！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360620b03">
「不能如此武断行事。
　首先，必须从城周边撤下陆军……」

{	FwH("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360630b37">
「那么就快点完成此事吧。
　因为进驻军似乎已开始撤军。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360640b03">
「什么？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360650b03">
「————啊，原来如此。
　撒修安东那家伙，是要重新摆阵吧。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360660a13">
「多亏他帮了我们大忙。
　但是中佐，还不到放松的时候。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360670a13">
「要是六波罗军随着进驻军撤退而出城攻击
……就无法用雷弹把他们一扫而光了。
　快快行事吧！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360680b03">
「……嗯，教授——」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//◆だだだ。駆け込んでくる足音

	OnSE("se人体_足音_走る07", 1000);


//◆香奈枝とさよ
	WaitKey(500);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se日常_建物_扉開く02", 1000);
	StL(1000, @-50, @0, "cg/st/st香奈枝_通常_私服d.png");
	StC(1000, @-400, @0, "cg/st/stさよ_通常_私服.png");
	Move("@StC*", 400, @50, @0, null, false);
	Move("@StL*", 300, @50, @0, null, false);
	FadeStL(300, false);
	FadeStC(300, true);

	Wait(200);

	SetFwH("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360690a03">
「……这是……」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360700a04">
「迟来一步吗！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360710b03">
「大鸟大尉吗……」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360720a13">
「唔。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360730a13">
「第一次是完全被你算计了。
　绝不能让你成功第二次……」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360740a03">
「……」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360750a13">
「问你一句话。
　有没有乖乖地不穿内裤？」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360760a03">
「穿着呢。」

{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360770a13">
「你这危险人物!!
　巴尔特罗米欧————!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆常闇
//◆縦書き
	SetVolume("@mbgm*", 3000, 0, null);

	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, false);
	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360780a04">
「————」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360790b37">
「————」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360800a04">
「怎么。
　竟然在这种地方相遇……未免也太巧了。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360810b37">
「……永仓……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360820a03">
「婆婆？」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360830a04">
「大小姐请退下。
　决不可上前一步。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360840a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆小ウェイト

	WaitKey(800);
	Move("@StC*", 200, @50, @0, Dxl2, false);

	SetFwC("cg/fw/fwさよ_老兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360850a04">
「不行！
　不能用<RUBY text="柏洛兹">赝作弓圣</RUBY>！」

//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360860a04">
「在装甲之前就会被干掉!!」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360870a03">
「————」

{	SoundPlay("@mbgm06",0,1000,true);
	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360880b37">
「果然是剑胄吗。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360890b37">
「忠告是……正确的。
　但也有成功的可能。不该赌上这万分之一的
可能性吗？」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360900a04">
「……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360910b37">
「因为无论有没有装甲，我都会杀死
大鸟香奈枝。」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360920a04">
「我才不会在不利的赌局中赌上主人的性命。
　来场正常的比试吧。」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360930b37">
「哦？」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360940a04">
「常暗斋大人。
　若是您要杀大小姐，老身可不会对主人
弃之不顾。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360950b37">
「……」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360960b37">
「怎么说？」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360970a04">
「妄图保护守护不了的人只是无谓的挣扎。
　所以您对大小姐下手的时候，纱代会杀了
您那边的沃尔夫教授。」

{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360980a13">
「咦，我吗？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360990b37">
「……！」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361000a04">
「或者是卡农中佐。
　反正，杀了谁都无所谓。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361010a04">
「就是这样。
　您意下如何？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361020b37">
「…………」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361030a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361040b37">
「……呵呵……」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361050a04">
「大小姐。
　请快逃。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361060a03">
「纱代。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361070a04">
「快点。
　大小姐不清楚这男人的厉害。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361080a03">
「……」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361090a04">
「这里不是黄毛丫头该出场的地方。
　快走！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆香奈枝、走る

	DeleteStL(300,false);
//	DeleteStC(300,false);


	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361100a03">
「纱代！」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361110a04">
「…………」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361120a03">
「随从最重要的职责你可知道?!
　那便是为主人举行葬礼，念诵漂亮的墓志铭，
整理遗产！」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361130a03">
「我要你全部做到!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆たったったっ。
	OnSE("se人体_足音_走る03", 1000);

	SetFwC("cg/fw/fwさよ_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361140a04">
「……这话真是没道理。
　您以为老婆子我还能活几年？」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361150b37">
「你会活下去吧。
　无论几年，几十年，几百年。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361160b37">
「只要这世界还不到末日。
　没错吧？<RUBY text="布拉迪女士">染血的贵妇人</RUBY>。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361170a04">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆さよと常闇

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361180b37">
「你完全没变。
　从三十年前就……丝毫未变。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361190b37">
「还是如此美丽。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361200a04">
「————」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361210a04">
「小四郎大人倒是已经变了许多了。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361220b37">
「是啊……」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361230a04">
「……」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361240a04">
「我能问问……您为何会在这种地方吗？」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361250b37">
「为了信仰。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361260b37">
「别无其他。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361270a04">
「……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361280b37">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361290a04">
「您变了……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361300b37">
「是的。
　我失去了许多。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361310b37">
「我已不再是……
　不再是与你并肩作战时的我了。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361320a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_思考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361330b37">
「我并不恨谁。
　是我自愿舍弃了那些东西……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361340b37">
「只留下，一个信仰。
　为了守护……升华信仰，
我牺牲了其他的一切。」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361350b37">
「只是……为了更为接近地感受神的存在……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361360a04">
「…………
　只有神能拯救您的灵魂吗？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361370b37">
「是的。」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361380a04">
「因为纱代没能拯救您吗……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361390b37">
「……」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361400b37">
「是啊……但是。
　对了，我还有一件东西，未曾舍弃。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361410b37">
「我还没有，舍弃你。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361420b37">
「我从不曾……忘记你。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361430a04">
「……小四郎……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361440b37">
「预感是正确的。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361450b37">
「此行果然是我的命运之行。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361460b37">
「我……非得舍弃你不可。
　……为了迎接神明……」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361470a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361480a04">
「好远。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361490b37">
「……？」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361500a04">
「好远啊，小四郎大人。
　三十年前，与您在笠置同赏的那弯缺月。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361510a04">
「我已经……想不起来了。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361520b37">
「……是啊。
　好远。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361530b37">
「已经……很远了……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361540a04">
「……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361550b37">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateTextureEX("上敷き", 10000, Center, Middle, "cg/bg/bg018_知事執務室_01.jpg");
	Fade("上敷き", 300, 1000, null, true);


	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");

	CreateTextureSP("絵演窓右/背景", 4100, -361, -70, "cg/bg/bg018_知事執務室_01.jpg");
	SetShade("絵演窓右/背景", HEAVY);
	Zoom("絵演窓右/背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演窓右/立ち絵", 4200, Center, Middle, "cg/st/resize/st常闇斎_戦闘_私服ex.png");
	Request("絵演窓右/立ち絵", Smoothing);
	Zoom("絵演窓右/立ち絵", 0, 800, 800, null, true);
	Move("絵演窓右/立ち絵", 0, 318, -644, null, true);
//	SetBlur("絵演窓右/立ち絵", true, 1, 500, 70, false);

	CreateTextureSP("絵演出左背景", 3000, -597, -280, "cg/bg/bg018_知事執務室_01.jpg");
	SetShade("絵演出左背景", HEAVY);
	Zoom("絵演出左背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演出左立ち絵", 3100, 500, 250, "cg/st/resize/stさよ_戦闘_私服ex.png");
	Request("絵演出左立ち絵", Smoothing);
	Zoom("絵演出左立ち絵", 0, 480, 480, null, true);
	Move("絵演出左立ち絵", 0, -617, -1090, null, true);
//	SetBlur("絵演出左立ち絵", true, 1, 500, 70, false);


	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_刀構え03",1000);
	OnSE("se戦闘_動作_刀構え02",1000);


	Move("絵演出左立ち絵", 1500, -500, -740, Dxl2, false);
	Move("絵演出左背景", 1500, -520, -115, Dxl2, false);

	Move("絵演窓右/立ち絵", 1500, 100, -400, Dxl2, false);
	Move("絵演窓右/背景", 1500, -460, 40, Dxl2, false);

	FadeDelete("上敷き", 500, true);
	Wait(1500);
	DeleteStA(0,true);

//	StL(1000, @0, @0, "cg/st/stさよ_戦闘_私服.png");
//	FadeStL(300, true);
	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361560a04">
「决不让您通过这里。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361570b37">
「我非过不可。
　放任你的主人不管太危险了。」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361580a04">
「柳生小四郎!!」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361590b37">
「不打倒你——
　我就无法得到面神的资格!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	Move("絵演窓右/立ち絵", 200, @0, @700, Axl1, false);
	Move("絵演出左立ち絵", 200, @0, @700, Axl1, false);
	Zoom("絵演窓右/立ち絵", 200, 2000, 2000, Axl1, false);
	Zoom("絵演出左立ち絵", 200, 2000, 2000, Axl1, false);



	CreateColorSPadd("黒幕１", 30000, "WHITE");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", true);
	Delete("黒幕１");


	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 100, 1000, null, true);
	DeleteStCL(0,true);
	CreateTextureSPadd("衝突", 15000, @0, @0, "cg/ef/ef040_汎用衝突.jpg");

	OnSE("se戦闘_攻撃_鎧_剣戟04", 1000);
	OnSE("se戦闘_攻撃_殴る05", 1000);

	Zoom("衝突", 0, 1200, 1200, null, false);
	Zoom("衝突", 500, 1500, 1500, Dxl2, false);
	Shake("衝突", 500, 50, 0, 0, 0, 1000, Dxl3, true);

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);


	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"md04_037.nss"
