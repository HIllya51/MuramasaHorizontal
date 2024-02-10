//<continuation number="1030">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_024vs.nss_MAIN
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
	#bg071_普陀楽城内張り出し_03=true;
	#bg001_空a_03=true;
	#ev956_童心装甲_a=true;
	#ev956_童心装甲_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_同田貫=true;

	$PreGameName = $GameName;

	$GameName = "mb02_025vs.nss";

}

scene mb02_024vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_023vs.nss"

//◆テラスっぽいとこ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg071_普陀楽城内張り出し_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 1000, "slide_01_03_1", true);

	Wait(200);

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0010a09">
「哎呀，哎呀……
　做得稍微有点过头了吗。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0020a09">
「原本以为只要包围住了就能就地投降了呢。
　真是胆大包天啊。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0030a09">
「算了，接下来就交给常暗吧……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0040a02">
「开什么玩笑
　怎能让你作壁上观。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0050a09">
「哦？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条
	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(500,true);
	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0060a02">
「如果想做个悠闲的看客，那就请去彼岸世界。
　在这个世间，我可不同意。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0070a09">
「哦哟，这位是，
　改夫人……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0080a02">
「我叫绫弥一条。
　姓和名，按照这个顺序就好。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0090a09">
「这是真名？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0100a02">
「是的。不过，叫哪个都行。
　反正你死定了。」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0110a09">
「呵呵呵……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0120a02">
「…………」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0130a09">
「看来你不是为求逃生才行至此处的喽？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0140a02">
「当然是追你而来。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0150a09">
「追贫僧吗……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0160a02">
「你那脑袋真是好认。
　黑暗之中闪得好不耀眼。」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0170a09">
「唔哈哈哈！
　那是、那是。贫僧平日里经常注意磨光。」


{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0180a02">
「我要取你那光头，挂在城墙头上。
　正好可以代替灯泡。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0190a09">
「呵呵呵……
　多么执着的杀意啊。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0200a09">
「你就如此不可原谅我这童心和尚吗？」


{//◆酷薄な笑い
	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0210a02">
「绝不原谅。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0220a09">
「要杀吗？」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0230a02">
「要杀。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0240a09">
「想撕裂贫僧这副皮囊吗？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0250a02">
「撕裂捣碎成粉。
　拽出五脏六腑供人享用。挖出眼珠和睾丸喂
给乌鸦。」

{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0260a02">
「在你这秃驴一息尚存之时。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0270a09">
「真是畅快。
　但是，所为何故……？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0280a02">
「何故？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0290a09">
「…………」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0300a02">
「这个普陀乐城无所不有。
　金银宝藏，武器装备，甚至最新机械……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0310a02">
「却连一面镜子都没有。」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0320a09">
「呵。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0330a02">
「……」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0340a09">
「呵呵呵呵呵呵呵……！」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0350a02">
「——啧。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆踏み込んで仕掛ける
//◆なんか飛んできて妨害。がしーん。
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE01b","se戦闘_攻撃_剣戟弾く01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg071_普陀楽城内張り出し_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0360a02">
「呃!?」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/024vs0370b40">
《主君！　是剑胄！》


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0380a02">
「什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆同田貫正国·亀形態。なんか飛んでる。
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	DrawDelete("絵黒幕", 150, 100, "slide_01_01_1", true);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,800,null,false);

	StL(1000, @360, @200,"cg/st/3d同田貫亀_俯瞰.png");
	Move("@StL*", 3000, @-90, @0, null, false);
	FadeStL(300,false);


	Wait(1000);

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0390a02">
「这混蛋……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/024vs0400b40">
《是来派吗……？
　不，是延寿？》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 200, @-180, @0, Axl2, false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//◆童心と正国
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg071_普陀楽城内張り出し_03.jpg");
	StL(1100, @-100, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(0,true);
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転",200, 100, "slide_02_01_1", true);

	CreateSE("SE01b","se戦闘_動作_鎧_着地01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StCL(1000, @130, @350,"cg/st/3d同田貫亀_正面.png");
	Rotate("@StML*", 0, @0, @180, @0, null,true);

	Wait(500);
	Move("@StML*", 300, @0, @60, Dxl2, false);
	FadeStCL(300,true);


	CreatePlainSP("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 6, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");
	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0410a09">
「哎呀，真是丢脸，丢脸啊。
　游佐和尚的确没有在心中置备一面镜子。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0420a09">
「因为不能活在过去种种的回忆之中啊……
　我每天都很享受，连这些都顾不上呢。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0430a02">
「…………
　为何要做那种事？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0440a09">
「什么事？」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0450a02">
「你这家伙对冈部小姐所做的混账事。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0460a09">
「啊，那个啊。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0470a09">
「因为想做啊。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0480a02">
「…………
　那之前的能乐算怎么回事。」


//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0490a02">
「那个“赖政”……
　那一切都是为了引小姐<RUBY text="··">上钩</RUBY>吗？」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0500a09">
「非也。那个也不过是想做而已。
　与赖纲公的关系已经超越敌我双方的立场，
和他是多年的朋友。一想到他死于非命，贫僧
就感到难以排解的情怀涌上心头……！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0510a09">
「身体随着翻涌的心潮舞动了起来。
　你可满意？」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0520a02">
「…………
　那么。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0530a02">
「你用多年好友的骨头做成能面，
又是为何。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0540a09">
「想做而已啊。
　觉得<RUBY text="····">甚是有趣</RUBY>呐。」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0550a02">
「…………」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0560a09">
「呵呵呵……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0570a02">
「你这混蛋……
　想怎么做就怎么做吗。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0580a09">
「自然！」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0590a02">
「想过是否会被饶恕吗？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0600a09">
「谁敢不饶恕？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0610a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0620a09">
「司法吗？
　真是遗憾。这世间的法律都是为能让权贵之
人免于责罚而制定的。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0630a09">
「或者，是神佛？　天理难容？
　不过……我童心和尚无病无灾，经历过枪林
弹雨，依然活得很好……」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0640a09">
「那么。
　究竟是谁不饶恕贫僧呢？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0650a02">
「是我。」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0660a09">
「……哦。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0670a02">
「管他法律还是神佛。
　我是绝对不会饶恕你的。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0680a09">
「……你是叫一条吧。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0690a09">
「你是听命于何人？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0700a02">
「没人命令我。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0710a09">
「取了我的首级，又能怎样呢。
　有赏金吗？　还是说，可以得到地位？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//嶋：修正（みてえ）【090930】
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0720a02">
「愚蠢。
　你这种渣滓般的性命，就连一文钱也没人愿
意出。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0730a09">
「那么你真的……
　只是因为<RUBY text="····">那份愤怒</RUBY>吗？」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0740a09">
「仅凭义愤就想杀了我吗？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0750a02">
「正是。
　<RUBY text="····">仅此而已</RUBY>。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0760a02">
「正因无法饶恕才要取你性命。
　就凭我和——正宗。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵板*");

//◆一条＆正宗
	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureEX("絵演窓右/絵演右", 4100, 235, 0, "cg/bg/bg071_普陀楽城内張り出し_03.jpg");
	CreateTextureEX("絵演窓右/絵背景100", 4200, Center, InBottom, "cg/st/st一条_通常_制服b.png");
	CreateTextureEX("絵演窓右/絵背景200", 4150, Center, InBottom, "cg/st/3d正宗天牛虫_正面.png");
//	Move("絵演窓右/絵背景100", 0, -313, -405, null, true);
	Rotate("絵演窓右/絵演右", 0, @0, @180, @0, null,true);
	Move("絵演窓右/絵背景*", 0, @100, @0, null, true);
	Move("絵演窓右/絵背景200", 0, @-150, @350, null, true);

	OnSE("se人体_足音_鎧歩く03",1000);

	Fade("絵演窓右/絵背景*", 200, 1000, null, false);
	Fade("絵演窓右/絵演右", 200, 1000, null, false);

	Move("絵演窓右/絵背景100", 500, @200, @0, Dxl2, false);
	Move("絵演窓右/絵背景200", 500, @200, @0, Dxl2, false);
	Move("絵演窓右/絵演右", 500, @100, @0, Dxl2, true);

	Wait(200);

/*
	StR(1200, @60, @0,"cg/st/st一条_通常_制服.png");
	StCR(1100, @190, @0,"cg/st/3d正宗天牛虫_正面.png");
	FadeStR(300,false);
	Wait(50);
	FadeStCR(300,true);
*/
	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0770a02">
「根本不需要别的理由。
　不需要。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0780a09">
「……」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0790a09">
「哈哈——」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0800a02">
「……」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0810a09">
「啊哈哈哈哈哈哈哈哈!!
　是吗！　是吗！　<RUBY text="··">是吗</RUBY>!!」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0820a09">
「纯真无邪的小姐，
　还有正宗——相州五郎入道正宗!?」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0830a09">
「总有一天——一直在想总有一天会出现。
　你们这样的人！」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0840a02">
「什么？」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0850a09">
「婆娑罗之真髓并非只在炫奇标新。
　随心而舞——不惑——无耻——无思虑！」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0860a09">
「忠于欲念才是婆娑罗！
　这样的活法会得到饶恕吗!?」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0870a09">
「不……不会被饶恕。
　<RUBY text="····">得人饶恕</RUBY>又有何趣！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0880a09">
「尽管否定吧！
　不足挂齿的森罗万象，尽情集中你的意志与
力量阻贫僧之路吧！」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0890a09">
「正道<RUBY text="··">英雄</RUBY>尽管袭来吧!!」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0900a02">
「——」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0910a09">
「不超越苦难何来坚守之道。
　不与正道对决何来婆娑罗。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0920a09">
「破邪圣甲——五郎正宗！
　让我好等！」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0930a02">
「……看来你作好准备了？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0940a09">
「这是什么话。
　何需准备。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0950a09">
「我要踏平你们。
　而后成全我毕生大业。」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0960a09">
「从不回头，随欲而生，
不受天罚，完满寿终……
　作为世间的<RUBY text="··">逍遥</RUBY>男人！」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0970a02">
「怎能让你得逞!!
　正宗!!」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/024vs0980b40">
《是!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	StR(4900, @60, @0,"cg/st/st一条_装甲_制服a.png");
	FadeStR(0,true);
	Delete("絵演窓右/絵背景100");
	FadeDelete("絵板写", 300, false);
	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068a]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0990a02">
「鬼若现世，灭尽恶鬼。
　恶若现世，断绝邪恶。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	WaitAction("絵板写", null);
	CreatePlainSP("絵板写", 5000);
	StR(4900, @60, @0,"cg/st/st一条_装甲_制服b.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, false);
	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068b]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs1000a02">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆正宗変身
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStR(0,true);


	CreateTextureSP("絵演窓右/絵背景200", 4150, Center, InBottom, "cg/st/3d正宗_立ち_通常.png");
	Move("絵演窓右/絵背景*", 0, @250, @0, null, true);

//	StR(5200, @0, @0,"cg/st/3d正宗_立ち_通常.png");
//	DeleteStCR(0,true);
//	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

//	CreatePlainSP("絵板写", 5000);
//	StL(1100, @-60, @0,"cg/st/st童心_装甲_私服.png");
//	FadeStL(0,true);
//	FadeDelete("絵板写", 300, true);

	Wait(1000);

	CreateSE("SE01","se特殊_鎧_装着03");

	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/ev/ev956_童心装甲_a.jpg");
	SetBlur("絵背景100", true, 3, 300, 100, false);
	Zoom("絵背景100", 0, 1500, 1500, null, true);

	MusicStart("SE01",0,1000,0,700,null,false);
	Zoom("絵背景100", 1500, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 1000, 1000, null, true);
	Delete("絵演窓右/絵背景200");
	DeleteStA(0,true);

	Wait(1000);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs1010a09">
「赋天冥府。予地魔道。
　所踏之路，修罗之道。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正国変身
	#av_同田貫=true;

/*
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StL(1000, @0, @0,"cg/st/3d同田貫_立ち_通常.png");
	DeleteStCL(0,true);
	FadeStL(0,true);
	FadeDelete("絵フラ", 1000, true);

//◆正宗ＶＳ正国

	CreateSE("SE02a","se擬音_雰囲気_抜刀01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitAction("@", null);
	CreatePlainSP("絵板写", 5000);
	StR(1200, @0, @0,"cg/st/3d正宗_立ち_抜刀.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 200, true);

	CreateSE("SE02b","se戦闘_動作_刀構え02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	StL(1100, @0, @0,"cg/st/3d同田貫_立ち_陰義.png");
	FadeStL(0,true);
	FadeDelete("絵板写", 200, true);
*/

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着04");
	CreateSE("SE03","se特殊_鎧_装着06");
	MusicStart("SE01",0,1000,0,700,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	Zoom("絵背景100", 600, 2000, 2000, Axl2, false);
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSP("絵背景100大", 10000, 0, 0, "cg/ev/resize/ev956_童心装甲_bl.jpg");
	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/ev/ev956_童心装甲_b.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 200, 70, false);

	OnSE("se特殊_鎧_装着03",1000);

	Move("絵背景100大", 3000, -1024, @0, Dxl1, false);
	Fade("絵フラ", 1000, 0, null, true);

	Wait(1000);
	MusicStart("SE02",0,1000,0,1250,null,false);
	Fade("絵背景100", 1000, 1000, null, false);
	Zoom("絵背景100", 1000, 1000, 1000, Axl1, true);
	MusicStart("SE03",0,1000,0,1250,null,false);
	EffectZoomadd(10000, 500, 100, "cg/ev/ev956_童心装甲_b.jpg", true);

	Wait(1500);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵背景100");
	Delete("絵背景100大");

	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureSP("絵演窓右/絵演右", 4100, -835, -320, "cg/bg/resize/bg071_普陀楽城内張り出し_03ｌ.jpg");
	CreateTextureSP("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/resize/3d正宗_立ち_通常ｌ.png");
	Move("絵演窓右/絵背景100", 0, -1012, -661, null, true);

	CreateTextureSP("絵背景200", 3100, Center, Middle, "cg/st/resize/3d同田貫_立ち_通常l.png");
	Move("絵背景200", 0, -1159, -1463, null, true);
	CreateTextureSP("絵演左", 3000, -385, -300, "cg/bg/resize/bg071_普陀楽城内張り出し_03ｌ.jpg");

	Move("絵背景200", 3000, -1159, -1563, Dxl2, false);
	Move("絵演窓右/絵背景100", 3000, -1012, -561, Dxl2, false);
	Move("絵演窓右/絵演右", 3000, @0, @60, Dxl2, false);
	Move("絵演左", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d村正標準_立ち_通常.png");
//	FadeStR(0,true);

	FadeDelete("絵フラ", 1000, true);

	Wait(300);


	SetFwC("cg/fw/fw正宗_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs1020a02">
「上……
　记得为自己念经超度，和尚!!」


{	FwC("cg/fw/fw同田貫_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs1030a09">
「哈哈哈！
　念什么经，早就抛到脑后了!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆激突。ぞがーん。
	CreateSE("SE03","se戦闘_衝撃_衝突01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	CreatePlainSPadd("絵板写上", 5100);
	CreatePlainSP("絵板写", 5000);
	Zoom("絵板写上", 500, 1500, 1500, Axl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Axl3, false);

	Fade("絵色白", 500, 1000, null, true);
	$残時間=RemainTime("SE03");
	FadeDelete("絵板写上", 200, false);
	CreateColorEX("絵色黒", 10010, "#000000");
	Fade("絵色黒", $残時間, 1000, null, true);

	ClearFadeAll(100, true);


}

..//ジャンプ指定
//次ファイル　"mb02_025vs.nss"