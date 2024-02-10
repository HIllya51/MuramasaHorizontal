//<continuation number="340">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_008.nss_MAIN
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
	#bg033_署長宅景明私室_03a=true;
	#ev148_一条Ｈ１_a=true;

//あきゅん「演出：ここで登録していいものか、ネタバレ回避のため悪鬼編終了までとっておきたい」
	//#ev007_犯されている女性=true;

	#ev148_一条Ｈ１_b=true;
	#ev149_一条Ｈ２_a=true;
	#ev149_一条Ｈ２_b=true;
	#ev149_一条Ｈ２_c=true;
	#ev149_一条Ｈ２_d=true;
	#ev150_一条Ｈ３_a=true;
	#ev150_一条Ｈ３_b=true;
	#ev150_一条Ｈ３_c=true;
	#bg033_署長宅景明私室_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_009.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#mb03_008=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene mb03_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================
..//ジャンプ指定
//前ファイル　"mb03_007.nss"
	PrintBG("上背景", 30000);
	OnBG(100,"bg033_署長宅景明私室_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	OnBG(100,"bg033_署長宅景明私室_03a.jpg");
	FadeBG(0,true);

	//リコ背景抹消
	RecoIn();
}
//========================================================

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0080010a00">
「……我不擅长应付女性。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080020a02">
「我懂。
　能够感觉出来。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0080030a00">
「我只知道粗暴的做法。
　这样，没关系吗？」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080040a02">
「是……
　没关系。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080050a02">
「……那样才好。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0080060a00">
「明白了。
　别后悔。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080070a02">
「不会的……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

//◆別案ストック
//◆「奪ってでも！」隠剣·六本骨爪。「ギャー!?」
//◆肋骨で景明捕まえて血塗れ逆レイプ。
//◆それエロいのか疑問なので保留。


//◆ＢＧＭ：ヒロインＨ
//◆一条Ｈ１。口付け
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ１Ａ", 4000, Center, Middle, "cg/ev/ev148_一条Ｈ１_a.jpg");
	Delete("上背景");

//	SoundPlay("@mbgm28",3000,1000,true);
	SoundPlay("@mbgm15",3000,1000,true);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　不用问就知道一条还没有男性经验。

　抬起她的下巴，吻上她的唇。这与其说是礼节，不如
说是为了稍微缓和她的恐惧。

　但是。这个动作却解开了我的禁锢。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ev007？
	CreateTextureEXadd("絵演ＥＶ", 4100, Center, Middle, "cg/ev/ev007_犯されている女性.jpg");
	Fade("絵演ＥＶ", 600, 750, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　火热柔软的触感让我尝到女性滋味。
　生来待人贪求的生物，令人耽溺于其中的魅惑在复苏。

　很久以前。
　第一次将女性压在身下，那种支配其身体的冲动——
令人无法抗拒的波涛在这一刻翻腾，从心脏涌动到四肢
末端。

　精神的一部分正在向野兽演变。

　是的。就像我自己说的那样。
　对于如何爱女人，我只知道<RUBY text="···">这一个</RUBY>方法。


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演ＥＶ", 600, false);


	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080080a02">
「呃……嗯!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　也许是感觉到了我的变化，臂弯中的一条在颤抖。
　不加理会，我继续着已经开始的动作——伸出舌头打
开少女的唇，而后侵入。

　从光滑的牙齿舔至富有弹力的齿龈。
　舌头卷起少女的上唇，舔舐其内侧。

　很难说这是对待少女的正确做法。
　但是冲动命令我这么做。

　一条一定是吓坏了吧，但她很顺从。
　既不反抗，也不躲闪，温顺地把身体交给我。

　这样的态度更加点燃了我的兽性。
　舌头开始了更疯狂的暴行。

　强行打开上下排牙齿的门扉，侵入其中。
　就像强盗一样没有任何顾虑。

　舌尖从上腭狂扫至下颚，探索其内部，一旦发现没有特别
之物，便把注意力投向了胆怯地蜷缩在深处的主人——少女
的舌头。
　对于这唯一的猎物，我怎么可能放过。

　舌头与舌头互相缠绕。
　纠缠，相抵，品尝。

　这就是眼下两人的缩图。

　少女薄薄的舌头束手无策地被玩弄着。
　眼眸因为过度的暴虐而噙着泪珠——水珠滴落到了紧贴
的唇瓣上，传递出这一事实。

　甘美。
　……原来暴力可以催生这般甘露。

　一旦知道了这一切。
　原本就毫无品行可言的野兽更加凶猛。

　吸吮嘴唇。
　啜饮肉与肉的窄缝之间涌出的液体。

　响起阵阵淫靡之音。
　躺在臂弯中的少女，身体一下子变得火热——大概是害
羞的缘故吧。

　但这无法成为命令我停止的要素。
　毫不留情继续我的凌辱。进一步吸吮。

　直到一条口干舌燥。
　不，仍然不满足。

　缠绕着少女的舌头虏进我的口中。
　轻咬，封住猎物的动作。

　要怎样对待我。
　她蜷缩着僵硬身体向我投来无声的疑问。

　……怎样？
　我已经决定好了。

　一味地掠夺。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080090a02">
「——呃！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　发觉连舌头都被掠夺，少女心慌意乱。
　她束手无措。困在我的双臂之中，惶恐、困惑……却
又无法顾及这一切。

　绝对压倒性优势的暴力实施让我如痴如醉。
　忘我地吸吮着口中不属于我的柔软。压榨着、剥削着
她的唾液。

　一条缠在我背上的手无力地抚摸着。
　只不过是指尖在毫无抵抗地祈求饶恕。

　不予理睬。

　冲动不会停止。也不可能停止。
　仿佛是为了做最后的修饰，我用舌尖<RUBY text="··">黏稠</RUBY>蹭上
一条的舌头内侧——那片纤细柔嫩的领地。

　我抛弃了思想，凭借本能观察着她的反应。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080100a02">
「嗯……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080110a02">
「哈啊……嗯!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆Ｈ１差分。一条の眼を虚ろで淫蕩な感じに
	CreateTextureSP("絵ＥＶ１Ｂ", 3990, Center, Middle, "cg/ev/ev148_一条Ｈ１_b.jpg");
	FadeDelete("絵ＥＶ１Ａ", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　穿过全身的鼓动令少女战栗不已。
　肌肤顿时有如发烧症状般灼热。

　一切都是在男人手中被强行挑起的反应。

　……达到高潮了吧。
　
　这个极其粗俗的字眼在我心中低声响起。

　被推上了性欲感觉的巅峰——恐怕一条并不自知吧。
　就像少年毫无考虑地拨弄性器之时体验了最初的高潮
一样，此刻的一条也是如此。

　甚至不知道那是多么快活的一件事。
　
　相贴的肌肤昭示着少女的混乱，印证着我正确的理解。

　阴暗的喜悦，在心中舞动。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080120a02">
「嗯……呃!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　掠夺而尽却依然无休无止。
　满足了欲望的兴奋更进一步成为欲望的源泉。

　我依然没有放开一条的双唇。
　即便已经没有可夺之物——即便如此。

　再次将舌头侵入少女的口中。
　划开双唇，上推皓齿张开了她的嘴。

　出现了一条小径。
　一条的舌头已经降服。虽然颤抖着，却依然读懂了我
的渴望，笨拙地回应着。

　很好。
　控制着一条的舌头保持那条通道，我埋头沉沦于接下
来的举动。……接下来的举动。

　掠夺已经结束了。
　所以，轮到我<RUBY text="··">奉献</RUBY>了。

　我将口中积存的唾液注入一条口中。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080130a02">
「……!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　到底还是条件反射的抗拒感占了先锋吧。
　小小的嫩舌动弹着企图阻止液体的流入。

　——我怎能允许这种举动。

　我用右手紧紧抓住一条的上臂。
　死死握紧……力量之大几乎可以阻止血液的流动。

　里面包含着我不许她反抗的意志。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080140a02">
「呃……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080150a02">
「嗯……嗯……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　一条的反应就像是孩童面对生气的父母一样。
　反抗的意图顿时烟消云散，化为彻底的服从。

　少女吞下了。
　男人屈从于粗俗的欲求注入的体液。

　顺从地吞下。喉咙口发出阵阵响声。
　眼角噙着泪珠。但她要强地努力克制着泪水的滴落，
吞下了被给予的全部。

　一条的体内被我新陈代谢的浊物污染。
　
　名为凑斗景明的男人，他最卑劣的部分得到满足，发
出雀跃之声。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg033_署長宅景明私室_03a.jpg");
	FadeBG(0,true);

	FadeDelete("絵ＥＶ１Ｂ", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
　终于松开了嘴唇。
　唾液恋恋不舍的连成银丝，架起一座桥——我用舌尖
舔舐干净。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080160a02">
「哈啊……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　一条大口大口地喘着气。
　她的眼眸宛如还在另一个未知的世界彷徨。

　对于一位未经人事的少女，也许一切都太过刺激。
　但是——但是？　那又怎样。

　我这才要<RUBY text="····">进入正题</RUBY>。
　怎么可能在这里停下，开什么玩笑。

　一条也一定是这么想的。
　衣服还未褪下就被宣告停止，这一定不是她所希望的。

　她说过希望我掠夺她。她说过想要与我合为一体。
　我们现在仅是<RUBY text="····">双手相合</RUBY>而已。

　仅凭这些完全无法无法满足。
　渴求更多。更深。更灼热更浩瀚更强烈更刺激。

　进一步的掠夺。
　进一步的交合。

　让我们继续吧。
　进入下一步。

　少女的视线涣散而无法集中，我在她的注视下，把双
手伸向她的衣物。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆Ｈ２。正常位
	CreateTextureEX("絵ＥＶ２Ａ", 4000, Center, Middle, "cg/ev/ev149_一条Ｈ２_a.jpg");
	Fade("絵ＥＶ２Ａ", 1000, 1000, null, true);

	Wait(500);
	Delete("絵ＥＶ１*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　少女的身体已经足够灼热，我想没有必要做什么利于
她放松的准备了。
　但还是触碰着她的肌肤。伸出了舌头。

　并不是因为事到如今欲求反而听从了理性的驾驭。
　只是我自己想在尚能控制的范围内花点时间好好体会
而已。怎么可能会为对方考虑。

　一吻印上她的脖颈，吸吮着汗水。
　顺势舔舐皮肤，吸吮嫩肉——留下丑陋的痕迹。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080170a02">
「嗯……啊啊……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　又受到一番小小的掠夺，少女似梦非梦地呻吟着。
　她也许根本不甚清楚自己遭受着怎样的待遇，只是一
味地接受。只是一个女人。只是一顿美餐。

　她这种反应令人把持不住，温柔不起来。
　用手在雪白的肌肤上游走。覆上并不算大的胸部隆起。

　掌心覆于其上，轻轻挑弄。
　用手指肚抚上粉色的突起。

　少女似乎焦躁难耐，扭动起身体。
　这是在引诱我。我只能这样认为。

　手中加力。
　毫无预警，开始残忍地蹂躏起尚且僵硬的小丘。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080180a02">
「呀……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　一条轻声惊叫。这很自然。
　一条的身体还没有<RUBY text="··">娴熟</RUBY>到
可以应对这番待遇。

　我是明知，而故犯。
　正是渴求着这份悲痛，才这么做的。

　所以才继续。
　彻头彻尾地粗暴揉捏着少女的乳房。

　宛如摩擦纸张般的声音不断从一条喉咙中逸出。
　她很痛苦。

　然而，却不见她逃避。
　而我也丝毫没有放她逃避的意思。也许她正是因为明
白这一点才放弃逃避。

　很好。
　所有的嗜虐性在面对这个毫无抵抗的少女时都发挥到
了极致。

　也就是说，是她撩动着我的情热。
　真是的，明明未经人事，却是头完美的小母兽。

　嘴唇移向另一侧的隆起。
　吸吮。

　又留下了猥琐的痕迹。
　……一条楚楚可怜地看着我。

　瞬时血脉贲张。
　
　用力咬上。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080190a02">
「啊……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　虽不至于咬断。
　但印上了齿痕。

　点点虚线构成一个圆圈。红色的圆圈。
　少女迷茫地凝视着。

　仿佛家畜身上加盖的烙印。
　凝视同样的事物，我却想着这些。

　嘴角一斜。
　此刻，<RUBY text="···">这男人</RUBY>是什么样的表情呢。一定是
是幅杰作吧。没有镜子真是太可惜了。

　挺起身体。
　手腕抓住少女无力的双腿使其张开。

　窥视着阴部的模样，我嘴角的歪斜更深了。
　直到面部抽筋僵硬。

　那里一片润湿。
　……明明遭受着这种对待。

　蔑视这犹如家畜般的少女。
　更蔑视满足于这个少女的自己。

　堕落的快感带来无可救药的舒畅心情，宛如毒药一般
让自己再也无法恢复原状。
　面对这一切，只有沉沦。

　将自己的阳物对上少女。
　自己丑陋的器官已灼热膨胀，甚至有些痛。

　一条看着我。
　似乎是在询问，或是在期待着什么。

　我回望她。
　并不在考虑什么。

　一条的眼神宛如被绞杀之前的雏鸡，而我的雄物即将
面对这只频临绞死的雏鸡。
　已成定局。

　这只雏鸡将被顺利地绞杀，成为一顿美餐。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆差分·挿入
	CreateTextureSP("絵ＥＶ２Ｂ", 3990, Center, Middle, "cg/ev/ev149_一条Ｈ２_b.jpg");
	FadeDelete("絵ＥＶ２Ａ", 500, true);
	Wait(500);
	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080200a02">
「啊——」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080210a02">
「呀……唔，啊啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　如我所料，少女的私处紧致难耐。

　不管多么润湿，也无法就此接受一个男人。
　想要顺滑的交合还尚显僵硬、狭窄。

　疼痛并不只属于一条。也同时属于我。
　皮肤在摩擦下伸展，产生灼烧一般的强烈刺激。

　即便如此也坚挺不萎。
　肉柱依然屹立。

　不管三七二十一，继续深入。
　这种行为就像是板上钉锥。

　推开僵硬的肉壁，扩张，强行开发。
　造就一条让自己通行的道路。

　这场征服不久遭遇一层薄膜而受到挫败。
　凭借弹力迎击的肉壁。

　虽被推回，但也只是一瞬间罢了。
　再次侵入。更加强硬。

　破裂。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆差分·破瓜
	CreateTextureSP("絵ＥＶ２Ｃ", 3980, Center, Middle, "cg/ev/ev149_一条Ｈ２_c.jpg");
	FadeDelete("絵ＥＶ２Ｂ", 500, true);
	Wait(500);
	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080220a02">
「呀…………!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　少女的疾呼。
　但声音盘踞在咽喉之中，逸出的只是些许零散片段。

　处女膜惨遭破坏，少女已经没有可以抵抗兽欲侵袭的
武器。
　只能任人侵略最后的一片圣地。

　当然，我会这么做。
　怎么可能收手。

　贯穿深处的尽头。
　我尽自己所能。企图插入自己的全部。

　用我那凝固的欲望填满少女的阴道。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080230a02">
「哈……啊啊。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080240a02">
「……凑斗先生……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　一条的眼瞳润湿。
　也许这并非仅仅意味着苦痛。

　我没有去推测其中深意。
　只是在想<RUBY text="······">她叫得真好听</RUBY>而已。

　呼吸娇柔而哀戚。
　泛起阵阵红潮的柔香美肌。

　仿佛被捕食就是她存在的全部意义。
　世间怎么会有这般生物。

　正因为有这样的生物所以世间才会发狂。
　人类不过就是种极其麻烦的动物，如何受得了。

　纯粹的野兽便可。
　以品尝猎物为本能的野兽便可。如此便可。

　相结合部位的感觉无限扩大。
　一度加大插入难度的少女私处的紧致感，如今只是带
来愉悦的温床。

　阴道因为这番坚固而使得各处都紧贴而来。
　毫无间隙的包裹带来的快感难以抵抗。

　接下来的时间仅是如此也几乎会让我射精。
　但是，我不会允许如此<RUBY text="··">松懈</RUBY>的结局。

　我开始抽动插入的分身。
　明白已经坚持不了多久。

　在有限的时间内尽可能享受更多的愉悦。
　零散而杂乱，激烈地抽动。

　断断续续的悲鸣从少女口中泻出。
　很疼吧。破瓜之血还未干，不言自明。

　不管不顾。
　独自享受。

　尽情而贪婪的品尝，
　任意妄为到极致。

　从下腹部传来的阵阵高昂。
　一切的抑制都是枉然。

　将自己的前端深入少女私处的尽头，
　在那里获得释放。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分·射精。中出し。
	CreateColorSP("絵ドピュピュ", 5000, "#FFFFFF");

	Fade("絵ドピュピュ", 300, 0, null, true);

	Wait(300);

	Fade("絵ドピュピュ", 0, 1000, null, true);
	CreateTextureSP("絵ＥＶ２Ｃ", 3980, Center, Middle, "cg/ev/ev149_一条Ｈ２_d.jpg");
	Delete("絵ＥＶ２Ｂ");
	FadeDelete("絵ドピュピュ", 1500, true);

	Wait(500);

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080250a02">
「……啊啊……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　释放出了我所能释放的一切。
　终于呼出一口气。

　如锅炉般燃烧的意识终于得到了些许镇静。
　我移动视线，观察着她。

　被暴力凌辱践踏的模样。
　因为我就是这么做的，也难怪这幅光景。

　她一定感觉到，体内此刻有什么在漫延在渗透。
　她睁大双眼……但眼眸上霭霭雾气，眼中空无一物。

　……不。
　她眼中还是有什么的。

　那就是被凌辱的这份自知。
　明白自己遭受了暴力的侵袭。

　某种绝望的情感。
　某种悲惨的结局。

　以及自己对于这些的反应。
　一条将视线转向我。

　那是<RUBY text="····">等待后续</RUBY>的眼神。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0080260a00">
「呵。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　不由自主地发出了怪声。
　那是我在笑。

　果然如此。
　果然是这样吗。

　你就是这样的女人吗，一条。

　笑意愈加强烈。
　并非源自侮辱。只是高兴而已。

　少女已品尝过身体屈服于力量之下的<RUBY text="··">滋味</RUBY>。
　她承认了自己的肉体渴望着如此的待遇。

　少女终于知晓何为快感。
　一定还不满足。一定难忍心中更多的欲求。

　一条的双眸正诉说着她的欲望。
　目光虽稚嫩却也妖娆、淫靡。

　那我就满足她吧。
　给她所求之物吧。

　我还远远没有满足。
　就让我们两人互相贪婪地掠夺彼此吧。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆Ｈ３。後背。一条を這いつくばらせて後ろから
	CreateTextureEX("絵ＥＶ３Ａ", 4000, Center, Middle, "cg/ev/ev150_一条Ｈ３_a.jpg");
	Fade("絵ＥＶ３Ａ", 1000, 1000, null, true);
	Delete("絵ＥＶ２*");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　抱起一条的身体，让她转身向后。
　趴在被褥上，摆出臀部翘起的姿势，这模样真是别有
一番韵味。

　白浊之物从股间垂滴而下。
　其中夹杂着一丝血红，那是受虐后的佐证。

　是因为羞耻难耐吗，少女伸出手臂。
　企图遮掩那份凄惨。

　真是狂妄之举。
　我抓住她的手腕，将其反扣。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080270a02">
「啊呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　极其轻易地就被控制住，彻底失去所有抵抗手段，一
条难过地哭泣着。
　无可奈何地接受我视线的凌辱。

　……零落下来的白浊与血红混合的液体中开始掺入了
其他的液体。

　少女一边抽泣不已，一边眄视流盼。
　火热的眼神。

　那是宣告微弱抗议的视线。
　我会如何回应她的视线呢，她自然知道答案。

　不胜欣喜。
　就满足她的期待吧。给予超越她期待的回报。

　我盯视着那小小的穴口。
　毫无防备、一展无遗的排泄用器官。

　轻轻吮了一下食指。
　然后插入。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080280a02">
「呀!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　她没想到吧。
　发出疯狂的叫声，一条绷起了身子。

　不知是不是想要抽离，她蠕动着腰肢。
　当然，我是不会因此放开她的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080290a02">
「不要……
　那种地方……！」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0080300a00">
「闭嘴。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　用空闲的手从后抓住少女的脑袋，将她的脸庞埋入
枕头之中。
　但也不能使她无法呼吸，稍稍容她侧向一边。

　而后，更加深入了插入后穴的手指。
　直到手指根部埋入，触摸内部。

　宛如探寻一般搜遍每个角落。
　然而我的目的只是侮辱这位少女。

　一条哭泣着，泪水沾湿了枕头。
　这是极度的耻辱。惨绝的屈辱。

　明明如此，肉体却异常滚烫。
　僵硬的处女之躯逐渐演变成充满蛊惑的身体。

　真是令人无法自拔。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ３Ｂ", 3990, Center, Middle, "cg/ev/ev150_一条Ｈ３_b.jpg");
	FadeDelete("絵ＥＶ３Ａ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0415]
　尽情享受了对一条的折磨之后，我抽出手指。
　而后对准后穴下方的部位，再次插入坚挺之物。

　这是第二回合的交合。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080310a02">
「啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　一条的背脊一阵颤抖。

　与第一次的大相径庭。
　不论是柔软度，还是深度，亦或体温。

　短短的时间内，改造了一条的身体。
　因为接受了凌辱。
　因为受到了暴虐。

　这具肉体回应着我的暴行。
　妖媚地蠢动着迎接我。

　卑劣的行为与卑劣的反应。
　正是天作之合。

　疯狂搅动着少女的胎内。
　每一次的撞击都令神经跃起。

　这一次，不仅仅是我。
　可以体会到少女的感觉也跟随着节奏逐渐攀上巅峰。

　彻头彻尾的粗糙。
　如假包换的毒辣。

　交合之中追求着感觉的升华。
　将少女推向欲望的顶峰。

　我与她的交合根本谈不上精致，却在协调上达到了完
美的境界。
　同时达到顶峰。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆差分·達した一条
	CreateColorSP("絵ドピュピュ", 5000, "#FFFFFF");
	Fade("絵ドピュピュ", 300, 0, null, true);
	Wait(300);

	Fade("絵ドピュピュ", 0, 1000, null, true);
	CreateTextureSP("絵ＥＶ３Ｃ", 3980, Center, Middle, "cg/ev/ev150_一条Ｈ３_c.jpg");
	Delete("絵ＥＶ３Ｂ");
	FadeDelete("絵ドピュピュ", 1500, true);

	Wait(500);

	SetNwC("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080320a02">
「哈——啊————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　达到了一个未知的境地，一条沉沦忘我。
　同时在体内接纳了我再度的射精。

　余韵绕梁而久久不绝。
　舒缓着呼吸，享受着愉悦。

　……不够。

　还不够。
　还想要更多。

　不知满足的野兽在吠叫。
　股间的隆起没有萎靡的一刻，兴奋度不减反增。

　欲求更多。
　更多。

　无边无际的欲望一定呈现在了我的脸上。
　甚至可能化成了声音泄漏而出。

　一条恍惚地看着这样的我。
　眼瞳不曾失去热度。

　看不出任何拒绝我的迹象。
　被如此蹂躏，依然容许着更加充满暴力的未来。

　不知停止为何物。
　因为根本就不存在。

　一条把脸转向我。
　吸吮着半开半合的嘴唇。

  探入舌头，在她的口中翻腾舔舐。
　一条战战兢兢地伸展柔舌，缠住了入侵者。

　血液在沸腾。
　大脑失去了思考的功能。

{	Fade("絵色黒", 3000, 1000, null, false);}
　我开始了第三回合的入侵。
　
　……当我终于精尽力竭恢复自我时，已是五轮结束后
了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_署長宅景明私室_03b.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	Wait(1000);

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//◆赤面
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0080330a02">
「……你真的很胡来呢。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0080340a00">
「……抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　这是我凑斗景明的老毛病了。
　无药可医。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(2000, 2000);
	}
//============================================

}

..//ジャンプ指定
//次ファイル　"mb03_009.nss"