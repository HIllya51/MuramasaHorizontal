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

scene md01_002.nss_MAIN
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
	#bg025_坑道山脈と森b_02=true;
	#bg020_山脈坑道_01=true;
	#bg093_山間の村a_01=true;
	#bg023_弥源太の家_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_始祖村正=true;
	#voice_on_飽間=true;

	$PreGameName = $GameName;

	$GameName = "md01_003.nss";

}

scene md01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_001.nss"

//◆※以下、過去パートの絵には全てモノクロマスク施す
//あきゅん「演出：どこまでマスク？　シーンもそうだし、顔窓までモノクロ？　とりあえず背景と立絵だけ」

//◆bg025b
//◆合戦ＳＥ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateEffect("絵演モノクロ", 19998, 0, 0, 1030, 580, Monochrome);
//	CreateEffect("絵演モノクロ", 10000, Center, Middle, 1030, 580, "Monochrome");
	SetAlias("絵演モノクロ","絵演モノクロ");
	OnBG(100,"bg025_坑道山脈と森b_02.jpg");
	CreateSE("SEL01","se背景_ガヤ_合戦01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　天地间，争斗的范围被扩大。
　以鲜血来洗涤鲜血——简直就是尸骨成山。

　在地上，弓箭手射出的箭矢，穿过敌阵的间隙，
骑马的将帅率领的士兵们，手执武器，结阵挺进。
　在上空，互相视为劲敌的武士，大声通报自己的姓名，
乘着凛冽的风，使用太刀激烈地交锋。

　这是战争的场面。
　中世纪……一个被这样称呼的时代。

　仔细观察的话，也能更为正确地区分。
　剑胄的形状，武者的战斗形式，步兵的武器装备——
这些如实地说明这场战争既非源平合战，亦非
战国大名的反抗。

　更重要的是，战场上零星可见的旗帜……
　红底上绘着金色太阳的奢华锦旗。

　那是，<RUBY text="··········">任何一方阵营中都有的</RUBY>。
　发生那样事态，那样战争的年代，即是在大和史上
也很罕见。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw二世村正_通常.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020010a15">
「父亲。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我的头向发出声音的方向转去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg020a
//◆二世村正
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateEffect("絵演モノクロ", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("絵演モノクロ","絵演モノクロ");
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStL(500,true);

	SoundPlay("@mbgm23",0,1000,true);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　一位小巧的虾夷女性。
　我从旁仰视着她的脸——仰视着。就是说
我的身高比这位女性矮。

　她出声的对象并不是我。
　而是站在前面的，一个男人的背影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆始祖村正
	StR(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");
	FadeStR(500,true);

	SetFwC("cg/fw/fw始祖村正_通常.png","Monoc");

	#voice_on_始祖村正=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020020b30">
「能看到过程吗？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020030a15">
「吾辈的失利吧。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020040b30">
「是啊。
　……佐佐木又来了一次他很擅长的叛变。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　有些烦躁的男声。
　听到那个，我也注意到了。

　一队逆转了兵刃方向，向直到刚才为止的同伴
发起了进攻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_険しい.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020050b30">
「没办法了。」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020060a15">
「饱间大人似乎也无法脱身。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020070b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020080a15">
「那位大人的赤心忠义，
也敌不过佐佐木的背叛吗。」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020090b30">
「没有这种事！」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020100a15">
「如今就要输了……」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020110b30">
「只是一时。
　吾辈奉侍的吉野的主上才是真正的王，
如今在京御座上被尊奉的血脉，
不过是擅自称王罢了。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020120b30">
「最终，正义的人会胜利。
　世界就是如此运行的。」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020130a15">
「……」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020140b30">
「不信吗。」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020150a15">
「无法相信。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020160b30">
「不得不信。」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020170a15">
「吾所信任的，只有顶天立地的父亲。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020180b30">
「……」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020190a15">
「相信父亲传授给吾的锻造技术。
　也相信父亲<RUBY text="····">从此之中</RUBY>找到的，剑胄之极致。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020200a15">
「就这样，继承父亲的足迹。
　这个才是，吾之天命。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020210b30">
「……是吗。」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020220a15">
「回去吧，父亲。
　战争结束了。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020230b30">
「嗯……」

{//◆顔ＣＧ無し。ネームプレート「？」
	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020240a01">
「结束了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　不经意地，<RUBY text="·">我</RUBY>发出了声音。
　不是我的声音。

　我听到了从自己的身体里发出的，异质之声……

　但，那是非常熟悉的感觉。

　每次变成装甲，都有相同的体验。
　只是这次的声音，相较于以往，有些幼小。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ネームプレート「村正」
//◆以下、過去パートは全て同様
	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020250a01">
「母亲。战争，结束了吗？
　已经，不打了吗？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020260a15">
「……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020270b30">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　语气并不协调，就连我这个外人听来也能明白。
　幼小声音的主人——我的熟人——误解了两人的对话。

　那位女性，轻轻地点了点头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_疑念.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020280a15">
「还没。
　还要继续。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020290a01">
「要到何时？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020300a15">
「不知。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020310a01">
「……战争，是从什么时候开始的？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020320a15">
「出生之前，一直。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020330a01">
「我出生之前？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020340a15">
「是的。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020350a01">
「母亲呢？
　母亲出生的时候呢？」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020360a01">
「没有，战争吗？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020370a15">
「……有。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020380a01">
「外公呢？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020390b30">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020400a01">
「外公出生的时候呢？
　没有，战争吗？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020410b30">
「……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020420b30">
「有。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　传说，这场战争的风暴吹了百年，荒废了大和全土。

　南北朝争乱。

　我的剑胄——村正，生活的世界。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蝦夷村。bg093
//◆村正家。bg023
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateEffect("絵演モノクロ", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("絵演モノクロ","絵演モノクロ");
	OnBG(100,"bg093_山間の村a_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	CreateColorSP("絵暗転", 10000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg023_弥源太の家_01.jpg");
	FadeBG(0,true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	SetFwC("cg/fw/fw二世村正_通常.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020430a15">
「父亲。
　饱间大人来了。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020440b30">
「哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飽間
	StR(1000, @0, @0,"cg/st/st飽間_通常_私服.png");
	FadeStR(500,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　带有乡土味的虾夷村的朴素房屋。
　出现在那里的是，气度堂堂的武人。

　是统领着一郡一军的将领。
　应是与一介虾夷有着天与地的身份区别……
但是，家主并未起身，
甚至没有打个像样的招呼。

　而武人，也并没有露出不快的神色。
　……是那样的交情吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_通常.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020450b30">
「汝没事，比什么都好。」

{	#voice_on_飽間=true;
	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020460b50">
「看到了吗。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020470b30">
「嗯。」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020480b50">
「佐佐木也是个让人吃惊的混蛋。
　绝不会弄错背叛的时机和场合。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020490b50">
「吉野山的各位应大方地赐予他地位。
　正因你们将那家伙的要求置若罔闻，
事情才会演变至此。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020500b30">
「利欲熏心之辈不可用。
　若是怎么都会背叛的男人，
一开始就该当成敌人。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020510b50">
「……他倒是也有他的道理。
　追求领地追求官位，东奔西跑忙碌钻营，
是为了守护整个家族。」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020520b30">
「这是本末倒置。
　真正的将领，应当为了守护大义
去使用整个家族的力量。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020530b30">
「为了守护家族而舍弃大义，这算什么
武者。」

{	FwC("cg/fw/fw飽間_沈鬱.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020540b50">
「嗯……」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020550b30">
「饱间大人，即便到了家族家臣全
都死绝之时，也不会跑去投靠北朝吧。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020560b50">
「那当然。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020570b30">
「这个伊势国乃神官脚下。
　人民尊崇天皇，憎恶反贼的心情，比任何
国家都要强烈。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020580b30">
「绝不向伪帝屈服。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020590b50">
「嗯。」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020600b30">
「不得不赢……」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020610b50">
「正因如此。
　村正。我们需要你的力量。」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020620b30">
「……」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020630b50">
「虽然嘴上不好说，王似乎已经等不
下去了。
　楠木殿下也是。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020640b30">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw飽間_通常b.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020650b50">
「势州桑名市，千子村的锻造长是五郎正宗
的再世……
　这个传闻传到了王的耳朵里，颁布锻造剑胄
的诏命——已有三年。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020660b50">
「却仍然做不出吗。」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020670b30">
「还不行。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020680b50">
「若是你的剑胄裹着楠木殿下的身子，率领南朝
全军蜂拥而出的话，北朝什么的一夜之间便会
悉数灭亡。」

{	FwC("cg/fw/fw飽間_沈鬱.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020690b50">
「大和人民所期待的平稳也就能够到来了
吧……」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020700b30">
「吾也认为必须这样。
　正因如此，才无法轻易下决心去锻造。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020710b30">
「因为不能反悔重做……」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020720b50">
「还没找到方法吗。」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020730b30">
「比起这个，还是方向的问题。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020740b50">
「方向？」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020750b30">
「饱间大人，汝觉得至高的剑胄应该是
怎样的东西呢？」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020760b50">
「力量强大，装甲坚硬，机翼尖锐迅速——」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020770b30">
「汝认为能办到吗？」

{	FwC("cg/fw/fw飽間_沈鬱.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020780b50">
「……不。」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020790b30">
「无论是多么有能力的锻造师，都无法打出
万能的剑胄。
　选择些什么，就必然要舍弃另一些什么。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020800b50">
「那个选择，还没确定吗？」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020810b30">
「嗯。」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020820b50">
「什么才是最好的，什么才是至高的……呢？」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020830b30">
「所谓至高的剑胄啊，饱间大人。
　仅仅就是<RUBY text="········">能完成任务的剑胄</RUBY>。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020840b30">
「是变成能够帮助任何人的东西，
　还是成为去杀掉所有人的东西，
　……如果不先决定的话，就无法开始。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020850b50">
「南朝是自己人，北朝是敌人对吧？」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020860b30">
「要比这更深入，更细致。
　目标越是明确，剑胄的性能就越精良。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw飽間_沈鬱.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020870b50">
「……原来如此。」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020880b30">
「若要决定机能就必须先确定目标。这才是
关键。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020890b50">
「因此才在战场巡视吗。」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020900b30">
「嗯。」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020910b50">
「得出结论了吗？」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020920b30">
「还没有。
　吾还没看到……值得打倒的敌人。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020930b30">
「佐佐木之流可远远不够。」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020940b50">
「是吗……
　明白了。我会将你的意思委婉地转达
给楠木殿下。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020950b50">
「也会传入天皇的耳朵里。
　他们二人应该都会理解的。」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020960b30">
「抱歉了。」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020970b50">
「哪里。就凭你我的关系，
　这种客套话就省了吧。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020980b50">
「你再多费费心。
　在此期间，我会从叛军手中守护住
吉野的。」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020990b30">
「……拜托了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


//◆フェードアウト
//◆フェードイン
	ClearWaitAll(2000, 0);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateEffect("絵演モノクロ", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("絵演モノクロ","絵演モノクロ");
	OnBG(100,"bg023_弥源太の家_01.jpg");
	StR(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");

	Wait(1000);
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(1000);

	SetFwC("cg/fw/fw始祖村正_険しい.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021000b30">
「…………」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021010a15">
「怎么了，父亲。
　似乎非常不开心呢。」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021020b30">
「…………」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021030a15">
「母亲？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st始祖妻_通常_私服.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw始祖妻_嘆き.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【始祖妻】
<voice name="始祖妻" class="始祖妻" src="voice/md01/0021040b29">
「京的首都似乎被攻占了。」

{	FwC("cg/fw/fw二世村正_叱咤.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021050a15">
「……什么?!
　楠木大人上个月才攻下那里，天皇刚刚
迎来时隔八年重返京的时刻不是吗！」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021060a15">
「奉命守护京中的赤松的军队在
干什么？」

{	FwC("cg/fw/fw始祖妻_嘆き.png","Monoc");}
//【始祖妻】
<voice name="始祖妻" class="始祖妻" src="voice/md01/0021070b29">
「赤松叛变了。」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021080a15">
「……什么。」

{	FwC("cg/fw/fw始祖村正_怒り.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021090b30">
「卖给北朝了啊！
　把都城和天皇一起卖了。」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021100a15">
「把天皇交到北朝的手里了?!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_険しい.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021110b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021120a15">
「那么……南朝，今后……」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021130b30">
「饱间大人说了，由吉野的皇子
继位。」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021140a15">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021150a01">
「在说京都的事？」

{	FwC("cg/fw/fw始祖妻_嘆き.png","Monoc");}
//【始祖妻】
<voice name="始祖妻" class="始祖妻" src="voice/md01/0021160b29">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021170a01">
「父亲呢？
　父亲是在京都吧？」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021180b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021190a15">
「……父亲。」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021200b30">
「……女婿大人他……
　身负御用锻造师的荣耀，
又怎会舍弃天皇逃跑呢。」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021210a15">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021220a01">
「母亲。
　那个，父亲呢？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021230a15">
「……………………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021240a01">
「外婆……
　父亲呢？」

{	FwC("cg/fw/fw始祖妻_嘆き.png","Monoc");}
//【始祖妻】
<voice name="始祖妻" class="始祖妻" src="voice/md01/0021250b29">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021260a01">
「……外公……？」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021270b30">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 5000);

}

..//ジャンプ指定
//次ファイル　"md01_003.nss"