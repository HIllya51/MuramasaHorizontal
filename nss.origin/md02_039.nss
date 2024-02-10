//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_039.nss_MAIN
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
	#bg039_競技場客席a_01=true;
	#bg039_競技場客席b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_040.nss";

}

scene md02_039.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_038.nss"

//■冒頭立ち絵なしなのはわざとです　inc櫻井

	PrintBG("上背景", 30000);
	CreateColorEX("ホワイトイン", 5000, "WHITE");
	Fade("ホワイトイン", 0, 1000, null, true);
	OnBG(100, "bg039_競技場客席a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm19", 0, 1000, true);
	Delete("上背景");
	FadeDelete("ホワイトイン", 1500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390010a00">
「……阁下……
　这是？」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390020a07">
「暴力主义的那伙人吧。
　没什么，这也不算稀奇。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390030a07">
「果然，到这些人多眼杂的地方不伪装一下
不行啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　她并没有回答我的疑问，
却将这重大事件说得如此轻松。
　仿佛只是遭遇恶犬一般。

　虽然我想询问关于刚才那奇怪的现象……

　但如果方才响彻脑门的是真实对话的话，
那现在——不是提问的时候？ 

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390040a01">
「到底是什么？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390050a00">
「…………
　似乎成为暴力政治主义那帮人的目标了。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390060a01">
「……什么时候，哪里，谁？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390070a00">
「现在，这里，我们。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390080a01">
「……很麻烦吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390090a00">
「确实麻烦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　和村正说些没营养的话。
　无论得到情报的方法，还是情报内容自身，
在我看来都完全缺乏真实性所以毫无办法。

　对间接听说的村正来说，就更是如此吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @50, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);
	Move("@StL*", 150, @0, @-50, Dxl1, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390100a07">
「这样默默等待也没意思。
　要去阻止吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390110a00">
「哈啊。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390120a07">
「哥哥你会帮我的吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390130a00">
「这种情况下，那样做似乎比较好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　有些消极的同意。
　无法积极的理由，首先是自己的立场。
加上对现状的思考慢了半拍的缘故。

　不过，我还是努力转变了思想。

　即便六波罗恶行满贯，相对的，
暴力主义者的行为也并非善行。
　是相同的恶行。

　若能事前阻止的话，肯定是最理想的。
　即使刚才所听到的仅仅是幻觉
而白忙一趟……那也无所谓。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390140a00">
「阁下，你知道位置吗？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390150a07">
「嗯。
　这边——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	DeleteStA(0,true);
	
	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　跟着带路的足利茶茶丸在客席间移动。
　村正的表情就像消化不良般，也紧随其后。

　走在前头的少女的步伐，既不紧张也不疑惑。

　……真不可思议。
　她到底拥有怎样的能力呢？

　听取他人远方的对话，似乎还能正确把握地点
——的技能。
　并不单单是比普通人听觉灵敏而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390160a07">
「……啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390170a00">
「？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390180a07">
「对方似乎早了一步。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390190a00">
「阁下？」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390200a07">
「喂，第三代村正。」

{	FadeStR(300, false);
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390210a01">
「……什么啊？」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390220a07">
「听好，这可是我的忠告。
　<RUBY text="·····">保护好哥哥</RUBY>。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390230a01">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	DeleteStA(300,true);


//◆ちゃっ。着火したようなＳＥ
	CreateSE("着火", "se人体_動作_着火音01");
	MusicStart("着火", 0, 1000, 0, 1000, null, false);

//◆少し間を置いて
	WaitKey(2000);
	SetVolume("着火", 1000, 0, null);

//◆どかーん。爆発
//◆爆破跡

	OnSE("se戦闘_破壊_爆発03", 1000);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 150, 0, 1000, 300, null, "cg/data/circle_01_00_0.png", true);
	Delete("@OnBG*");
	DeleteStA(0,true);
	CreateTextureEX("絵背景", 90, @0, @0, "cg/bg/bg039_競技場客席ｃ_01.jpg");
	Fade("絵背景", 0, 1000, null, false);
	CreatePlainEX("絵板写", 90);
	Fade("絵板写", 0, 1000, null, true);
	Zoom("絵板写", 0, 2000, 2000, null, false);
	CreateTextureSP("絵背景爆発", 100, @0, @0, "cg/ef/ef022_汎用武者散華.jpg");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef022_汎用武者散華.jpg", false);

	OnSE("se戦闘_破壊_爆発05", 1000);

	Shake("絵板写", 15000, 0, 1, 0, 0, 1000, DxlAuto, false);
	Zoom("絵背景爆発", 4000, 1500, 1500, Dxl2, false);
	Shake("絵背景爆発", 15000, 2, 5, 0, 0, 1000, DxlAuto, false);

	DrawTransition("黒幕１", 500, 1000, 0, 500, null, "cg/data/circle_01_00_1.png", true);
	FadeDelete("黒幕１", 1500,true);

	Move("絵板写", 3000, 150, 0, Dxl1, false);
	FadeDelete("絵背景爆発", 1500,true);

	FadeDelete("絵板写",1000,true);

	WaitKey(1000);

	SoundPlay("@mbgm34", 0, 1000, true);


	SetNwC("cg/fw/nw男Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0390240e288">
「哈、哈哈哈……」

//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0390250e288">
「很好！
　粉碎了！」

//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0390260e288">
「铲除了堀越公方！
　这是天诛！　天诛恶人啊!!」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390270a00">
「…………你们。」

{	NwC("cg/fw/nw男Ｂ.png");}
//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0390280e288">
「哧!?」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390290a00">
「你们!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼこ。一人倒し
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSPadd("絵背景01", 10000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	OnSE("se戦闘_攻撃_殴る03", 1000);
	FadeDelete("絵背景01", 500, true);
	Delete("黒幕１");

	OnSE("se人体_衝撃_転倒03", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　迈步向前冲出粉尘的包围，将近旁一人殴倒在地。
　那个男人不堪一击，倒到地上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw男Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／流星団Ｃ】
<voice name="ｅｔｃ／流星団Ｃ" class="その他男声" src="voice/md02/0390300e289">
「喂，护卫……
　没死吗？」

//【ｅｔｃ／流星団Ｃ】
<voice name="ｅｔｃ／流星団Ｃ" class="その他男声" src="voice/md02/0390310e289">
「六波罗真是贼运亨通——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼか。倒し

	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSPadd("絵背景01", 10000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("絵背景01", 0, 0, 0, 180, null, true);

	OnSE("se戦闘_攻撃_殴る01", 1000);
	FadeDelete("絵背景01", 500, true);
	Delete("黒幕１");

	OnSE("se人体_衝撃_転倒01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我认为在这银河系之中没有人
会把啰嗦且索然无味的牢骚听完，
而我也不想去寻找那种人。
　去追赶刚才被我打中下颚而倒下的家伙。

　一定还在……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆蜘蛛村正
	StR(1000, 230, 105, "cg/st/3d村正蜘蛛_俯瞰.png");

	OnSE("se人体_足音_鎧歩く03",1000);

	Move("@StR*", 300, 170, @0,Dxl2, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390320a01">
《主君，没受伤吧!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390330a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　躲开遮住视线的剑胄。
　现在能双脚站立也多亏了她，她还在担心我的安危。
这些我都知道，但此刻占据我内心的并非感激之情。

　是愤怒与厌恶。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆周囲確認。血

	FadeDelete("絵背景40",1000,false);
	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,false);
	Fade("フラッシュ",1000,1000,null,false);
	FadeDelete("フラッシュ", 500, false);
	CreateTextureEX("絵ＥＦ15", 100, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ15", 0, 1000, null, true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　死了。

　附近的观众——
　毫无罪过，与幕府毫无关系，
只是为观看装甲竞技而来的市民们——

　多少人成为无言的尸骨。

　负伤者更是数倍之多……
　痛苦声、哀叹声，是谁都没关系，
寻求<RUBY text="··">说明</RUBY>的声音，
形成一个漩涡，渐渐扩大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390340a00">
「……到底想怎样……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆爆破客席
	
	FadeDelete("絵ＥＦ15",1000,true);
	Wait(500);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390350a00">
「这是在干什么!!
　快回答!!」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390360e287">
「哈。
　你说……这是什么？」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390370e287">
「厚颜无耻啊，六波罗！
　可不要说，你们没想到会有上天的制裁！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390380a00">
「我要问的不是这个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　就算认为我是六波罗的人，也随便。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390390a00">
「为什么要将无关的人卷进来。」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390400e287">
「嗯……？」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390410a00">
「说到上天的制裁，是为了世界，为了
世人而言的吧！
　那为什么……用这样的方法!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　周围笼罩着臭味。
　这是——竞技用剑胄的辅助推进器所使用的燃料味道。

　是这些家伙从维修处里偷来临时
制作并引爆的燃料炸弹吧。
　……这样做，不单我们，甚至会波及到周围。
这种状况在做之前不可能不知道！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390420a00">
「简直本末倒置……！」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390430e287">
「呼……
　什么人道主义，
我们再怎样也没有被六波罗的人
说教的道理。」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390440e287">
「我们已成修罗！
　为了成就大义，早有堕落成鬼的觉悟！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　心中的自制力<RUBY text="··">全部</RUBY>消失。

　想将其杀掉，难以忍受。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw男Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390450e287">
「顾虑那么一点牺牲无法打倒恶徒。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390460a00">
「……一点!?」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390470e287">
「没错。
　今日几十人的死，
是为了拯救明日的几百个人。」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390480e287">
「为了打倒你们，拯救大和而牺牲，
会有异议的人，根本不存在！
　不……因此而有异议的都是你们的同类。
受牵连而死去的，根本无碍！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　这男人，简单地决定了他人性命的价值。

　——我明白了。
　我愤怒与厌恶的最本质的理由。

　这家伙跟某处的某人一模一样。
　<RUBY text="·············">只要窥视镜中便能看到那男人</RUBY>，
和他做的事简直一样。

　所以，无法原谅。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390490a00">
「……废话就够了。不想再听了。
　投降吧。」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0390500a00">
「交给司法，接受相应的刑罚吧。」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390510e287">
「你们这些家伙的法律！
　能束缚遵从天命的我们吗？」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390520e287">
「我们仅遵从天命继续战斗。
　直到粉碎六波罗的那天！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390530a00">
「天命……？
　这样的做法是天命吗!!」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390540e287">
「确实如此。
　这才是上天委任的战斗！」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390550e287">
「引导我们的伟大神将，如是说！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390560a00">
「神将……？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390570a07">
「说的是<RUBY text="公主">银星号</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//すぐ続くようなので、なにもしない inc櫻井
//振り返る的な演出。

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

}

..//ジャンプ指定
//次ファイル　"md02_040.nss"