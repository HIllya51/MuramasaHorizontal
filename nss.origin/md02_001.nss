//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_001.nss_MAIN
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
	#bg033_湊斗家一室_01=true;
	#bg051_皆斗家居間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_002.nss";

}

scene md02_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md01_037.nss"


//◆過去回想。子供光に講義する少年景明

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	SoundPlay("@mbgm26", 0, 1000, true);

//■CGないので仮絵 inc櫻井
//	CreateTexture("勉強会", 300, @0, @0, "cg/bg/bg051_湊斗家居間_01.jpg");
//	Fade("勉強会", 0, 1000, null, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	SetNwC("cg/fw/nw景明.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010010a00">
「……方天地初发之时，于高天原成一神，
其名，天之御中主神。
　次，高御产巣日神。次，神产巣日神。」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010020a00">
「此三柱神者，并独神成坐而隐身也。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010030a14">
「……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010040a00">
「次，国椎如浮脂，譬犹水母之浮水上者。
于时，若苇牙因萌腾之物而成神。
其名，宇摩志阿斯诃备比古迟神。
　次，天之常立神。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010050a00">
「此二柱神，亦独神成坐而隐身也。」

//◆寝息
{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010060a14">
「……哧……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010070a00">
「光。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 1000, @0, @0, "cg/bg/bg033_湊斗家一室_01.jpg");
	SetTone("絵背景", Sepia);
	Fade("絵背景", 300, 1000, null, true);
	Delete("勉強会");


//◆ぱこ。
	OnSE("se擬音_コミカル_殴り01", 1000);

	WaitKey(1000);
	SetNwC("cg/fw/nw光.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md02/0010080a14">
「啊。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010090a00">
「请好好地听我讲。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010100a14">
「我也不是不想努力。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010110a00">
「你怎么说也是统大人的后继，凑斗的巫女。
　连古事记书也没学好，以后可会丢人哦。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010120a14">
「厌倦了……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010130a00">
「不学到厌烦为止就无法掌握。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010140a14">
「全是些大和神话。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010150a00">
「那是自然。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010160a14">
「偶尔也想听些不同的。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010170a00">
「要是国语或算术的话，跟我学倒不如去学校
跟老师好好学比较好。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010180a14">
「讨厌那些家伙的说教。
　只会自顾自地说，
都不理会人家听到没听到的。」

//【光】
<voice name="光" class="光" src="voice/md02/0010190a14">
「虽然景明的声音听着舒服就睡了，
但我讨厌那些家伙的声音，
还没听就想睡了。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010200a00">
「……所以你的成绩才会那样不好吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆ぱこ

	OnSE("se擬音_コミカル_殴り01", 1000);

	SetNwC("cg/fw/nw光.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md02/0010210a14">
「啊呜。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010220a00">
「不要用那些家伙这样的说法称呼老师。
　一个人要应对这么多人很不容易的。
　要带着感谢的心情去听课啊。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆ぱこ
	OnSE("se擬音_コミカル_殴り01", 1000);

	SetNwC("cg/fw/nw景明.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010230a00">
「……而且，我的讲解可不是摇篮曲。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010240a14">
「啊唔……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010250a00">
「继续咯。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010260a14">
「说点其他嘛——」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010270a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010280a00">
「那说点什么好呢？」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010290a14">
「嗯——」

//【光】
<voice name="光" class="光" src="voice/md02/0010300a14">
「说些其他的神的故事怎样？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010310a00">
「大和以外的？」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010320a14">
「嗯。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010330a00">
「说到神话，不管哪个国家
都不会有太大的变化。
　只是神的名字不同而已。」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010340a00">
「……这么说似乎有点过分……」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010350a14">
「例如？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010360a00">
「比如希腊神话……
　世界最初是混沌不清的，
之后才有大地、冥府和爱，接着诞生了
暗与夜，光和昼从暗和夜中衍生出来。」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010370a00">
「而大地又衍生出了天空和海洋。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010380a14">
「哦哦……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010390a00">
「看吧，都是些相似的东西。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010400a14">
「完全不一样。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010410a00">
「……唔？
　嗯，根据解释不同吧……」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010420a14">
「继续——」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010430a00">
「……<RUBY text="乌剌诺斯">天空</RUBY>支配世界，
<RUBY text="盖亚">大地</RUBY>作为其妻子，
诞下百臂巨人及独眼巨人。
　但天空讨厌巨人们，而将他们弃于冥府。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010440a14">
「过分。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010450a00">
「之后，虽然<RUBY text="乌剌诺斯">天空</RUBY>和<RUBY text="盖亚">大地</RUBY>
生出十二泰坦主神……
　大地怨恨于天空对待巨人的做法，
便命令泰坦将父亲打倒。」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010460a00">
「最后十二主神最小的弟弟<RUBY text="克罗诺斯">农耕</RUBY>做到了。
　但他最终也是犯了和父亲相同的罪孽，
同样倒在自己儿子脚下。」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010470a00">
「这个儿子就是<RUBY text="宙斯">主神</RUBY>。
　他作为王，让神明迎来了全盛时期。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010480a14">
「有趣。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010490a00">
「是吗？」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010500a14">
「继续！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010510a00">
「不行。到此为止。
　回到古事记的学习上。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010520a14">
「继续啦——」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010530a00">
「……下次吧。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010540a14">
「呣。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010550a00">
「撅嘴也没用。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010560a14">
「那我要提问。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010570a00">
「什么？」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010580a14">
「<RUBY text="····">乌剌诺斯</RUBY>和<RUBY text="··">盖亚</RUBY>是结婚了，
然后有了孩子的吧？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010590a00">
「嗯。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010600a14">
「但乌剌诺斯是盖亚所生的吧？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010610a00">
「……是啊。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010620a14">
「母子结婚？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010630a00">
「是那样。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010640a14">
「那样不是不可以吗？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010650a00">
「人类不可以。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010660a14">
「神就可以了？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010670a00">
「神也有神的法则的吧。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010680a14">
「呼。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010690a00">
「来，继续学习。」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010700a14">
「好的……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆回想。さっきの
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, -240, -460, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星l.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw光_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md02/0010710a14">
「若人类背叛母亲而夺取父亲，就是违背人法。
但神有神的法，神的法会饶恕。
　——因此我要打倒众人。证明我至强的力量。
超越人而被称作神。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010720a14">
「成为神，就能将我的欲望<RUBY text="···">正当化</RUBY>、
　将人世破坏，就能解放被人法囚困的父亲……」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010730a14">
「没有任何阻隔，光和父亲就能面对面！
　就能将被母亲抢走的父亲夺回来！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆消去
	EfRecoOut1(300);
	Delete("絵回想*");
	SetTone("背景１", Monochrome);

	CreateColorSP("絵色黒", 5000, "#000000");

	EfRecoOut2(600,true);

	SoundPlay("@mbgm32", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　父亲。
　父亲……

　<RUBY text="·····">将父亲夺回</RUBY>。
　你是这样说的吗？

　那就是你的愿望吗？
　光。

　……没错。事实……
　你的父亲被<RUBY text="····">抹杀掉了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：本家と明堯
	EfRecoIn1(18000,600);

	Fade("絵色黒", 0, 0, null, true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_皆斗家居間_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st署長_通常_制服.png");
	CreateTextureSP("絵回想300", 2200, 150, InBottom, "cg/st/st本家_通常_私服.png");

	EfRecoIn2(300);
	WaitKey(1000);

//◆消去

	EfRecoOut1(300);

	Fade("絵色黒", 0, 1000, null, true);
	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　父亲背离了人道。
　因而无法成为父亲，而将父亲之名舍弃。

　但那并非父亲的本意。
　可是这世界的法，并未承认父亲那为人父所做的事。

　最终，父亲屈服于法。
　所以，绝对无法以父亲的身份与光见面。

　也就是说，光的父亲被社会秩序所剥夺。
　光渴望父亲而成为世界的破坏者
——若是这样，确实不显得疯狂，
反而有道理。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010740a00">
（明尧大人）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我思虑着作为养父的那个人的苦恼。

　他在那之后，心里到底怀着
怎样的想法而活着呢？
　后悔吗？……想开了吗？

　而如今，知道光的愿望后会有何种想法？
　为夺回父亲这样的愿望而成为“银星号”，
摒除母亲、毁灭世界、超越人类成为神
——要是他知道，她已达到极致的暴力。

　会怎样想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010750a00">
（不）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我才是，应该怎样想。

　那时候，我还没到达理解自身责任
意义的年龄。但那无法成为解释。
最终还是将光的父亲抹杀——
导致今天这样的事态，都因我的决断造成。

　我该思考什么？
　我该做什么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010760a00">
（我……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　该怎样————？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ホワイトアウト

	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",3000, 3000, null, true);

	SetVolume("@mbgm*", 1000, 0, null);

//■ClearWaitやClearFadeだとどうしても一瞬黒が出てくるので、何も使用せず終わり inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_002.nss"