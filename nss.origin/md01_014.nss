//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_014.nss_MAIN
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
	#bg001_空a_02=true;
	#bg013_鎌倉俯瞰a_02=true;
	#bg094_宮中庭_01=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_015.nss";

}

scene md01_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_013.nss"

//◆鎌倉市街
//◆乱雑に飛ぶ村正
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateSE("SE01","se人体_動作_跳躍01");
	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	WaitKey(300);

	CreateSE("SE01b","se人体_動作_跳躍03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(100,"bg013_鎌倉俯瞰a_02.jpg");
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	FadeBG(0,true);

	Zoom("@OnBG*", 150, 1000, 1000, DxlAuto, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);
	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　从屋顶到屋顶。
　从树梢到树梢。

　没有任何目标。
　只是不想停下脚步而已。

　现在距离日暮还有一段时间。这样胡乱地行动，大概
会被人看到吧。

　不过——无所谓。

　现在我只想这样奔跑，甩去缠在身上的某种东西。
　……虽然我已经发觉，那种东西并不是贴在我的外面，
而是贴在了我的内侧，无论怎样奔跑都无法剥去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140010a01">
（根本——不可能认可）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　他说，让我认可他的意志。
　希望我认同他以自己的意志战斗，背负自己的责任……
对于仅仅希望这样的<RUBY text="主人">操控者</RUBY>，我回以完全的拒绝。

　他明明说了认可我的意志。
　那个像是锈了的锁一样顽固的家伙。可是。

　可是我无论如何也无法认可。

　在和青江的交战中，就像他看到了我的过去那样，我
也看到了往日的他。
　所以我知道。

　他本来是平静地生活在小村庄中的人。
　夺去他那种生活的，是我和母亲——两副村正。

　如果没有村正的存在，他会在平稳的日常中活到最后
吧。
　……如果五百年前我没有做出那愚蠢的请愿！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140020a01">
（我应该舍弃母亲的。
　我必须要舍弃她的啊！）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/bg/bg094_宮中庭_01.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　如果我屈从于南朝王的意愿，让她被破坏就好了。
　无论那是多么屈辱，多么遗憾，作为虾夷的剑胄锻造
来说多么的难以接受。

　血脉之情扔进河川。
　锻造师的矜持该让狗吃掉。

　无论如何也该亲手销毁<RUBY text="母亲">二世</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140030a01">
（正因为没能做到！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
“银星号”出现了。
　南北朝往昔的恶梦，在这兴隆的时代中复活了。

　我的一个决定就可以将其防患于未然。
　我生前柔弱的内心，招致了灾祸——招致了无数的死
亡。

　和银星号的战斗，也正是和我之前的错误做出了结。
　而<RUBY text="他">景明</RUBY>却说要将其作为自己的东西来背负，
这意志让我如何认可。

　他只是被卷入妖甲千子村正一族的愚行之中，
为什么在残酷的斗争中痛苦，
连灵魂都受到伤害，为什么！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140040a01">
（那是不可能认可的吧……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我所犯下的错误，另外还有。

　善恶相抵。那个戒律。
　那个诅咒——<k>我承认，无论理想如何，事实上那只是
诅咒！——<k>我为什么要继承它。

　至少如果没有那个诅咒，死于景明手中的人数就只需
要<RUBY text="··">一半</RUBY>了。
　痛苦也会得到缓和吧。

　我和始祖、二世不同。二世成为灾厄的搬运者时，我
只是为了将其压制才诞生的剑胄。
　那个戒律是实现祖父理想的关键，但对于我来说却是
没有必要的。

　即使如此我还是继承了——<k>别无他法。

　善恶相抵的规则，并不是村正这个剑胄的附录。
　那是根植于心铁中的东西，也就是根本理念。

　如果去除了这一点，锻造行程就要<RUBY text="··">完全</RUBY>重新确定。
　祖父和母亲，还有祖母和父亲。一族探究的总结，我
必须独立地完全重新构建。

　那是不可能做到的。

　即使做到了，并且造出了普通的剑胄，也无法抵抗二
世村正的力量——会被“卵”污染。
　那样也无法达到目的。

　以千子村正流的锻造法成为剑胄，继承善恶相抵的戒
律，这是无法避免的事。

　这是事实……但是。

　但是即使抛开这些问题，我从内心中也确实有着想要
继承戒律的心情。
　我想要继承戒律，继承一族的理想。

　祖父他们苦恼之后找到的理想，我认为那是不能凭白
失去的。
　扑灭“独善”，向往没有争斗的世界，这种理想可以
传向后世吧——我是这样想的。

　……不负责的感情。
　……极其自私的想法。

　无论如何，这件事我也没有选择的余地。
　但是在背后，我也有这种天真的愿望，存在于
记忆之中。

　所以不可原谅。

　他受缚于诅咒，向对自己抱有好感和敬意的人们刀刃
相向，他所承受的苦闷——其内心每次发出惨叫，我
都会对这种可能性故意视而不见，沉浸在自己平稳的梦
中。我无论如何也无法原谅这样的自己。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140050a01">
（所以……至少）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我认为自己不能去认可。
　这战斗，这杀戮，是以他的意志而进行的事，我绝对
不能认可。

　这是只属于我自己的战斗……

　这是我的意志招致的，我自己的罪。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛ぶ
//◆キーン。なんか共鳴っぽい演出
//◆急停止
	OnSE("se人体_動作_跳躍03",1000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	DrawDelete("黒幕１", 150, 100, "zoom_01_00_1", true);

	CreateSE("SE01b","se特殊_雰囲気_共鳴01");//ダミー注意
	MusicStart("SE01b",0,1000,0,1500,null,true);
	CreateEffect("絵ブラー１", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵ブラー１","絵ブラー１");
	Request("絵ブラー１",Passive);
	SetBlur("絵ブラー１", 3, true, 400, 100);

	Fade("絵ブラー１", 0, 500, AxlDxl, true);
	Zoom("絵ブラー１", 300, 1500, 1500, Dxl1, false);
	FadeDelete("絵ブラー１", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140060a01">
「————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。
	CreateSE("SE02","se特殊_雰囲気_共鳴01");//ダミー注意
	MusicStart("SE02",0,1000,0,1200,null,true);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……<RUBY text="存在感">香气</RUBY>！
　银星号，或是其“卵”的寄生体。宿有二世村正之力
的存在就在附近。

　很强——很浓。
　我现在感觉到的存在特别浓郁，甚至让我觉得这是
故意发散出来的。

　可能有必要尽快赶去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140070a01">
《主——》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140080a01">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我转过头，想要回到牢狱中<RUBY text="他">景明</RUBY>的身边。
　……但却想起，我已经不该这样去做了。

　我不能再和他一起战斗。
　我无法认可他的意志，我也无法支配他让他服从于我，
已经…………不行了。

　如果要去，我必须独自前往。

　……不。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140090a01">
（一个人就够了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　仔细想想，把别人卷入只属于我的战斗之中，这本来
就是很大的错误。
　无论剑胄多么需要操控者。

　那种程度的常识，拼上村正之力即可颠覆。
　颠覆——颠覆给你们看。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正帯電
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 600, null, true);
	WaitKey(10);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
磁场展开<k>聚集形成<k>特定指向<k>特定解除<k>反复展开<k>反复展开<k>
指向修正<k>聚集形成<k>骨骼拟装<k>修正<k>修正<k>修正<k>修正<k>聚集形成<k>
神经拟装<k>修正<k>全面删除<k>神经拟装<k>修正<k>修正<k>修正<k>指向修正<k>
肌肉拟装<k>修正<k>修正<k>综合整理<k>确认<k>违法骑化工程改造完成

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0140100a01">
（我——独自一人也能战斗！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　
　　　　　　　　　　　启动

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆違法変身
//◆武者·村正
//◆飛翔
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSP("絵立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常.png");
	Move("絵立絵", 2000, @128, @0, DxlAuto, false);
	FadeDelete("絵フラ", 1000, true);

	WaitPlay("SE*", null);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "#FFFFFF");
	Move("絵立絵", 300, @-512, @0, Axl2, false);
	Fade("絵フラッシュ白", 200, 1000, null, true);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_015.nss"