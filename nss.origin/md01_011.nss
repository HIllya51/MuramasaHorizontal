//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_011.nss_MAIN
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
	#bg010_拘置所外観_01=true;
	#bg011_拘置所内_01a=true;
	#ev101_プロローグ_a=true;
	#bg025_山脈と森a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_012.nss";

}

scene md01_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_010.nss"

//◆関東拘置所
//◆獄室
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg010_拘置所外観_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

	OnBG(100,"bg011_拘置所内_01a.jpg");
	FadeBG(3000,true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　也许这样说会有些奇怪吧。不过比起留在市内的署长
宅邸，我更加适应拘留所的单间。

　对于杀人犯混在普通市民中的状况，我果然还是无法
抹去自己的不适感。
　罪人理所当然要受到隔离。

　大鸟主从因为肩负公事，所以这段时间要离开署长宅
邸，于是我趁此机会也回到了牢狱中。
　我只对一条说，自己会稍稍离开一段时间。

　如果发现了银星号的踪迹，那么我又必须要回到市中。
不过在那之前，应该能让我度过囚犯的日子吧。
　也就是说，我得到了让心中风平浪静的时间。

　并且，我这样做当然不是为了贪求睡眠。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：銀星号との戦闘
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev101_プロローグ_a.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　——我到底该如何将其击落。

　银星号是将灾厄带向人世的魔王。
　那是粗暴而疯狂的武者，并且在人群中播撒疯狂的歌
声，令他们走向无益的惨死之路。

　必须要由我亲手击倒。……无论两年前是因为怎样的
不幸才会令事情发展到这个地步，现在我已经
不认为光还能恢复正常了。并且我也没有
时间做出尝试。她会像呼吸一样轻易地令人命消散。

　必须将其击倒，但是——问题是将其实现的方法。
　天壤之别的战力差距，我该如何克服呢。

　根据武界的通论来说。
　武者的战力要靠操控者的技术、剑胄的性能、以及二
者的配合，这三项综合来决定。

　第一，我和光的技术差距是难以动摇的。
　这是天生的才能差距。虽然我不打算放弃，也不会疏
于锻炼，但这并不是一朝一夕能够弥补的差距，是质
的差距。这个事实我有必要正面接受。

　第二，剑胄的性能上没有太大的差距。
　我确实有这种感觉。二世村正的<RUBY text="Gravity Control">引辰制御</RUBY>能力虽然是
无可置疑的威胁，但三世村正的<RUBY text="Magnetic Control">磁流制御</RUBY>也是可以与
之匹敌的能力。

　第三。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0110010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　操控者和剑胄的<RUBY text="··">配合</RUBY>。<k>

　……关键果然还是在这里吧。

　最近，我会频繁地回忆起那位老人说的话，也是因为
无意识的部分在强调那个事实吗……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·第二話
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 8000, Center, Middle, "cg/bg/bg025_山脈と森a_01.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 200, null, true);

	SetFwC("cg/fw/fw弥源太_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/md01/0110020b55">
「但是，只是这样装备上装甲
……御堂，你似乎不怎么信赖
剑胄啊？」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/md01/0110030b55">
「昨天我观察你与那赤色的剑胄，
总觉得……嗯。
　感觉你们有哪里没有配合好。」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/md01/0110040b55">
「剑胄是道具……这是事实。
　但是也不能忘记她是拥有<RUBY text="心">灵魂</RUBY>的
道具啊？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0110050a00">
（弥源太老人）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　那时，我没有听从这个贵重的忠告。
　无论有没有心，道具就是道具，只要遵从使用者的意
志——一切都该由使用者负责。

　现在我这种想法也没有任何变化。
　使用剑胄的责任，对使用的结果负责，这都该由操控
者独自承担，不与任何人分享，也无法分享。我是这
样认为。

　但是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0110060a00">
（我完全不了解村正）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　善恶相抵。
　那奇妙戒律的意义。

　我不知道这一点，也是因为村正不打算告诉我。
　不过，我这边没有去积极了解的意愿，这也是原因之
一。

　我只是把她当做该诅咒的剑胄。
　如此单方面地决定，忌惮——<k>我一定是将这种想法
偷偷地当做安慰了吧。

　我的罪，还有光的罪……
　我把一切都当做了这妖甲的诅咒。

　但是在和青江贞次的战斗中，他告诉了我隐藏的真实。
　村正附加的戒律，并没有附加对世间和人们的恶意——

　那反而是想要纠正乱世的心愿。
　但却取得了完全意外的效果……南北朝的时代，以极
端凄惨的形式画上了句号。

　现在，银星号重现了那种灾难。


　所以。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0110070a00">
（……村正）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　所以村正身为剑胄，同时又不将责任托付给<RUBY text="我">操控者</RUBY>，
而想以自己的责任来战斗。
　她想要亲手为同族赎罪。

　我们就这样背对着对方。
　我们不去看向对方，即使进入困境，还是想要凭借自
己的意志和力量来战斗。

　……这样不可能胜过银星号。

　无论是因为责任意识，还是为了心灵上的逃避，
如果问到互相不认同的操控者和剑胄能否成为合格的武
者，答案是否定的。
　因为二者的关系首先要从相互承认开始。

　考验对方的资质，相互认同，然后成为结缘的武者。
　从古至今，这就被称为佩刀礼。

　两年前，我和村正在极其迫切的状况下以简略的形式
完成了佩刀礼。
　在那之后，我们并未重新进行正式的礼仪。我没有这
种愿望，村正似乎也没有意愿。

　也就是说，其实我和村正作为武者，是完全不合格的
残次品。
　至今为止我都没有在意，认为这并不是问题，而且认
为这种程度用锻炼就可以弥补。

　但是……事到如今我必须改观了。
　如果我真想打倒银星号的话。

　不能再是一个操控者和一副剑胄，而要成为<RUBY text="··">一骑</RUBY>武者。
　……如果再像之前那样，用我的意志来让村正屈从，
是做不到这一点的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md01_012.nss"