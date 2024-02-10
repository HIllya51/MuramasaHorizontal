//<continuation number="1270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_003.nss_MAIN
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
	#bg068_普陀楽城内部屋_01=true;
	#ev176_十銭銅貨_a=true;
	#ev176_十銭銅貨_b=true;
	#ev176_十銭銅貨_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_004.nss";

}

scene mc03_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_002.nss"


//◆廊下
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg063_永倉邸廊下_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1500, true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030010a04">
「是哪位呢？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030020a00">
「失礼了。我是凑斗。
　我是来探望大尉阁下的。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030030a04">
「哦哦……是您啊！
　您来得正好！」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030040a04">
「请进来吧。
　大小姐，是凑斗大人来了！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030050a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝の部屋。庭に面した和室。bg068流用か？
//◆ＢＧＭ：悲痛っぽいの

	OnSE("se日常_建物_スライド開く04", 1000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg068_普陀楽城内部屋_01.jpg");
	FadeBG(0,true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm31", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　大鸟大尉躺在房间里。
　她脸色苍白，毫无生命的活力。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030060a00">
「大尉阁下。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030070a03">
「啊啊……景明大人……
　你来了呢……」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030080a04">
「真是太好了啊，大小姐……
　一定是你一心一意的思念传达到了天上……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030090a03">
「嗯……太好了……
　能在最后……这样见到你……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030100a00">
「为什么要说这种软弱的话。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030110a00">
「我可以坐在这边吗。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030120a04">
「请吧，请吧。
　我来找坐垫。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030130a00">
「不劳费心。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030140a03">
「呵呵……我自己的身体，我自己最了解……
　景明大人其实也是明白的吧……？」




{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030150a00">
「哈啊……」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030160a04">
「真是可怜啊，大小姐……」


//◆前の台詞と同じ調子で
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030170a04">
「茶点心用天麸罗馒头可以吗，凑斗大人……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030180a00">
「……天麸罗？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030190a03">
「在我生命结束之前……
　已经没有多少时间了…………」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030200a00">
「您说笑了。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030210a04">
「这是会津传统的特产。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030220a00">
「……难道不是冒险心旺盛的点心店进行的新
商品挑战吗？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030230a04">
「历史可以追溯到会津松平家初代家主，正之
公。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030240a03">
「你以为，这种事我会用来开玩笑吗……？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030250a00">
「难道不是……开玩笑吗？」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030260a04">
「这是像玩笑一样的事实……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030270a03">
「请看庭院里的那棵树，景明大人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030280a00">
「树？
　……那棵落叶树怎么了？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030290a03">
「还剩下一片树叶吧……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030300a00">
「是。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030310a04">
「据说，这是三百多年以前，正之公作为高远
领主时，在信州想到的。之后随着正之公的会
津移封，一同带到了这里——」


//◆ガーン
{	OnSE("se擬音_コミカル_ガーン01", 1000);
	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030320a03">
「……那最后的一片树叶落下的时候……
　我一定也会死去吧……」


//◆ガガーン！
{	OnSE("se擬音_コミカル_ガーン02", 1000);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030330a04">
「——所以，在信州也有完全相同的点心作为
传统料理流传下来！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030340a00">
「怎么会——竟然有这种事！」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030350a04">
「世间真是让人无法大意啊。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030360a03">
「这当然无法让你相信……
　但是……我是知道的……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030370a03">
「那柔弱的一片树叶……
　正是我的……生命…………」


//◆風ぴゅー。

{	OnSE("se擬音_コミカル_風ぴゅー", 1000);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030380a00">
「……啊……」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030390a03">
「————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆だっ。なんかがシュバーと駆け抜けてシュバーと帰還

//瞬間的に音量下げる inc櫻井
	SetVolume("@mbgm*", 0, 1, null);

	StL(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStL(0, true);
	DrawDelete("@StL*", 300, @1000, "slide_01_01_1", true);


	CreateSE("シュバッ", "se戦闘_動作_空突進02");
	MusicStart("シュバッ", 0, 1000, 0, 1500, null,false);
	Wait(230);
	CreateSE("シュバッ", "se戦闘_動作_空突進02");
	MusicStart("シュバッ", 0, 1000, 0, 1500, null,false);
	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStR(0, true);

	DrawDelete("@StR*", 300, @1000, "slide_01_01_0", true);

//徐々に戻す inc櫻井
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw景明_通常a.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030400a00">
「…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030410a03">
「啊啊……好像随时都会掉下来……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030420a00">
「不是好像吧，刚才确实……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030430a04">
「来，凑斗大人。请尝一尝吧。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030440a00">
「那么我享用了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030450a00">
「……唔。
　这真是独特的风味。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030460a04">
「嚯，嚯，嚯。
　不用勉强，可以喝些茶哦。
　茶沏得比较浓。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030470a00">
「……不用……
　仔细品尝一下，倒是很意外地……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030480a03">
「啊啊，景明大人……！
　到了我们离别的时候了呢……」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030490a03">
「我最后的请求……请听我说吧……」

//おがみ：音声合わせ修正
//「今、電光の如き速さで庭に飛び出して葉を
//元通りにしてまた駆け戻って来られませんで
//したか？　大尉殿」
{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030500a00">
「刚才，大尉阁下电光石火般冲出庭院，将树
叶恢复原状之后又疾驰回来了是吧？」



{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030510a03">
「呵呵……请不要说那种梦话……」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030520a04">
「凑斗大人，大小姐现在这个样子，连这种鼓
励的话也会让她难过，馒头这边还有，啊啊神
啊，为什么要这样对待大小姐……！」



{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030530a00">
「那我享用了。
　味道习惯之后，感觉还真是美味……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030540a03">
「景明大人——请一定……！
　在那馒头……哦不，在那片树叶飘落之前，
满足我一个心愿吧……！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆風びゅおーん。

	OnSE("se擬音_コミカル_風ぴゅおーん", 1000);
	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030550a00">
「…………」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030560a03">
「啊啊——好像随时都会飘落！
　我的生命……！」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030570a03">
「我的生命！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030580a00">
「不过，完全没有要落下的样子啊。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030590a04">
「大小姐把树叶放回去的时候，用酪蛋白胶粘
上去了。
　只要不是刮起了台风，叶子大概能一直维持
原样吧。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030600a03">
「景明大人……请一定可怜可怜我吧……」



{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030610a00">
「有什么好可怜的。」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030620a03">
「即使不爱我，也不要紧……
　只要稍稍地……怜悯我一下……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030630a03">
「……还是说……景明大人的胸口中。
　是有着……爱情的呢？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030640a00">
「爱情……」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030650a03">
「爱着我的……那种心情……」



{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030660a00">
「没有。」


{	OnSE("se人体_血_吐血01", 1000);
	FwC("cg/fw/fw香奈枝_ショック.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030670a03">
「呃噗——!!」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030680a04">
「啊。
　树叶落下来了。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030690a00">
「我可以再要一杯茶吗。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030700a04">
「请。」


//◆とぽとぽ

{	OnSE("se日常_水_注ぐ01",1000);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030710a04">
「……嗯，有些太浓了呢。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030720a00">
「不，不要紧。」


//◆ショック死中
{	FwC("cg/fw/fw香奈枝_ショック.png","Monoc");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030730a03">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_驚き.png","normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030740a03">
「啊!?」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030750a03">
「啊啊……景明大人！
　这是我这个可怜女人最后的心愿……请一定
……！」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030760a04">
「绕回到那里了呢。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030770a00">
「我能为大尉阁下做些什么吗。」



{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030780a03">
「有的……
　只有景明大人……才能够做到的……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030790a00">
「那是什么事呢。」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030800a03">
「……听了之后，也请一定不要笑我……」



{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030810a00">
「绝不会笑。」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030820a03">
「虽然事到如今迫不得已，但我身为女性……
　竟然拜托男性这种事情，实在羞愧……啊，
简直难以承受……」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030830a04">
「大小姐——鼓起勇气！」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030840a03">
「嗯！
　……景明大人！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030850a00">
「是。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030860a04">
「嗯，天麸罗馒头还剩两个。
　凑斗大人，如果可以的话，您就吃掉吧。」




{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030870a00">
「十分感谢。」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030880a03">
「趁着我还有一口气……！
　在那个馒头掉落之前……！」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030890a04">
「已经掉下来了，大小姐。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030900a00">
「不，没有掉下来。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetVolume("＠OnSE*", 1000, 0, null);
	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030910a03">
「拜托了……！」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030920a04">
「咦？　刚才确实……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030930a00">
「掉下来的是……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030940a03">
「最后，请一定要用景明大人的手——」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030950a04">
「馒头——」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030960a00">
「是树叶。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030970a03">
「将这三枚十元硬币，竖着垒起来。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030980a00">
「遵命。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆がんがんがーん。十銭硬貨を縦積み三枚。一枚ずつ。

//音楽瞬間的に1に　inc櫻井
	SetVolume("@mbgm*", 0, 1, null);


	OnSE("se擬音_コミカル_硬貨積み", 1000);

	CreateTextureSP("1枚", 12000, @0, @0, "cg/ev/ev176_十銭銅貨_a.jpg");
	Wait(70);
	CreateTextureSP("2枚", 13000, @0, @0, "cg/ev/ev176_十銭銅貨_b.jpg");
	Wait(80);
	CreateTextureSP("3枚", 14000, @0, @0, "cg/ev/ev176_十銭銅貨_c.jpg");


	CreatePlainEX("絵板写", 15000);
	Fade("絵板写", 0, 1000, null, true);
	
	SetBlur("絵板写", 8, true, 400, 200);

	Fade("絵板写", 0, 500, Dxl1, true);
	Zoom("絵板写", 100, 1000, 1000, Dxl1, false);
	Fade("絵板写", 100, 1000, null, true);

	Zoom("絵板写", 500, 1500, 1500, Dxl1, false);
	Fade("絵板写", 500, 0, null, true);
	Zoom("絵板写", 1500, 1500, 1500, Dxl1, false);

//戻す inc櫻井
	SetVolume("@mbgm*", 1000, 1000, null);



	SetFwR("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030990a03">
「做到了————————————!?」


{	FwR("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0031000a04">
「好厉害————————————!!」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031010a00">
「因为我修炼过这个技能。」


{	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031020a03">
「为什么!?」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031030a00">
「我的妹妹很擅长，结果我就和她竞争了。」



{	FwR("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0031040a04">
「这样的兄妹很奇怪啊!?」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031050a00">
「顺便一提，我的妹妹能够垒起十枚。」


{	FwR("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031060a03">
「那是超人啊!!　根本不觉得能赢过她!!」


{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0031070a04">
「先冷静一下吧，大小姐。
　请用茶。」


{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0031080a04">
「叶子也还剩下一个。」


{	FwR("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031090a03">
「嗯……那我享用了……」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("1枚");
	Delete("2枚");
	Delete("3枚");
	Delete("絵板写");
	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//◆かこーん。

	OnSE("se擬音_コミカル_シシオドシ", 1000);

	Wait(500);

	SoundPlay("@mbgm18", 0, 1000, true);


	StL(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw景明_笑顔a.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031100a00">
「你这么有精神，我放心了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　香奈枝用毛巾擦着脸。我看着她，说出了坦
诚的想法。
　卸妆之后，她的肌肤上有着血气通畅的健全
肤色。

　看起来，已经没有必要睡在被褥上了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031110a00">
「……似乎是有些太有精神了呢。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031120a03">
「是吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031130a00">
「看起来，不像是被子弹击中后没过几天的样
子。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031140a03">
「是正巧没有击中要害吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　侍从纱代离开了。

　室内只剩我们二人，让我感到有些空旷。这里完全像
是个客厅，看起来不像是个病房。
　甚至连药味都没有。

　也就是说，至少从昨晚开始，就没有必要再对香奈枝
进行治疗了。
　……真是令人惊讶的恢复能力。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031150a00">
「本来我就知道没有击中要害，
但即使如此……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031160a03">
「大概是因为回到了故乡吧。
　虽然我也并不是那么想家，但回来之后，果
然还是会觉得水和空气让身体感到舒适。」



{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031170a03">
「饭也很好吃。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031180a00">
「原来如此。
　确实，这种因素影响很大。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031190a03">
「明天应该就能像原来那样行动了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031200a00">
「请一定不要勉强自己。
　……不过我也终于放心了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031210a00">
「我听说拒绝探望的时候，已经很担心了。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031220a03">
「那是因为，想到让你看到我卧病的样子，会
招致你多余的担心，所以我才这样拜托他们的
……
　看来没有表达清楚呢。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031230a03">
「结果让你担心了。
　实在抱歉，景明大人。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031240a00">
「……不。大尉。
　这种事完全不用道歉。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031250a00">
「本来，大尉阁下受伤就是因为我的不小心。
我才是必须要郑重地道歉。
　不过。」



{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031260a03">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031270a00">
「不过——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"mc03_004.nss"