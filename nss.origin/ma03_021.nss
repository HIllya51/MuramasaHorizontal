//<continuation number="660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_020a.nss"
//前ファイル　"ma03_020b.nss"



//◆合流
	PrintBG("上背景", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……算了，都还没有决定明天是不是要参加比赛呢。
　如果在剩下的车库中发现寄生体了的话，事情就
到此结束了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210010a00">
「还有什么地方没去吗。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210020a04">
「请稍等一下。
　……只剩下田村了呢。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210030a04">
「因为是最远的所以留到了最后。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210040a03">
「要去吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210050a00">
「是的。
　虽然可能性很低，但田村的备用骑是寄生体
的可能性还是有的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我没有说实话。
　我认为这完全是不可能的。如果银星号注意到田
村的话，无论如何，都一定会选择那台闪着金属光
芒的蓝色骑体无疑。

　但这并不能成为不去确认的理由。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateVOICE("さよ１","ma03/0210161a04");
	CreateVOICE("さよ２","ma03/0210162a04");
	CreateVOICE("さよ３","ma03/0210163a04");
	CreateVOICE("さよ４","ma03/0210164a04");

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210060a04">
「快要到零点了呢。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210070a03">
「有点担心头发和肌肤呢。
　据说熬夜对身体不好。」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210080a02">
「哎。
　真是啰里啰嗦的啊，ＧＨＱ的大尉小姐。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210090a03">
「就算你这么说，每天你自己也要打扮的吧？
　这么白皙的，软软的，真让人羡慕啊。」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210100a02">
「别碰我！　捏什么啊！
　可恶，我才不去做这种无聊的事情呢！」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210110a03">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210120a03">
「不是吧？」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210130a02">
「是真的哦。」

{//◆チャキ
	OnSE("se戦闘_銃器_構える01",1000);
	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210140a02">
「为什么把枪对着我！」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210150a04">
「大小姐，冷静下来！
　虽然很不想承认，但偶尔像这样的人也是存
在的！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("@text0040");
	SetFwC("cg/fw/fwさよ_怒り.png");

//<voice name="さよ" class="さよ" src="voice/ma03/0210160a04">

	SetBacklog("「虽然！　完全不想承认！　但有就是有！　没办法的!!」", "voice/ma03/0210160a04", さよ);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//嶋：音声：四分割して頂けると助かります。
//【さよ】
{MusicStart("さよ１",0,1000,0,1000,null,false);}
「虽然！<k>
{	SetVolume("さよ１", 0, 0, null);MusicStart("さよ２",0,1000,0,1000,null,false);}
　完全不想承认！<k>
{	SetVolume("さよ２", 0, 0, null);MusicStart("さよ３",0,1000,0,1000,null,false);}
　但有就是有！<k>
{	SetVolume("さよ３", 0, 0, null);MusicStart("さよ４",0,1000,0,1000,null,false);}
　没办法的!!」

</PRE>
	SetTextEXC();
	Request("@text0059", NoLog);
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetVolume("さよ４", 0, 0, null);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210170a03">
「呜……
　天生的怪物……！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210180a02">
「……竟然叫我怪物吗。
　就因为这种无聊的事。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210190a04">
「绫弥小姐也要注意言辞。
　隔墙有耳，隔窗有眼。不知什么时候就可能
到处树敌。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210200a02">
「？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
　……说起来。
　现在不是带着女性到处跑的时间了吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210210a00">
「大尉阁下。
　要不您就先回宿舍。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210220a03">
「哎呀，哎呀。
　景明先生，您关心我的美容，我真是太高兴
了呢。」

{	SetComic(@0,@0,1);
	FwC("cg/fw/fw一条_警戒.png");}
//◆コミカル怒り
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210230a02">
「……」

{	DeleteComic();
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210240a03">
「不过不用担心。刚才只是开个玩笑。
　因为我对自己的肌肤很有信心哦。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210250a03">
「就像这样。
　景明先生，您摸一下也可以哦？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210260a00">
「现在还在执行任务，我只能心领了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我话说到一半，手臂就被抱到她的胸口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210270a02">
「可恶——！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210280a04">
「完美的攻击技啊大小姐！
　没错，对抗以天生魅力进攻的年少女主角，
以性感进攻的年长系！　这才正是正确的
理想状态！」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210290a04">
「不过一般情况下，虽然年长系在前期会领先，
但最后却会遭到反攻而败战。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210300a03">
「这种事不用都说出来啊，婆婆！
　既定事实哦！　只要有既定事实就会赢的
哦！」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210310a02">
「别沉浸在美梦中了臭婆娘。
　快点给我放开啊，凑斗先生很不愿意的吧！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210320a03">
「哎呀，有人说过这种话吗。
　呐，景明先生？要不要和我两个人一起乘着爱的
自行车·人生玫瑰色号奔向崭新的未来呢？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210330a00">
「不。」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210340a03">
「你看吧！」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210350a02">
「那是我的台词啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆閃光の蹴り。げし。
	CreatePlainSP("絵振", 1000);
	CreateSE("SE01","se戦闘_攻撃_殴る05");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");
	Wait(10);
	DrawDelete("絵フラ", 200, 100, "circle_01_00_1", false);
	FadeFR3("絵振",0,1000,200,0,0,10,Dxl2,true);

	OnSE("se人体_衝撃_転倒03",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　一记踢击从极其锐利的角度出现了。
　站在我旁边的大尉消失了，随后，我身后发出了滚动
和摩擦的让人不愿意回过头去的轰响。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("絵振");
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210360a00">
「……两人共骑一辆自行车是违反交通法规的，
大尉阁下。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210370a04">
「说晚了哦，凑斗先生。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我也明白这点。

　大鸟大尉微微晃动着身子站了起来。
　她用手背轻拭唇角，咯咯咯地笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210380a03">
「漂亮的一踢哦，一条小姐。
　我险些就要看见走马灯了。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210390a02">
「你要是能别醒过来就好了。
　真是个结实的婆娘。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210400a03">
「这次就由我这边开始吧。
　您准备好了吗？」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210410a02">
「……拳击吗？
　真可笑……」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210420a02">
「来吧。」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210430a03">
「……呵呵呵。」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210440a02">
「哼……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210450a00">
「那么，侍从阁下。
　我就自己去田村的车库了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210460a04">
「嗯。您请走好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我拖着车子朝田村的车库方向走去。
　从这里走的话比较近。

{	SetVolume("@mbgm*", 2000, 0, null);}
　不过。<k>
　我还没走几步，就停下了步伐。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210470a00">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210480a04">
「哎呀，出什么事了吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210490a00">
「不是。
　刚才……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　在不远处的路口，有一群人影跑了过去。
　那些人，如果没有看错的话——脸都被蒙住隐藏了
起来。

　那是临时的，非常简陋的面罩。
　就好像是银行抢劫犯一样。

　我想起了一条在吃饭的时候提起的话题。

　……有奇怪的团伙在附近徘徊。
　都是非常危险的，杀气腾腾的家伙……

　他们要前往的地方——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170a]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210500a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆駆け出す音。たっ。
	SoundPlay("@mbgm13",0,1000,true);
	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("SE*", 3000, 0, null);
	CreateTextureSP("絵ＥＦ", 1000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawTransition("絵ＥＦ", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);
	FwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170b]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210510a04">
「凑斗先生？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210520a02">
「哎？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210530a03">
「哎呀？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　——只可能是田村的车库。


　没有时间带村正出来了。
　万一有情况的话也可以叫过来。不过我觉得大概没有
这个必要吧。

　那是更为简易的案件。
　虽然这并不是说能预测到的损伤不会很大。其中还有
受伤和杀人的可能性存在。

　绝对不能视而不见。
　我跑了起来。从后面传来了三个
——或者应该说是六个？
——脚步声紧紧跟着。

　不对。
　从岔道那里，还有一人——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	FadeDelete("絵ＥＦ", 500, false);
	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210540a07">
「哟。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210550a00">
「！」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210560a00">
「您是。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210570a07">
「我就猜到会发生这种事啊——！」

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210580a07">
「我稍微监视了一下啊。
　哎呀该怎么说呢……这种情况果然没有
背叛我的期待？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210590a00">
「我倒是希望背叛一下比较好啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　我继续跑。
　少女在我身旁并排紧紧跑着。我并没有调整
速度。她有着从娇小的身躯完全看不出的速度。
……或者是什么身体能力吗。

　已经可以看到田村的车库了。
　车库里面已经传来了绝不是剑胄调整工作发出的喧闹
声。

{	CreateSE("SE01","se戦闘_破壊_金属");
	CreateSE("SE02","se日常_物_木箱壊れる01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,750,null,false);}
　重物滚动的声音。
　硬物碰撞的声音。
　……惨叫。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210600a00">
「——」

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210610a07">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我和旁边的少女交换了一次视线，然后冲了进去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガレージ内
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);

	DrawDelete("絵暗転", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　确认情况。
　蒙面的男人有五、六、七个人。里面有四人在驱赶工作
人员，还有三人面向同一个地方。

　田村队好像之前正在稍事休息。运气不好——不对。
应该不是这样的。
　这不是运气的问题，很可能是对方就打算趁这个间隙
发动攻击。

　员工无一例外都陷入了六神无主的境地。有很多人只
是躺着睁大眼睛看着这一切。
　被那三人瞄准的目标——在车库角落的皇路操，现在
正呆然地想要起身。

　逼近的蒙面男手里拿着短短的铁棒。
　粗野但是有效的凶器。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210620a00">
「都不许动!!　警察!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我从腹腔发出声音。
　一瞬间，所有人都停下了动作。

　……但是，过了这一瞬间依旧没有动的只有田村的工
作人员。
　蒙面集团再次行动了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210630a00">
（果然吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　无论如何警察也还是警察。
　在这种情况下听到这个名词的话，至少也该露出些胆
怯的样子。

　他们的态度就像是视而不见。
　也就是说——这只能<RUBY text="··">证明</RUBY>警察对于他们来说只是不足
挂齿的存在。

　而且他们最优先的目标是骑手。比赛队伍的心脏。
　这么说的话，他们的真面目是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210640a07">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　旁边的少女大步冲了过去。
　从她的视线看来，她瞄准的是面向皇路操的三人中最
前面的那人，站在最危险位置的男人的后背。

　他们一瞬间的停止，给予了少女能够追上去的余地。
　问题是少女要如何制止他们——一瞬间，我中止了思
考。我相信她要做的话肯定有办法。

　我必须要制止另外两人。
　我迈出脚步。身后传来了怒喊。是一条吗——她们似
乎也赶上了。

{	OnSE("se人体_動作_跳躍01",1000);}
　冲过去。
　我这样追过去，对于后背的打击很难产生效果。目标
是肋部。攻击肝脏那里——不，修正路线。有必要确实
地解决这个男人。

　击穿腋下。
　——那是一击必倒的要害。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆打撃
	OnSE("se戦闘_攻撃_殴る03",1000);
	CreatePlainSP("絵振", 1000);
	Shake("絵振", 300, 0, 10, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　男人没有发出惨叫。
　他口吐白沫，夸张地踉跄了一下，倒在了旁边同伴的
身上。

　那个男人虽然吃了一惊，但一瞬间就恢复了状态。
　他推开了现在只是障碍而已的同伴，继续瞄准目标
——这种行动可以称之为果断。

　但是我能够到他。
　男人还未挥下右手的凶器，我比他更快。

　左腿蹬地。
　右腿踢出。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蹴り
	OnSE("se戦闘_攻撃_キック02",1000);
	Shake("絵振", 300, 20, 0, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw覆面Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ｅｔｃ／覆面Ａ】
<voice name="ｅｔｃ／覆面Ａ" class="その他男声" src="voice/ma03/0210650e239">
「呜啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵振*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　因为他果断没有失去目的，所以对于我完全没有防备。
我将他的侧腹部一直踢得陷到了脊椎，一瞬间他呆呆地
站在那里。

　然后他像是弹簧一样被踢开了。他无疑已经失去了继
续行凶的能力。
　我的视野中，间接并且直接地出现了我见过的少女骑
手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【操】
<voice name="操" class="操" src="voice/ma03/0210660b42">
「……你，是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　我收回了踢出的腿，然后以其为轴转过身。
　我确认着周围的情况。

　我第一个看到的是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

//◆選択：一条／香奈枝／ライガー

..//ジャンプ指定
//◆一条　"ma03_021a.nss"
//◆香奈枝　"ma03_021b.nss"
//◆ライガー　"ma03_021c.nss"



//★選択肢シーン
scene ma03_021.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm13",0,1000,true);
	PrintGO("背景０", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice03("一条","香奈枝","雷虎");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA03();
//一条　"ma03_021a.nss"
				$GameName = "ma03_021a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//香奈枝　"ma03_021b.nss"
				$GameName = "ma03_021b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//ライガー　"ma03_021c.nss"
				$GameName = "ma03_021c.nss";
		}
	}
}

