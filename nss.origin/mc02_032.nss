//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_032.nss_MAIN
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
	#ev173_鍛造雷弾保管器=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_033.nss";

}

scene mc02_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031end.nss"

//◆黒
//◆※以下、縦書きボックス統一で。横書きを挟むと煩雑
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	Delete("上背景");
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320010a04">
「就是这个。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320020a00">
「……这是……？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320030a03">
「嗯。
　我曾在横浜基地里远远地看过一次……
大概没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鍛造雷弾（保管器）
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev173_鍛造雷弾保管器.jpg");
	SoundPlay("@mbgm35", 0, 1000, true);

	FadeDelete("黒幕１",1000,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　外形和寺庙里的钟相似。
　高度超过了我的身高。

　从外表看来，只是粗糙的金属块而已。
　但它是不祥的、冰冷的。虽然由于知道了它的真面目
而怀有成见……但还是令人讨厌。

　这就是，
　
　————锻造雷弹。


{
//◆どたどた。足音
	OnSE("se人体_足音_兵士集合01", 1000);
}


　突然，背后传来许多凌乱的脚步声。
　我惊讶地回过头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士＆竜騎兵

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	//CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bc_01.jpg");
	DrawDelete("黒幕１", 200, 1000, "slide_01_02_1", true);

	OnSE("se戦闘_銃器_複数構える02", 1000);
	Wait(100);
	StL(1000, @-40, @0,"cg/st/3dユーウォーキー_立ち_抜刀.png");
	StC(1100, @-120, @0,"cg/st/stＧＨＱ兵士_通常_制服.png");
	Request("@StC*", Smoothing);
	Rotate("@StC*", 0, @0, @180, @0, null,true);
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStL(300,false);
	Move("@StC*", 200, @20, @0, Dxl1, false);
	Wait(50);
	Move("@StL*", 200, @20, @0, Dxl1, false);
	FadeStR(200,false);
	FadeStC(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　不到十人的武装进驻士兵……
　他们的统领站在最前面，其中还有龙骑兵。

　无处可逃。形势非常不利。
　敌方势力直接摆开阵势，如果硬闯的话，我方一定会
因为火力上的差距而被压制。

　姑且不论有装甲防身的我，大鸟大尉和
永仓侍从很难保命吧。
　
　但，大尉她却并不准备默默地等待结束。

　她比面前的这些家伙动作更快，用枪口瞄准。
　对准炸弹庞大的身躯。

　士兵们静止了。
　……脸上浮现出困惑的神情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320040a03">
「很好很好。
　就那样不要动啊。」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320050e141">
「……你想干什么？　不请自来的大和人！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320060a03">
「这个东西是什么，你们没有听卡农中佐
说过吗？」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320070e141">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320080a03">
「哎呀……这样啊。原来这种机密
没必要告诉警卫队呢。
　不过，你们知道这是危险物品吧？」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320090e141">
「……这个我倒是听说过。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320100a03">
「的确危险。
　这可是预定马上就投放到普陀乐城，
能让我们大家都灰飞烟灭的新型炸弹哦。」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320110e141">
「什么!?」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320120a03">
「所以不要动哦。
　只要有人敢动一步——
嗖地一下！砰嗙！」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320130a04">
「我们所有人都会变成空气中的尘埃。
　然后就会被作为兴登堡号有史以来最大的惨案
而载入史册。」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320140e141">
「胡说八道……！」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320150a03">
「断定这是弥天大谎，你有什么根据吗？」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320160e141">
「……唔。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320170a04">
「这只是个纯粹的忠告呀，
不然你去请示一下卡农中佐怎么样？」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320180e141">
「……没必要！
　即使真如你们所说，那是炸弹，
我看也不像仅凭一发子弹就能引爆的炸弹！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320190a03">
「哎呀，真的。
　你听到了吧，景明大人。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320200a00">
「是。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320210a03">
「一旦发生紧急情况，就请用力砍这个炸弹。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320220a00">
「——明白。」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320230e141">
「什么!?」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320240a04">
「多么亲切的人啊。
　既然认为没问题，直接采取行动就好了，
还费心特地给我们出主意。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320250a04">
「是为刚才的忠告回礼吗？
　这真是丝毫不辱没英国绅士之名的
巧妙行为啊。」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0320260e141">
「唔……可恶……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　被老女人揶揄着，龙骑兵咬牙切齿。
　……看来卡农中佐选任船只防卫的人才，所要求的
并不是机敏而是愚直。虽然不知道这判断是否正确，
不过现在这一点对我们有利。

　若对手是这个性格耿直的将校，即便百年之后，
大鸟主仆肯定还是会对其不屑一顾。
　
　虽然我是这么想的，但我还是控制住乐观的心态。

　不能看错现在的形势。
　被彻底逼得走投无路的是我们。徘徊在
死亡深渊的还是我方。

　如果能再早一点发现炸弹的话——
我后悔起来。
　被逼到这种地步，无论是破坏还是放弃
都做不到……无法收尾。一筹莫展。

　在敌军的胁迫中大胆地彰显着优越感的
大鸟主仆也这么认为吗，她们没有丝毫的
轻视和掉以轻心。虽然她们面无表情，
但从举手投足的动作上，我看得出来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320270a03">
（景明大人？）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320280a00">
（我在）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320290a03">
（就这样拖延时间吧。
　唔……只要一〇分钟）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320300a03">
（就说我们以安全归还炸弹作为交换，
要求放我们离开，怎么样？）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320310a00">
（一〇分钟可以吗？）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320320a03">
（只要过了这段时间，就能保证飞船肯定已经飞出
普陀乐上空。
　即使想投炸弹，也做不到了）


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320330a00">
（但飞行舰是能够在空中停止的。
　而且，即使飞过头，返回便是——）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320340a03">
（六波罗也不傻，景明大人。
　进驻军的飞行舰一直在普陀乐上空
转来转去，他们也会觉得可疑吧）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320350a03">
（卡农中佐不可能无视这种风险，强行作战的）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320360a00">
（原来如此。有道理）


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320370a04">
（那么，只要一〇分钟……）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320380a03">
（嗯。
　一〇分钟，照此拖延下去就是我们的
胜利）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320390a03">
（……这是伪装的炸弹，其实是守护这艘船
船的头雕像超神乌帕尼恰塔大人，只要
不会发生这样不幸的奇迹就没问题）


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320400a04">
（别担心，大小姐。
　因为从占星来看，这个月双鱼座的人
会很幸运呢）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320410a03">
（真的吗？）


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320420a04">
（嗯。但恋爱运势却会永远处于最低点）


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320430a03">
（为什么啊!?）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320440a00">
（那如果他们突破了我们的压制，又该
如何是好，大尉阁下）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320450a03">
（到时候就要做我刚才拜托你的事情呀）


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320460a00">
（当真要砍吗？）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320470a03">
（如果运气好，或许不会爆炸，只是让炸弹
失去爆炸功能而已）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0320480a00">
（…………）


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0320490a04">
（赌上双鱼座的运势吗？）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320500a03">
（即使运气不佳，不幸爆炸——
　事已至此，根本无所谓吧）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320510a03">
（因为不是按照正规程序爆炸，
威力也应该会相应地减小。
　再加上这里是高空）


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0320520a03">
（大概，不会波及到地面）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　地面上。
　
　
　……对于在飞行舰里面的人，却无处可逃。

　大鸟香奈枝，还有她的侍从也是。
　这里是空中。是不可能让她们逃脱，幸免于死的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//次ファイル　"mc02_033.nss"