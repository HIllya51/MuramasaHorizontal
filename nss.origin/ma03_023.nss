//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_023.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma03_023.nss","ma03_SB2",true);
	Conquest("nss/ma03_023.nss","ma03_SB3",true);

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

	//▼ルートフラグ、選択肢、次のGameName
	#av_三世村正レーサー偽装=true;

	$PreGameName = $GameName;
	$GameName = "ma03_024.nss";

}

scene ma03_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_022.nss"

//◆決勝戦開会式。花火とか。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw雷蝶_不興.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230010a08">
《大和首次，装甲竞技国内统一锦标赛……
　大和ＧＰ。》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230020a08">
《闯入决赛的二十支战队。还有，为了观看他
们的战斗而蜂拥而至的观众席的人们……
　让吾来告诉你们为什么要举办这个大会吧。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230030a08">
《因为美啊！
　吾想看到美丽的东西！》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230040a08">
《强者是美丽的！
　巧者是美丽的！
　贤者是美丽的！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230050a08">
《并且，速者也是美丽的！
　连风都能甩在身后笔直向前疾驶的姿
态，仅仅如此就充满着能
夺走一切视线的美！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230060a08">
《这种美的极限在哪里？
　这还用问吗……那就是最快的人。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230070a08">
《最快的人，是最美丽的！
　吾为了看到这份英姿而召开了大和ＧＰ啊！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230080a08">
《准备好了吗？　你们二十位……
　被选拔出来的骑手！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230090a08">
《请让吾辈看到至高之美！》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230100a08">
《现在——
　吾宣布，大和ＧＰ决赛开始!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆わーわー。花火どんどん。

	CreateSE("SE01","se背景_ガヤ_歓声02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("SE02","se背景_ガヤ_サーキット04_L");
	MusicStart("SE02",0,1000,0,1000,null,false);

	WaitKey(3000);

	SetVolume("SE*", 5000, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	Wait(1000);
	CreateSE("SE01","se背景_ガヤ_サーキット01_L");
	MusicStart("SE01",500,800,0,1000,null,true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230110a07">
《哎～这个天生吸毒上瘾的大会开场白感觉
还不错呢。非常感谢。
　决赛马上就要开始了！主持及解说，由我弹
丸雷虎担任。》

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230120a08">
《为什么啊!?》

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230130a07">
《别在广播室大声嚷嚷哦孔雀男。》

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230140a08">
《谁是孔雀男啊！
　主持和解说应该都是由吾安排好了的人来担
任吧!?　为什么会是你啊！》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230150a07">
《啊～那些人肚子痛回家休息了。
　因为他们喝了过期的牛奶。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230160a08">
《……牛奶？》

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230170a07">
《哎呀，最近伊豆高原的牛奶卖得不好啊。好
像被北曾出品的牛奶压制了。
　我家仓库里面还剩了很多啊。有类似酸奶的。
还有黄油味的。》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230180a08">
《是你让他们喝的啊!!》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230190a07">
《那么～各队现在都在维修区专心致志地
做着比赛的准备！
　不容许一点失误！　战斗已经打响了！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230200a07">
《在这里我先按顺序介绍一下争夺最速之名
的二十支队伍吧。
　首先是杆位发车的——》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230210a07">
《翔京队“三城七骑众”！
　骑体是有着黄金之翼的“理想”。
　骑手是广为人知的，认真起来最强的
来马豪。》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230220a07">
《他在昨天的预选赛中向我们展示出了不辱其
骑体名的惊人的赛迹！
　简直是装甲竞技的霸主！　他能用压倒性的
力量赢得这场决赛吗!?》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230230a08">
《……说得没错。现在他应该是最值得期待的
吧。
　如果这样的话，把这个俗气的黄金之翼当做
想要制霸全国的意气倒也不错。》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230240a08">
《请美丽地战斗吧！
　别被别人嘲笑那黄金是镀上去的哦！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230250a07">
《接下来是田村队“　Ｔ·Ｆ·Ｆ　”！
　骑体是闪着蓝色光芒的“逆袭”，
　骑手是继承了悲剧天才之血脉的皇路操。》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230260a07">
《这个骑体也和翔京理想号一样是昨天首次亮
相的！　真是惊天动地的爆裂疾驰！
　那是这个蓝色剑胄到达了性能极限才产生的
结果吗。还是说仍有所保留呢!?》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230270a08">
《至少期待一下那不是偶然吧。
　吾可不希望决赛变成一场无聊的比赛啊。》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230280a08">
《追求极限吧！
　用那台蓝色的机体！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230290a07">
《……哦呀，快要开始了。
　简单说两句吧。》

//嶋：変更（ＲＧ-一〇ＣＸ）
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230300a07">
《第三位，海边狂战士。
　这是联合会的组队。
　骑体是新锐骑ＲＧ-一〇ＣＸ。》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230310a07">
《秘密武器非跃进离合器
到底能否发挥效果呢!?》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230320a08">
《这个骑体从设计来看没做什么冒险呢。
　虽然性能的确很好。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230330a07">
《第四位是横锻队。
　骑体是曾经引领世界的名骑猎犬的发展型，
超级猎犬。》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230340a07">
《这个骑体开始向传送带驱动改进！
　是想要对于链式驱动的翔京和旋转轴驱动的
田村显示自己的优势吗!?》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230350a08">
《长相还是那么难看……
　不过速度就是正义。如果这就是要站在世界
顶点的身姿，那么就去贯彻自己的意志吧。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230360a07">
《接下来是传送带的本家，平耕队。
　投入使用了新型骑“<RUBY text="Ｓｅｘｙ">魅惑</RUBY>”，确保了第五名
的位置！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230370a07">
《众所周知他们的竞速异常顺滑。
　……但<RUBY text="Ｓｅｘｙ">魅惑</RUBY>是什么意思？》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230380a08">
《这个公司的命名品味有时真让人觉得难以理
解……》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230390a07">
《第六位，镰仓松井。
　旗舰机“<RUBY text="Ｔｈｅ　Ｇｅｉｓｈａ">艺伎</RUBY>”装载了像是试制品
一样的零件登场了！》

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230400a07">
《……这个也是吗……
　为什么每次这些命名品味都像是热衷大和的
外国人一样？》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230410a08">
《大概就是那种人负责的吧？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230420a07">
《第七位！
　壁虎队，骑体是“<RUBY text="Ｇｅｎｔｌｅｄａｓｈ">疾走绅士</RUBY>”！》

{	FwC("cg/fw/fw茶々丸変装_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230430a07">
《……喂喂……》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230440a08">
《……这个大会什么时候变成了怪名大奖
赛了啊？……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆コース上
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg038_サーキット直線_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	Wait(1000);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230450a07">
《哎～接下来，十一位。
　政府机关代表警察队。》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230460a07">
《骑体是代替了在预选赛时破损的火箭，进行
了独自改造的——》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230470a07">
《“<RUBY text="Ｈｏｔｄｏｇ">热狗</RUBY>”！》

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230480a07">
《混蛋连你也是吗!!》

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230490a08">
《那不是你强塞进来的骑体和骑手吗!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	#av_三世村正レーサー偽装=true;

	CreateTextureEX("絵st100", 100, Center, InBottom, "cg/st/3d村正競技_立ち_通常.png");
	Move("絵st100", 0, @+150, @0, Dxl1, true);

	Move("絵st100", 500, @+50, @0, Dxl1, false);
	Fade("絵st100", 500, 1000, null, true);

//◆村正レーシングアレンジ
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230500a01">
《……什么啊，这种名字……》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230510a00">
「……呃。
　那时忙于你的改装，没时间想名字了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我站到了指定的位置，回答了村正的嘟囔。
　我现在还有一些不对劲的感觉。装上了一些只作为外
观拟装的零件，让我熟悉的剑胄产生了一些不一样的感
觉。

　我感到有些烦躁。
　这种心情，村正要比我更加强烈吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230520a00">
「而且这个名字也很有来历。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230530a01">
《别再胡说了。
　以为我很无知吗。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230540a00">
「……这是真的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵st100", 500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我只是小声地抗议，同时看了看周围。
　村正似乎凭借着使命感忍耐着这种像是展览一样的待
遇，我没必要再继续刺激它。

　我感觉到有视线从维修区的方向传来。
　惊讶，或者玩味。虽说我看似装备了竞技用
剑胄，但似乎骗不过那些专业的机械师呢。

　……不过，他们不真正摸到的话应该不可能判断出这
是真打的吧。
　他们有这样的疑问也可以理解。等比赛一结束，我就
马上离开吧。

　田村的逆袭骑也沐浴在同样的视线下。
　……不对。也混着另外的成分。

　那是从翔京的维修站传来的。
　那里有些困惑的视线。

　……原来如此。
　对于昨晚本应没有公布（虽然向大会本部报告过了，
但没有任何反应）的袭击，他们是知情人吧。

　派出了袭击队伍，听到爆炸的那个时候，也许他们就
确信计谋已经成功了吧。
　这样的话对他们来说毫发无伤的蓝色骑体就好似不死
的怪物一般。动摇也是理所当然的吧。

　但是，站在首位的黄金骑手完全看不出那种情
形。他是什么都不知道吗，还是说就算知道了也
已经整理好心态了呢。
　他开始专注于自己的世界。其他骑手也是。

　将注意力分散在周围的人只有我一个。
　果然不管怎么看，我都太与众不同了。

　没办法。我和他们的目的不同。
　他们是为了在比赛中取得冠军而站在这里的。
但我，或许是为了毁灭他们其中一骑而来到
这里的。

　在这场比赛中，我只是个异类。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230550a00">
「村正……有什么感觉吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230560a01">
《……还是一样，感觉很强烈。
　但是方向和距离还是不明……
只能确认是在这个周围。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230570a00">
「这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　果然是用什么方法隐藏起来了吗。
　二十骑——不，应该把除我以外的十九骑之中的某一
骑看作寄生体。

　无论是谁都不奇怪……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230580a00">
「孵化时间呢？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230590a01">
《……要说的话，现在这个瞬间都有可能。
　说实话，目前<RUBY text="····">很不稳定</RUBY>，甚至让人
怀疑何以还未孵化……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230600a01">
《这种状况绝对撑不到明天吧。
　做好觉悟吧，主君。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230610a00">
「明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　孵化肯定是在今天之内。
　说不定，就在这场决赛之中。

　片刻都不能放松。
　有必要让身心都做好及时应对的准备。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 30000);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	SetVolume("SE01", 500, 0, null);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230620a07">
《……全部的装甲骑手都到达了起跑线！
　马上就要开始了！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230630a07">
《所有的骑手，所有的观众，
盯紧起跑信号灯吧！
　那个绿灯亮起的瞬间！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230640a07">
《决出大和最快的比赛——
　现在，开始!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1500);

..//ジャンプ指定
//次ファイル　"ma03_024.nss"

}


..//ma03_SB2
function ma03_SB2($サーキット真横_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	//昼間
	if($ma03_BGNum==1){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	//夜
	}else if($ma03_BGNum==2){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}else{
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//ma03_SB3
function ma03_SB3($サーキット真横_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_01.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");

}
