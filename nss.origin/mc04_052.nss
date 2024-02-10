//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_052.nss_MAIN
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
	#ev209_木に背を預けて座る香奈枝=true;
	#bg058_曇空a_01=true;
	#bg058_曇空b_01=true;

	//▼ルートフラグ、選択肢、次のGameName

	#復讐編終了 = true;

	$PreGameName = $GameName;

	$GameCircle=0;
}

scene mc04_052.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_051vs.nss"

//◆空
//◆雪が降り出す。
//◆森
//◆ざ、ざ、ざ。ゆっくり歩く音
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg058_曇空a_01.jpg");
	CreateTextureSP("絵背景11", 9, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");
	FadeDelete("上背景", 3000, true);
	WaitKey(1500);
	FadeDelete("絵背景10", 2500, true);
	WaitKey(1500);
	CreateColorSPadd("白", 28000, "WHITE");
	DrawTransition("白", 2500, 0, 1000, 1000, null, "cg/data/effect_01_00_0.png", true);
	Delete("絵背景11");

//	SoundPlay("@mbgm33",0,1000,true);

	//$SYSTEM_effect_drop_image = "cg/ef/ゆっくり_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/efDro_雪001.png";
	$SYSTEM_effect_drop_dencity = 30;
	$SYSTEM_effect_drop_speed = 7;
	$SYSTEM_effect_drop_swing = 128;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果雪", 4100, Center, Middle, 1030, 580, "Drop");
	SetAlias("絵効果雪","絵効果雪");
	Fade("絵効果雪", 0, 1000, null, true);

	CreateTextureSP("絵背景12", 10, Center, Middle, "cg/bg/bg092_森の道b_01.jpg");
	FadeDelete("白", 2500, true);
	CreateSE("アルイテマス", "se人体_足音_歩く_負傷_L");
	MusicStart("アルイテマス",0,1000,0,700,Dxl3,true);

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我在森林间行走着。

　身体无比沉重。
　明明欠缺了不少东西，不知为何却比平常
更加沉重。

　但即便如此也要走下去。
　不能停下脚步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0520010a01">
《……主君……》


{	SetVolume("アルイテマス", 1500, 0, null);
	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520020a00">
「村正……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0520030a01">
《对不起。
　我似乎……只能，到这里了……》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520040a00">
「啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　忠心的伙伴似乎先走一步了。

　可我连转头去为她送行的余力都没有。
　提着一口气，将最后要传达的事传达到位
就已用尽全力。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520050a00">
「谢谢。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0520060a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆崩れ去る音
	Wait(1000);
//	SetVolume("@mbgm*", 1500, 0, null);
	OnSE("se戦闘_衝撃_鎧転倒03", 1000);
	Wait(2500);
	CreateColorEX("黒幕１", 15000, "BLACK");
	Fade("黒幕１",2500,1000,AxlAuto,true);
	Wait(500);
	CreateSE("アルイテマス", "se人体_足音_歩く_負傷_L");
	MusicStart("アルイテマス",0,1000,0,500,Dxl3,true);
	Wait(1000);
	Fade("黒幕１",1500,0,AxlAuto,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　独自一人。
　走在林间小道。

　很辛苦。
　身体沉重，意识模糊，不知不觉间周围变得冰冷刺骨。

　好痛苦。
　因为生命已经要到尽头了吧。

　因强迫几近衰竭的心脏跳动，
继续生存下去而痛苦。
　若是停止这种愚蠢的行为，一定就能结束痛苦了吧。

　但是，我还不能死。
　回到她身边之前不能死。
</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざ、ざ、ざ。
//◆ばたり。倒れた。

	CreateColorEX("siro", 15000, "WHITE");
	Fade("siro", 300, 1000, null, true);
	CreateTextureSP("絵背景11", 11, Center, Middle, "cg/bg/bg092_森の道b_01.jpg");

	SetShade("絵背景12", SEMIHEAVY);
	Zoom("絵背景12", 0, 2000, 2000, null, true);

	FadeDelete("siro",300,true);
	Fade("絵効果雪", 1000, 0, null, false);
	FadeDelete("絵背景11", 1000, true);
	SetVolume("アルイテマス", 0, 0, null);
	Wait(1000);
	Move("絵背景12", 300, @0, @-400, AxlAuto, false);
	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, AxlAuto, "cg/data/slide_02_01_1.png", false);
	OnSE("se人体_衝撃_転倒03",1000);
	Wait(1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……等意识到的时候，我已然瘫倒在地。
　脚上的力量似乎已消耗殆尽。

　动不了了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520070a00">
（不行）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一定要起来。

　还不可以死。

　还不想，在这个地方，死去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520080a00">
（一定……无论是谁都会）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　这么想的吧。
　被我杀死的那些人们。在被杀的瞬间都会这么想吧。

　不想死。
　呼喊着，我还不想死。

　我践踏了那些悲痛的愿望。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520090a00">
（所以）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　<RUBY text="··">所以</RUBY>。
　我还不能死在这里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：景明ラス。見上げる森の光景。ぼやけている
//◆起き上がったような演出で

//inc久保田　動作確認のためべつCG　ev208_最期の光景_a
//あきゅん「演出：素材縮小されたので仮打ち」

	CreateColorEX("siro", 15000, "WHITE");
	Fade("siro", 300, 1000, null, true);


	CreateTextureSP("絵ＥＦ", 4000, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");

	CreateTextureSP("絵ＥＦa", 6000, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");
	CreateTextureSP("絵ＥＦb", 5500, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");
	CreateTextureSP("絵ＥＦc", 5000, Center, Middle, "cg/bg/bg058_曇空b_01.jpg");

	SetShade("絵ＥＦa", NOMORE);
	SetShade("絵ＥＦb", SEMIHEAVY);
	SetShade("絵ＥＦc", EXTRAHEAVY);

	Fade("黒幕１",600,0,null,true);
	FadeDelete("siro",300,true);

	FadeDelete("絵ＥＦa", 1500, true);
	Fade("黒幕１",500,200,DxlAuto,true);
	FadeDelete("絵ＥＦb", 500, true);
	Fade("黒幕１",1500,0,AxlAuto,true);
	FadeDelete("絵ＥＦc", 1500, true);
	FadeDelete("絵背景12", 0, true);
	Fade("黒幕１",600,0,AxlAuto,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　强打起精神，支起身子。
　咬紧牙关，单手撑起。

　一定要站起来。
　一定要活下去。

　还差一点点。
　回到她身边去。

　到大鸟香奈枝身边去。

　她是复仇者。
　是判决凑斗景明之罪的人。

　是应该杀死凑斗景明的人。

　我的命必须要交到她手上，由她来结束。
　因为她是带着被我杀死的人们的悔恨，
来取走我的性命。

　因为她代表着与恶相对的善的愤怒。

　这个世界上有正义。
　当然也有针对恶而存在的报应。

　我相信着。
　想要相信。

　所以这条命要由她来结束。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆差分：香奈枝。重傷だがぼやけてるので良くわからない
	CreateSE("アルイテマス", "se人体_足音_歩く_負傷_L");
	MusicStart("アルイテマス",0,1000,0,1000,Dxl3,true);

	Wait(2000);
	CreateTextureEX("さぶん", 4000, Center, Middle, "cg/bg/bg092_森の道b_01.jpg");


	SoundPlay("@mbgm18",0,1000,true);
	Fade("絵効果雪", 2000, 1000, null, false);
	Fade("さぶん",2000,1000,DxlAuto,true);
	FadeDelete("絵ＥＦ", 0, true);

	SetVolume("アルイテマス", 0, 0, null);

	Wait(1000);

//	SoundPlay("@msong02_full",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520100a00">
（……啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　来了。
　在那里。

　她来了。

　大鸟香奈枝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520110a00">
（大尉）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　传达希望。
　——审判。定罪。

　我不知道有没有发出声音。
　但是却没有任何的不安。

　她是纯粹的复仇的执行者。
　所以，没有关系。

　我相信。

　大鸟香奈枝这个人，或许对于她那复杂
的人格，我的理解未必深入。
　一定还有许多我不知道的东西。

　或许，她是所有与人伦相反的卑劣性质
的集合体也不一定。
　是人面兽心的化身也不一定。

　若是那样考虑，似乎确实如此。
　
　
　……但是，那种事情都已经无所谓了。

　既然已没有任何意义，又何必在意呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。景明と香奈枝の誓約
	EfRecoIn1(18000,600);
	CreateTextureSP("ひざまずく", 4100, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　她约好了会向凑斗景明的罪孽复仇。

　顽固的。
　毫无慈悲的。
　绝对不会饶恕的。

　这就是全部。

　对我来说这样就好。

　所以才说。

　这个女人，搞不好是误入
人间的恶魔。
　对于凑斗景明来说，与天之使者
没有任何区别。

　大鸟香奈枝。
　我感谢你。

　全身心地感谢你。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	FadeDelete("ひざまずく", 0, true);

	Delete("絵効果雪");


//◆小ウェイト、ホワイトアウト
	Wait(1500);
	FadeDelete("さぶん", 0, true);

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　有什么温暖的东西，碰到了脖子。
　
　这是……刀刃————

　生命最后的片刻，融化消散。
　终于迎来了，我所渴望的死亡。

　断罪之死。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0520120a00">
（……可是）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　还有最后一个。
　我的灵魂，仍留有一个小小的不满。

　并不痛苦。
　也不疼痛。

　只是微微的，柔和的。

　所以才不服。
　
　……赐予凑斗景明的死，应该是要更加
残酷的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト置いて、フェードアウトか。
	Wait(1000);
	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１",2500,1000,null,true);

	Delete("絵効果雪");

	Fade("ほわいとあうと",0,0,null,true);
//◆ＥＶ：樹の根元に座る瀕死の香奈枝、死んだ景明
	Wait(1500);
	CreateTextureSP("絵回想01", 5000, Center, Middle, "cg/ev/ev209_木に背を預けて座る香奈枝.jpg");
	Fade("黒幕１",2500,0,null,true);

	Wait(1500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　俯视他没有气息的容颜。
　……好像很满足。但似乎有一点，只是一点点的不满。

　有些孩子气的睡脸。
　绽放着笑容的，与他不符的表情。

　虽然已经再也无法发出声音了。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0520130a03">
（傻瓜）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　终究到最后为止，也没有袒护自己。

　明明逃走就好了。
　明明就应该想到，自己可以不在这种
地方死去。

　但是他却选择留下来，战斗。
　或许，也有想要保护香奈枝的想法。

　他为了那个，发誓要杀死自己的女人而战斗。
　别无其他，只是为了想要守护的那个女人。

　然后死了。

　真是愚蠢。
　无可救药，愚蠢至极。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――



	SetFwL("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0520140a03">
（但是）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　愚蠢的，究竟是谁呢。

　是想要守护香奈枝而与香奈枝战斗的他。
  还是隐藏真相，……将自我抹杀的香奈枝？

　算了。
　……差不多吧。

　无可救药的傻瓜们互相对砍。
　然后可喜可贺地，都死了。

　一定，只是这样而已。

　面对死亡，没有恐惧。
　也没有不满。

　生即是死。
　死亦是生。

　一个意思。
　只是表述不同而已。

　将人生看做是从零开始出发或是向零靠近，
只是这点差异。
　所以，求死与求生之间，并没有什么
本质的差别。

　即使拘泥于这种文字游戏程度的差别也无甚意义。
　只要如真实的自己般堂堂地生堂堂地死，
这样就行了。

　因此这样的结束毫无疑问，对大鸟香奈枝来说是正确
的归宿。
　对凑斗景明也是。

　真挚地生。
　真挚地死。

　作为大鸟香奈枝。
　作为凑斗景明。

　是如此认为的。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0520150a03">
（喂）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　我向已经无法回应的他说道。

　我们虽然愚蠢。
　虽然真的很愚蠢。

　但是只能这么做吧。

　没有办法选择其他的道路呢。

　两个人相遇，一同死去——
　演出一场滑稽的戏剧。

　如此拙劣，如此滑稽，却没有任何
一个观众。
　只有我们两人。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0520160a03">
（所以啊）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　这个故事是只有我们两个人的故事。

　我们两人就一起笑吧。
　手指着丑角们，嘲笑他们愚蠢活着的丑态。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆復讐編·完
/*
//inc　久保田　超仮
	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ２", 100, Center, Middle, "cg/sys/Telop/lg_復讐編.png");
	Wait(4000);
	FadeDelete("上背景", 2000, true);

	Wait(1000);

	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ６", 500, 200, 200, "cg/sys/Telop/lg_エンド.png");
	CreateTextureSP("絵テロ３", 100, Center, Middle, "cg/sys/Telop/lg_復讐編.png");
	FadeDelete("上背景", 1000, true);
*/

	SetVolume("@mbgm*", 6000, 0, null);
	ClearWaitAll(5000, 3000);


//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル