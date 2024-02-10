//<continuation number="410">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_019.nss_MAIN
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
	#bg089_大鳥邸貴人の間_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_020.nss";

}

scene mc04_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_018.nss"

//◆奥の間
//◆慌しい様子
	PrintBG("上背景", 30000);
	CreateSE("SEメラメラ", "se人体_動作_放火");
	MusicStart("SEメラメラ", 0, 1000, 0, 1000, null,true);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_02.jpg");

	CreatePlainEX("絵板写", 110);
	Fade("絵板写", 0, 500, null, true);
	MoveFRP1("@絵板写",1000,1,10);
	DrawEffect("絵板写", 0, "HighWave", 20, 20, null);

	CreateColorEX("絵演黒煙", 900, "#000000");
	Fade("絵演黒煙", 0, 800, null, true);
	DrawTransition("絵演黒煙", 0, 0, 200, 1000, null, "cg/data/circle_13_00_1.png", true);

	CreateTextureSPmul("絵演炎上効果", 1000, Center, Middle, "cg/data/effect_01_00_0.png");
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	CreateTextureEXadd("火だー", 1050, -190, 0, "cg/ef/ef046_炎a.jpg");
	Zoom("火だー", 0, 1100, 1100, null, true);
	Fade("火だー", 0, 800, null, false);

	CreateTextureEXadd("火前だー", 5000, -480, 50, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	Zoom("火前だー", 0, 1100, 1100, null, true);
	Fade("火前だー", 0, 300, null, false);
	DrawTransition("火前だー", 0, 0, 180, 1000, null, "cg/data/circle_13_00_0.png", true);
	DrawEffect("火前だー", 0, "HighWave", 20, 20, null);


	Delete("上背景");
	DrawDelete("黒幕１", 150, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｔ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／大鳥兵士Ｔ】
<voice name="ｅｔｃ／大鳥兵士Ｔ" class="その他男声" src="voice/mc04/0190010e190">
「起火了!!
　从、从地下——」


{	NwC("cg/fw/nw大鳥軍兵士Ｕ.png");}
//【ｅｔｃ／大鳥兵士Ｕ】
<voice name="ｅｔｃ／大鳥兵士Ｕ" class="その他男声" src="voice/mc04/0190020e191">
「是香奈枝大人做的吗!?」


{	NwC("cg/fw/nw大鳥軍兵士Ｖ.png");}
//【ｅｔｃ／大鳥兵士Ｖ】
<voice name="ｅｔｃ／大鳥兵士Ｖ" class="その他男声" src="voice/mc04/0190030e192">
「她是想要把整个家烧掉吧……」


{	NwC("cg/fw/nw大鳥軍将校Ｄ.png");}
//【ｅｔｃ／大鳥将校Ｄ】
<voice name="ｅｔｃ／大鳥将校Ｄ" class="その他男声" src="voice/mc04/0190040e170">
「不行了，无法灭火！
　快跑!!」


{	NwC("cg/fw/nw大鳥軍兵士Ｗ.png");}
//【ｅｔｃ／大鳥兵士Ｗ】
<voice name="ｅｔｃ／大鳥兵士Ｗ" class="その他男声" src="voice/mc04/0190050e193">
「中将阁下怎样了!?」


{	NwC("cg/fw/nw大鳥軍将校Ｃ.png");}
//【ｅｔｃ／大鳥将校Ｃ】
<voice name="ｅｔｃ／大鳥将校Ｃ" class="その他男声" src="voice/mc04/0190060e169">
「外围龙骑兵队警卫都怎么了！
　为什么不来救援！」


{	NwC("cg/fw/nw大鳥軍兵士Ｘ.png");}
//【ｅｔｃ／大鳥兵士Ｘ】
<voice name="ｅｔｃ／大鳥兵士Ｘ" class="その他男声" src="voice/mc04/0190070e194">
「……这就是天罚吗……」


{	NwC("cg/fw/nw大鳥軍兵士Ｖ.png");}
//【ｅｔｃ／大鳥兵士Ｖ】
<voice name="ｅｔｃ／大鳥兵士Ｖ" class="その他男声" src="voice/mc04/0190080e192">
「我、我不要啊！
　我可不想这样。我要逃走!!」


{	NwC("cg/fw/nw大鳥軍将校Ｃ.png");}
//【ｅｔｃ／大鳥将校Ｃ】
<voice name="ｅｔｃ／大鳥将校Ｃ" class="その他男声" src="voice/mc04/0190090e169">
「喂，等等！　别擅离职守！」


{	NwC("cg/fw/nw大鳥軍兵士Ｔ.png");}
//【ｅｔｃ／大鳥兵士Ｔ】
<voice name="ｅｔｃ／大鳥兵士Ｔ" class="その他男声" src="voice/mc04/0190100e190">
「火、火烧过来了——！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士と花枝
	SetVolume("SEメラメラ", 2000, 500, null);

	StL(1100,@0,@20,"cg/st/st花枝_通常_私服.png");
	FadeStL(300,true);


	SetNwC("cg/fw/nw大鳥軍兵士Ｇ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0190110e177">
「首……首领……
　该怎么办……」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0190120e178">
「可、可以撤离吗？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190130b18">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたん。ドア開く
//◆獅子吼·負傷
	OnSE("se日常_建物_扉開く02", 1000);
	StR(1100,@0,@30,"cg/st/st獅子吼_通常_制服.png");
	FadeStR(300,false);

	SetNwC("cg/fw/nw大鳥軍兵士Ｈ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0190140e178">
「……阁下!!」


{	NwC("cg/fw/nw大鳥軍兵士Ｇ.png");}
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0190150e177">
「那、那伤势!?」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190160a06">
「不用管。」


{	NwC("cg/fw/nw大鳥軍兵士Ｇ.png");}
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0190170e177">
「可……可是。
　如果不赶快治疗，」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190180a06">
「不用管。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190190b18">
「…………」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190200a06">
「花枝大人——」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190210b18">
「这是末日。
　狮子吼。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190220a06">
「………………」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190230b18">
「你拼命支撑的大鸟家族，今天到了末日。
　<RUBY text="··">一切</RUBY>都结束了。」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190240b18">
「所以我可以给你打分了。
　——大鸟狮子吼。你的忠义、诚心、
奉献、拼搏，<?>
{Wait(1000);}
全部没有用。」

//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190250b18">
「你只能作为一个反逆者，一个压制者，一个
虐杀者而名垂史册。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190260a06">
「————————」


{	FwC("cg/fw/fw花枝_罵倒.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190270b18">
「……如果你希望留下这样的名声，
我就在这里杀掉你。　
　还是说，你要杀了我？」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190280b18">
「不如让我听听你最后的遗愿吧。」


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190290a06">
「……既然这样。
　都是一样。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190300a06">
「花枝大人的慈悲，对于吾身来说是极大的荣
誉。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190310b18">
「……」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190320a06">
「还没有结束。
　<RUBY text="···">还没有</RUBY>——」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190330a06">
「邦氏殿下逃离了吗？」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0190340e178">
「啊……是！
　邦氏殿下之前确实离开了。乐翁阵的人来通
知过了。」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0190350e178">
「让首领避难的准备也做好了。
　车和护卫已经在屋后准备好了。」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190360a06">
「……是吗。
　那就好。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190370a06">
「花枝大人，正如您所闻。
　虽然这样让您难过，但还请移步同去。」



{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190380b18">
「……狮子吼。」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190390a06">
「这不是结束。
　大鸟——大和的未来，绝不会完结。」



{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190400a06">
「只要有吾狮子吼在!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆シーン転換。ウェイト
	SetVolume("SE*", 2000, 1, null);
	SetVolume("@mbgm*", 2000, 0, null);
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1500, 1000, null, true);

	WaitPlay("@mbgm*", null);

	Wait(1500);

//◆ばたーん。ドア開くＳＥ
//◆奥の間
//◆香奈枝がずさーっと
	DeleteStA(0, false);

	SetVolume("SE*", 2000, 500, null);
	CreateSE("SE03","se日常_建物_扉開く02");
	MusicStart("SE03",0,1000,0,1000,null,false);

	DrawDelete("絵色黒", 300, 100, "slide_06_00_0", true);

	CreateTextureEX("絵演空立絵かな", 1200, @700,InBottom, "cg/st/st香奈枝_射撃_私服b.png");
	CreateSE("SE02","se人体_動作_スライディング");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("絵演空立絵かな", 300, @-100, @0, Dxl2, false);
	Fade("絵演空立絵かな",300,1000,null,true);

	OnSE("se戦闘_銃器_構える01", 1000);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0190410a03">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_020.nss"