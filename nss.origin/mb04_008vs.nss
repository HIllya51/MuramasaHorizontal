//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_008vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_008vs.nss","TurboBlur",true);
	

//コックピット用Ｓｅｔ
	CP_AllSet("村正");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg001_空a_02=true;
	#bg202_旋回演出背景山_02=true;
	#ev107_双輪懸図解_d=true;
	#ev153_村正ＶＳ銀星号_a=true;
	#ev153_村正ＶＳ銀星号_b=true;
	#ev153_村正ＶＳ銀星号_c=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#ev155_村正ＶＳ銀星号３_a=true;
	#ev155_村正ＶＳ銀星号３_b=true;
	#ev155_村正ＶＳ銀星号３_c=true;
	#ev901_銀星号天座失墜小彗星_a=true;
	#bg002_空a_02=true;
	#bg052_湊斗家道場_01=true;
	#ev128_病床の光_a=true;
	#ev901_銀星号天座失墜小彗星_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_009.nss";

}

scene mb04_008vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_007.nss"

//◆村正ＶＳ銀星号
//◆上昇中
	PrintBG("上背景", 30000);
	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);



	CreateColorSP("黒幕１", 20000, "BLACK");
	Delete("上背景");

//	Cockpit_AllFade0();
	Fade("絵村正", 0, 0, null, true);

	CreateTextureSP("絵背景100", 18000, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureSP("絵EF100", 18500, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Zoom("絵EF100", 0, 1200, 1200, null, true);


	CreateTextureSP("絵St100", 19000, 200, -542, "cg/st/resize/3d村正標準_騎航_戦闘bm.png");
	SetBlur("絵St100", true, 3, 500, 50, false);

	Shake("絵EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("絵St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("絵EF100", 0, 500, null, true);

	OnSE("se人体_動作_跳躍03",1000);

	Move("絵St100", 400, @-300, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Wait(1000);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("絵St100", 400, @-2000, @0, Dxl1, false);
	Wait(300);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
	Delete("絵St100");
	Delete("絵EF100");

//	Cockpit_AllFade2();
	Fade("絵村正", 0, 1000, null, true);

//	CP_HighChangeA();
//	CP_AltChangeA();
//	FrameShake();


	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	SoundPlay("@mbgm08",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　对银星号这个武者进行考察。

　使这区区一人成为大灾难的，是其强大的精神污染力
……这一点现在无关紧要。
　使这区区一人成为最强武者的，首先便是其重力飞行
能力……这点至关重要。

　通常，武者都是通过飞行推进器（即翼筒）得到推进
力，通过母衣（即翼型装甲）得到上升力，从而来实现
飞行。
　其速度在人类现有的移动手段中，堪称之最。

　能够令所有车辆、舰艇、飞行舰都望尘莫及，一个武
者拥有这样的速度，便意味着他会在交战中具有绝对的
选择权。又由于武者是以肉搏式攻击为主的，在将这种
高速转化为破坏力之后，可对一切兵器造成致命性损害。

　因此，武者便是比任何兵种都优越的，战场上的王者。
　银星号被称为武者中的王者，也是出于同一性质的理
由。

　与一般武者使用飞行推进器与翼型装甲操纵气流来飞
行不同，银星号只需要气流作简单的辅助作用便可。
　即使没有气流，银星号也可以飞翔。

　托起银星号那薄如蝉翼的双翼的，并不是气流，而是
辰气——即重力，万有引力。
　自然界当中最为根本的能量之一。

　银星号。二世右卫门尉村正认识到了这种力量，对其
进行充分的剖析，并操纵它。利用周围的物体和自己的
骑体所产生的重力，令操控者的能量输出在可接受范围
内增加或减少，或是利用它来改变用力的方向。

　基于此原理而诞生的重力飞行达到了普通飞行所无法
比拟的另一个境界。
　例如——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, -300, "cg/bg/bg202_旋回演出背景山_02.jpg");
	Request("絵背景50", Smoothing);

//おがみ：コックピット===============
	Cockpit_AllFade2();

	CP_HighChange(0,1212,null,false);
	CP_SpeedChange(0,315,null,false);
	MyLife_Count(1,780);
	MyTr_Count(0,300);

	CP_AziChange(0,-171,AxlDxl,false);
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();
	BGMoveAuto("@絵背景50",1);

//おがみ：コックピット===============

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 900, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0010a01">
《高度一三〇〇。
　……如果有削断双足突然失速的觉悟，
那么还可以再进行一次跳跃。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0020a00">
「在言辞犀利的挑衅之后，最终却因失速坠毁
而死，那这个玩笑可就开过头了。
　这里不要勉强。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0030a00">
「敌骑所到达的高度是？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0040a01">
《推测约——{WaitKey(3000);}一二〇〇〇。》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0050a00">
「……？
　误差大概是多少？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0060a01">
《恐怕在一五〇〇以内。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0070a00">
「有些过于低了。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0080a01">
《……在小弓见面的时候……
　银星号的两翼上就有了破损。》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0090a00">
「破损？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0100a01">
《只是略微一点。大概是在某场战斗中受了伤。
　如果银星号的重力制御能力
因此而被削弱了的话——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　也就是说现在的银星号的飞翔能力有欠缺吗。
　这样想的话，便说得通了。

　高度一二〇〇〇。所需时间不到一分钟。
　约是我方上升力的十倍。<RUBY text="··········">就银星号而言，太慢了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0110a00">
「但如果是那么小的伤口，应该很快就能
修复好才对……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0120a01">
《因为是很精巧的器官，说不定很难修复。
　而且，每个剑胄都有
自己擅长与不擅长的方面。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0130a01">
《村正二世的机动力与攻击力都是几近无敌的，
但却也相应地牺牲了一部分的装甲强度和再生能
力……这两方面的能力不可能会高。
　它并不是完美的，主君。》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0140a00">
「……啊。
　这样啊。的确。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　如同为一个要在第九局下半扳回十分之差的参赛队伍
加油一般，这项事实意义不大。不过我仍然点了点头。
　但是我无法说它是无意义的。至少在用以抵抗名为
放弃的会诱人自灭的剧毒时，这点东西还是有用的。

　十倍的高度差。
　在武者与武者的战斗之中，这个事实究竟会带来
什么——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆解説ＣＧ。第一編で使ったやつ
	CreateTextureEX("絵演18", 18000, Center, Middle, "cg/ev/ev107_双輪懸図解_d.jpg");
	Fade("絵演18", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　在高度上更具优势的人，可利用重力作用增加攻击力
进行强力突击。处于劣势的人则与之相反，不得不在力
量受重力削弱的情况下做出迎击。
　力量的强弱程度是由角度来决定的。

　具有高度优势的人的下降角度，与劣势者的上升角度，
可大略算为正比例关系，由此可断，在角度距离九〇度
越远的时候，力量强弱的差别也就越小，而越接近九〇
度，则力量的差别就越大。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵演18", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　而现在，这个角度<RUBY text="·······">几乎接近九〇度</RUBY>。
　大约在八十九度左右。水平距离与高度差所带来的最终
结果就是这个。

　情况并不坏。
　如果银星号处于最佳状态的话，
这个角度一定会是八十九点九度吧。

　杯水车薪，我忘记了有这么一句话。

　……无论如何这角度将近九〇度。
　敌骑以几近垂直的角度下冲，自骑则以几近垂直的角度
上升，这一形势目前已经确定了。

　银星号最大限度地享受着重力的援助，而且还可以通过
它特有的能力将其扩大，从平流层袭击过来。
　动量＝质量×速度。最终的数值会是多大呢。

　……我放弃计算这个结果，并不是因为在明确了其最
低也有将二十个村正一同<RUBY text="··">击碎</RUBY>的能量后，
而感到厌烦了。
　而是因为寻求答案这件事原本就毫无意义。

　能量只需要能打碎敌骑装甲的程度便足以，甚至可以说
多余的能量即是浪费。
　将骑体打击至粉碎使其失去原有形状，与撕裂其后颈令
其颈动脉破裂，这两者的价值是同等的。

　在这一点上，与重力方向逆行的我方很难独力获得所需
能量。
　然而，碰撞时所产生的威力，理所当然对双方而言都是
<RUBY text="···">相对的</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解
	CreateTextureEX("絵ＥＶ18", 18000, Center, Middle, "cg/ev/ev153_村正ＶＳ銀星号_a.jpg");
	Fade("絵ＥＶ18", 500, 1000, null, true);

	WaitKey(1500);

//あきゅん「演出：ＥＶの差込場所はかなり適当、要調整必須」
	CreateTextureSP("絵ＥＶ17", 17990, Center, Middle, "cg/ev/ev153_村正ＶＳ銀星号_b.jpg");
	FadeDelete("絵ＥＶ18", 500, true);

	WaitKey(1500);

//あきゅん「演出：ＥＶの差込場所はかなり適当、要調整必須」
	CreateTextureSP("絵ＥＶ16", 17980, Center, Middle, "cg/ev/ev153_村正ＶＳ銀星号_c.jpg");
	FadeDelete("絵ＥＶ17", 500, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　如果银星号急速下降的攻击含有充足的冲击力的话，
那么按道理来说，我方的逆袭也可得到同等的冲击力。
　正如敌人可将我方击破一般，我方也可将敌人击破。

　……然而即便如此，也不能说双方就是对等的。
　依据高度差来区分优势与劣势，这是武者战斗的常识，
因为是常识，所以是不容置疑的。

　如果单纯的只是两块铁块相撞的话，那么无论哪一方
在上，大概都不会有所区别。
　然而实际情况是，武者运用自己的四肢，操纵着武器，
进行进攻。

　重力的助力或负担，会影响到攻击动作的每个细节。
因此也就必然的，在高度上具优势的人的攻击就更灵敏，
劣势者的攻击则更笨重。
　攻击的精确度便会产生很大的差距。

　在高度上有优势的人，更容易击中敌人，也更容易发
挥出完全的威力。这也就意味着，其攻击的<RUBY text="·····">成功率很高</RUBY>。
　处于劣势的人则与之截然相反。

　在考验动态视力与反应速度之极限的空战中，这一点
所具有的至关重要的意义，已无需多言。
　即使<RUBY text="···">冲击力</RUBY>是对等的，<RUBY text="···">攻击力</RUBY>的差距也会由此产生。

　从双方都有可能将对手击毁这一点，可以说双方是平等
的，但是，其成功率却是有差别的。也就是说，这是对能
量攻击的有效利用率的差别。
　一言蔽之，就是如此。

　此外，如果双方的攻击变为正对面碰撞的话，那么事
情就变得更加简单明了了。
　运动力量更为强大的一方会将另一方撞飞，最终显现出
一边倒的结果。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
　在上述优劣之差被扩展到最大的形势下，如今我面临
着以下状况。
　自骑的上升角是九〇度。敌骑的下降角也是九〇度。

　就在双方迎面相向靠近彼此，而后互相攻击的那一瞬
间——
　因为我受到重力的阻碍会导致动作变得迟缓，因此必
须更早一步<RUBY text="····">孤注一掷</RUBY>地出击。

　而与我相反，银星号可以游刃有余地进行攻击。
　更为精准。更为强力地。

　……我与银星号之间的对决，在相互间进行招式的较
量之前，我先处于劣势了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピッチアップして降下へ
	BGMoveDelete();

	SetVolume("SE10", 1000, 1000, null);
	SetFrequency("SE10", 1000, 800, null);

	OnSE("se戦闘_動作_空突進04",1000);

	Move("@絵背景50", 1000, @0, @50, Dxl2, true);

	SetFrequency("SE10", 10000, 1200, null);

	CP_HighChange(2500,812,AxlDxl,false);
	CP_SpeedChange(2500,525,AxlDxl,false);
	CloudZoomVertex(2500,@0,@300,AxlDxl,false);
	Shake("@絵背景50", 1000000, 1, 0, 0, 0, 1000, null, false);
	Move("@絵背景50", 2500, @0, @-1050, AxlDxl, true);
	CloudZoomVertex(500,@0,@-300,AxlDxl,false);

	SetVolume("SE10", 2000, 300, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　招式——

　这个姿势，我知道银星号所使用的这个招式。
　绝对是那个大概是仿照自己名字，命名为小彗星的招
式。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆回想·フォーリンダウンレイディバグ
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	Rotate("絵回想", 0, @0, @180, @0, null,true);
	Zoom("絵回想", 0, @1, @1, null, true);
	Request("絵回想", Smoothing);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　是自吉野御流合战礼法“月片”改编而来的。
　在过去的数次交战中，每一次银星号都是以这一招式
将我轻松击败的。

“月片”是在敌人具有高度优势的情况下时，在即将相
击的前一秒加上前滚翻的动作，以此来增强太刀砍下时
的威力，并同时迷惑敌人的招式。
　银星号在其上附加上了剑胄的特性——

　将其化为了从超高空进行下冲突袭，通过重力制御来
加速，在不断增强能量的同时接近敌人，之后在那瞬间
向前半翻转，而后以承载了最大限度威力的一记下劈袭
向对手——这样的一个招式。

  这是银星号以外的任何人都无法完成的，我流魔剑。

　虽未使用太刀，但其强大的威力却是<RUBY text="···">毁灭性</RUBY>的。
　这我深有体会。

　不过，在承载了如此强大的威力之后，银星号的脚也不
可能完好无损——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0150a01">
《按常理来思考的话就是这样。
　恐怕，银星号是临时将右脚装备上层层装甲。》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0160a00">
「……
　那种事情办得到吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0170a01">
《利用重力制御——大概可以。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……一般情况下，质量的平衡点会随着物体的变形
而移动。而与之相对的，也可通过<RUBY text="·····">变换质量</RUBY>来使
装甲变形吗。
　说实话，这已经超乎了我的理解。

　然而不管我理解与否，事实便是事实。
　银星号可以将这一击必坠的武技运用自如这一事实
是不可动摇的。

　使村正的装甲全无用武之地的，可怕魔艺。
　它的缺陷<k>
　
　——只要想得到，便数不完。

　虽然诸流诸技无一例外地都是如此，但招式这种东西
的<RUBY text="···">必杀性</RUBY>，首先是建立在
对手不了解招式这一基础之上的。

　因为无论是多么高明的招式，一旦把握住它的真面目，
便可谋出应对方法了。

　例如“月片”是一个可以同时实现迷惑敌人和强化攻
击，可被称为是吉野御流之精髓的招式。然而，如果将
其用于对这一招式了如指掌的对象的话，便不过是杂耍
而已了。

  没有理由放过一个在你面前悠哉进行前滚翻的敌人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解
	CreateTextureEX("絵ＥＶ18", 18000, Center, Middle, "cg/ev/ev155_村正ＶＳ銀星号３_a.jpg");
	Fade("絵ＥＶ18", 500, 1000, null, true);

	WaitKey(1500);

	CreateTextureSP("絵ＥＶ17", 17990, Center, Middle, "cg/ev/ev155_村正ＶＳ銀星号３_b.jpg");
	FadeDelete("絵ＥＶ18", 500, true);

	WaitKey(1500);

	CreateTextureSP("絵ＥＶ16", 17980, Center, Middle, "cg/ev/ev155_村正ＶＳ銀星号３_c.jpg");
	FadeDelete("絵ＥＶ17", 500, true);

	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　基础理念与此相同的银星号的招式也是同样。
　在它翻转的时候看穿其动向，钻入其<RUBY text="··">下方</RUBY>空
隙，同时挥刀将其斩杀便可。

　这是一个可靠的可以取胜的计策。
　而且，其招式已不成秘密的银星号是无法破解这一
计策的。

　得天独厚。
　在招式的较量上，银星号所持有的牌从一开始便是翻
开的，由此便确定了我完美的优势。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132b]
　……然而。
　
　过去的交战中我是完败的。

　理由格外简单。

　<RUBY text="·······">纸上谈兵实践难</RUBY>。
　必胜之计策若是不可实行，那就毫无意义了。
仅此而已。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆回想·小彗星
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　——对方太快了。
　
　从一万以上的高度垂直下降，通过重力制御继
续加速，此时其终端速度已经大到超出了常理。

　第一次对战，我毫无反击之力地被它击败了。

　第二次对战，我凝神想要看穿它进行攻击的瞬间。
　于是，又一次毫无反击之力地被击败。

　第三次对战，在它出现在视野范围内的那一刻，我
凝神想要做出动作。
　但最终还是，毫无反击之力地被击败。

　<RUBY text="············">刚回过神来就已经被击败了</RUBY>。
　这便是银星号的战斗速度。

　从已知的敌方招式中找破绽，从而获得胜利——
　如此简单的胜利方程式是不成立的。如果看穿了敌人
的招式，却不知何时才能将对策实行的话，那么就无法
应对。

　从战斗理论上来看，胜利兴许是属于我的。
　然而，银星号那毫不含蓄的暴力，却将战斗理论连同
我一起粉碎了。

　该将之称为招式的极限吗。
　所谓的招式，最终还是对人类使用的东西。

　并不是用以应对天灾的。
　它无法用于对抗<RUBY text="··">陨石</RUBY>。

　敌骑已经超越了吾剑可应对的极限。
　
　如果即便如此，仍然心怀以招破招的执念的话——

　最好的办法莫过于让自骑超越极限。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆速度回復、再上昇

	SetFrequency("SE10", 5000, 1000, null);

	OnSE("se戦闘_動作_空突進03",800);

	CP_HighChange(2500,1252,AxlDxl,false);
	CP_SpeedChange(5000,325,AxlDxl,false);
	CloudZoomVertex(2500,@0,@-300,AxlDxl,false);
	Move("@絵背景50", 2500, @0, @1050, AxlDxl, true);
	CloudZoomVertex(1000,@0,@300,AxlDxl,false);

	SetVolume("SE10", 2000, 300, null);
	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0180a00">
「村正……
　敌骑一开始下降就立即通知我。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0190a01">
《——明白。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　剑胄的信号探查是最精确迅速的探知手段。
　村正大概只需片刻的延误——从发出信号到信号返回所
必须的时间——便能探查出银星号何时展开攻击。

　在过去的对战中，我因为依赖视觉而被打败。
　信号探查在有效范围面积广这一点上，的确是很优越的。
应该能够确保比视觉更快地掌握情报。

　……然而我明白，即使这样也是来不及的。
　村正恐怕也这样认为。

　哪怕只是如沙砾般细微的延误，也是致命的。
　要战胜他的话——必须要更早得到情报。

　在银星号展开攻击的那一瞬间……
　
　不。不对。<RUBY text="····">即便如此</RUBY>也来不及。

　要在它展开攻击<RUBY text="··">之前</RUBY>。
　必须在它进行攻击前，探知它将展开攻击的时机。只有
这般，才有可能应对它的攻击。

　要化解已逼近物理极限速度的攻击的话，
　唯一的方法就是超越时间。

　这被称为，先之机。
　在吉野御流中，这被称为无明之理。

　它决不需要所谓的超能力或者其他的什么东西。
　它所需要的，是精确如以石子筑成巨塔般的观察。

　并非<RUBY text="··">看到</RUBY>对方攻击的动作。
　而是<RUBY text="··">看穿</RUBY>对方攻击的前兆。

　视线微小的移动。或是肌肉的紧绷。
　透过这些信息，在敌人实际展开攻击<RUBY text="··">之前</RUBY>，将其预知。

　利用这个机会，在敌人即将攻击时将其击毙。这就是在
吉野御流中被认为是无明之理的先之机。但对银星号它却
无法发挥作用。
　在它发动攻击之前便将其压制住，在物理上是不可能的。

　然而——发动攻击后却可以采取对策。理应做得到。
　即是在先之机为前提，来采取后之先。只要能在对方的
下降突袭到来的前十亿分之一秒预知到的话，
就能举剑<RUBY text="··">迎敌</RUBY>。

　或是互相撕杀。
　但是，最终会被击杀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm08", 3000, 500, null);

	CreateTextureEX("絵背景100", 17000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵背景100", 300, 1000, null, true);

	CloudZoomDelete(0,true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0200a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　敌骑在遥远的上空。
　虽然武者将视觉能力发挥到极限，却依然无
法看清对方如芥末粉般细小的身影。

　视线无法探查。肌肉的动作也无从得知。
　然而，情报应该并不只是这些。

　皮肤的热度。肉体的味道。心脏的跳动。
　这些细微的情报，一定在某处存在着。

　或者是更细微的。
　视觉听觉嗅觉触觉全都无法感应到的，却传达
着这些细小情报的，某样东西——

　比如<RUBY text="·············">代表着那里有生命存在的波长</RUBY>。
　
　
　是存在着的。

　通常被称为气息的一种东西，现在我的确感受得到。
　在这片天空的尽头。

　这并非因为我感觉敏锐。
　相反的，是因为这股气息很庞大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵銀星号", 17100, 150, -350, "cg/st/resize/3d銀星号_立ち_通常s.png");


	Move("絵銀星号", 20000, @0, 50, null, false);
	Fade("絵銀星号", 2000, 400, null, false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
　存在感过于强大的波动。
　表明着正在毁灭世界的魔王就在那里。

　正如台风靠近时能感受到风，火山即将喷发时能听到
地鸣声一般，它的气息格外清晰。
　与单个生命体的气息有着天壤之别的差距。一种天象的
<RUBY text="气息">波长</RUBY>，是不容任何人忽视的。

　由于其过于庞大，所以它的每个细微动作或变化都可以
让人很真切地感受得到。
　然而，除却它就在那里这个事实之外，其余的仍一无所
知。

　但是，这也足够成为有用的线索了。
　以气息的波长为梯，将原本无法触及到敌人的感官末端
延长开来。

　视觉——
　听觉——
　嗅觉——

　我那三根无形的手指，一无所获地在虚空中挣扎着。
　看不到。听不到。闻不到。

　不行。
　依靠这样的感受力根本不行。

　其他的。
　其他的——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);


//◆回想·統
	EfRecoIn1(18000,600);

	Delete("絵背景100");
	Delete("絵銀星号");
	CreateTextureSP("絵回想立絵", 17200, Center, InBottom, "cg/st/st統_通常_私服.png");
	CreateTextureSP("絵回想背景", 17150, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");
	Move("絵回想立絵", 0, @-256, @0, null, true);
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　要感应到敌人就要看到他的呼吸。

　并非去听他的声音。
　也亦非去看他的动作。

　透过这些手段只能感受到对方口鼻的呼吸。
　那种东西，如果愿意，任谁都可以作假。

　所以，要感受<RUBY text="·····">皮肤的呼吸</RUBY>。

　只有这个是决无法蒙骗的。
　人的皮肤是不会撒谎的。

　通过自己的皮肤，就能感受得到。
　对方的皮肤和自己的皮肤，
是通过空气而相互维系在一起的。

　皮肤的呼吸会传达给皮肤。
　去领会对方的呼吸。

　对方的呼吸能会告诉你，
　他是要进攻还是防守。如果要进攻的话，
又会在何时进攻。

　<RUBY text="·········">意识存在于呼吸之中</RUBY>。

　……嗯，大体就是这样吧。
　我所谓的秘诀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り。天頂方向へ上昇
	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	CreateTextureSP("絵背景50", 17000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateColorSP("絵色100", 17010, "BLACK");

	EfRecoOut2(600,true);

	OnSE("se人体_体_心臓の音02",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……呼吸。

　这一秘诀，我还从未实践过。
　但是，如今。如果以它为对手的话。

　如果是银星号的话——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	OnSE("se人体_体_心臓の音02",1000);
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　——呼吸——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト。前より長く。


	OnSE("se人体_体_心臓の音02",1000);
	WaitKey(2500);
	DrawDelete("絵色100", 300, 500, "slide_05_00_0", true);
	CreateTextureEX("絵背景150", 17600, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 20, 20, null, true);
	Move("絵背景150", 0, @0, @-100, null, true);
	SetBlur("絵背景150", true, 3, 200, 70, false);

	Fade("絵背景150", 300, 500, null, true);
	Fade("絵背景150", 1000, 0, null, true);


//◆空の向こうに、朧に銀星号のシルエットが浮かぶ
//◆消える

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　看

　到

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景空上", 17500, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(18000);
	CloudZoomStart(1000,800,800,1000,1000);

//◆シルエット
	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);


	Zoom("絵背景150", 1100, 100, 100, Axl3, false);
	Zoom("絵背景50", 1100, 60000, 60000, Axl3, false);
	Wait(300);
//	TurboBlur("絵背景効果線");
	Request("プロセス１", Start);
	Wait(600);
//	WaitKey();
	Fade("絵背景150", 200, 1000, Axl3, false);
	Zoom("絵背景150", 200, 50, 50, Axl3, false);
	Request("プロセス１", Stop);
	CloudZoomDelete(200,false);
	Fade("絵背景効果線", 200, 0, null, false);
	Fade("絵背景空上", 200, 1000, null, true);

	Delete("絵背景効果線");
	Delete("プロセス１");

//	EffectZoomadd(17600, 300, 200, "cg/ef/ef003_汎用移動.jpg", false);
	Wait(200);

	SoundPlay("@mbgm12",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　了！

　在那里。
　平静的——宛如在沉睡般的平稳呼吸。

　它现在还在蓄积力量。
　以及还未到来袭之时。

　我都知道。
　透过皮肤的感觉，清楚地感知着。

　隔着漫长的距离，我准确地抓住了连接着我与银星号
的那一根线。
　它告诉了我所有我应该知道的。

　这是银星号的呼吸。
　这是银星号的意识。

　没错。
　
　我不可能会将它认错。

　如此了解也是理所当然的。
　
　因为过去，我曾无比地挂念<RUBY text="·">它</RUBY>，

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

//◆回想·病床の光
	EfRecoIn1(19000,600);
	Delete("絵背景150");
	Delete("絵背景50");
	CreateTextureSP("絵回想", 18000, Center, Middle, "cg/ev/ev128_病床の光_a01.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　每天，
　都守护着——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻る
	EfRecoOut1(300);
	Delete("絵回想*");
	Delete("絵背景空上");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵背景150", 100, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 5, 5, null, true);
	Move("絵背景150", 0, @0, @-100, null, true);

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0210a00">
「——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　挥开脑中萌生的想法。
　……我不需要迷茫。

　事到如今，不可再动摇决心。
　那是敌人。敌人。理应打败的敌人。

　将敌人的呼吸、存在于那里的意识，握于掌中。
　为了战胜它。

　将这些情报集中于这一感觉中。
　等待着它气息的变化。

　在它气息<RUBY text="··">动摇</RUBY>的那一瞬间，
　立即作出反应的话，便能赢。

　还不到。
　它还不会来。

　等待。
　等待那一定会出现的，感觉的动摇。

　没有来。

　依旧，毫无变化。

　依旧很平静。

　还不到。
　
　但是，时机就快要到来了吧……

　我决不会错失那一瞬间。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆テキスト表示中に
//◆モニター正面中央から超々高速で何かがすっ飛んで
//◆きてガボーン。画面ブラックアウト。
//◆↑は一案。ここの演出は一考。
//◆表現意図は「余裕こいてたらなんか一瞬でやられた」


//◆攻撃直後の銀星号。蹴り姿勢。
//◆上の演出とこちらの演出とは緩急をつける。こちら
//◆は緩。



	CreateSE("SE01","se戦闘_攻撃_鎧_吹っ飛ぶ02");

	Wait(300);

	EffectZoomadd(16000, 300, 200, "cg/ef/ef039_時間移動.jpg", false);
	Move("絵背景150", 150, @0, @100, Axl3, false);
	Zoom("絵背景150", 150, 2500, 2500, Axl3, false);

	Wait(140);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 0, 0, null);
	CreateColorSP("絵色黒", 16999, "#000000");
	Delete("絵背景150");
	Wait(2000);

	SetVolume("SE*", 2000, 0, null);

	Wait(1000);


	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateTextureEX("絵演17", 17000, InLeft, -400, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	Rotate("絵演17", 0, @0, @180, @0, null,true);
	Zoom("絵演17", 0, @1, @1, null, true);
	Request("絵演17", Smoothing);
	SetBlur("絵演17", true, 1, 250, 100, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演17", 600, 1000, null, false);
	Move("絵演17", 3000, @-512, @0, AxlDxl, false);

	WaitKey(1000);

	CreateSE("SE01a","se戦闘_動作_空突進02");
	CreateTextureEX("絵演18", 17010, -512, InBottom, "cg/ev/resize/ev901_銀星号天座失墜小彗星_bl.jpg");
	Rotate("絵演18", 0, @0, @180, @0, null,true);
	Zoom("絵演18", 0, @1, @1, null, true);
	Request("絵演18", Smoothing);
	SetBlur("絵演18", true, 1, 250, 100, false);
	MusicStart("SE01a",0,1000,0,1200,null,false);
	Fade("絵演18", 600, 1000, null, false);
	Move("絵演18", 1000, @180, @570, AxlDxl, true);
	Delete("絵色黒");

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/mb04/008vs0220a14">
「……<RUBY text="Ｆａｌｌｉｎｇ　Ｄｏｗｎ　Ｌａｄｙｂｕｇ">天座失坠·小彗星</RUBY>……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ウェイト置いて
	WaitKey(1000);

	SoundPlay("@mbgm37",0,1000,true);


	CreateTextureEX("絵演20", 17020, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	Zoom("絵演20", 0, @1, @1, null, true);
	Rotate("絵演20", 0, @0, @180, @0, null,true);
	Request("絵演20", Smoothing);
	Fade("絵演20", 1000, 1000, null, true);
	Delete("絵演1*");

	WaitKey(1000);

	CreateTextureSP("絵演19", 17000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	Zoom("絵演19", 0, @1, @1, null, true);
	Rotate("絵演19", 0, @0, @180, @0, null,true);
	Request("絵演19", Smoothing);
	FadeDelete("絵演20", 1000, true);

	WaitKey(500);

//◆横書きボックス
//あきゅん「演出：ボックスを中央に置いた方がいいかもな」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　
　　　　　　　我曾经认为自己很幸福。
　“Tell me the tales that to me were so dear”

　
　　　　　　　　　很久很久以前。
　　　　<PRE>“Long long ago, long long ago”</PRE>

　
　　　　　　得到了所有想要的东西。
　　“Sing me the songs I delighted to hear”

　
　　　　　　　　　很久很久以前。
　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 200, 0, null);

	CreateColorEXadd("絵色300", 18100, "WHITE");
	Fade("絵色300", 1000, 1000, null, true);

	Delete("絵演*");
	CreateColorEXmul("絵色100", 18000, "RED");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	CreateSE("SE01","se戦闘_破壊_爆発07");
	CreateSE("SE05","se戦闘_攻撃_鎧_剣戟01");
	CreateSE("SE08","se特殊_コックピット_アラーム");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE05",2000,1000,0,1000,null,false);

	Zoom("@絵背景50", 0, 3000, 3000, null, true);


	FadeF4("絵背景50", 0, 1000, 10000, 0, 0, Dxl3, false);
	Fade("絵色100", 0, 1000, null, true);


	CP_HighChange(16000,352,AxlDxl,false);
	CP_SpeedChange(16000,225,AxlDxl,false);

	Shake("@CP_Frame", 1000, 15, 20, 0, 0, 800, null, false);
	CP_RollBarMove("@絵背景50", 150, @10, AxlDxl, false);


	OnSE("se戦闘_破壊_鎧03",1000);


	MusicStart("SE08",2000,1000,0,1000,null,true);
	Shake("@絵背景50", 1000, 2, 1, 0, 0, 1000, Dxl1, false);
	Move("@絵背景50", 2000, @-200, @-150, Dxl1, false);
	Zoom("@絵背景50", 16000, 1000, 1000, Dxl2, false);
	CP_RollBarMove("@絵背景50", 300, @-10, Dxl2, false);

	FadeDelete("絵色300", 1000, false);

	Wait(500);

	Fade("絵色100", 300, 0, null, true);
	CP_RollBarMove("@絵背景50", 1000, 0, AxlDxl, false);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 200, 1000, null, true);

	FrameShake();
//◆村正
//◆大ダメージ食らってます。モニター赤。
	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆ボイスは録らず。ノイズで。
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0230a01">
《——!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……我。
　
　被打败了，吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);
	CP_AllDelete();

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mb04_009.nss"

function TurboBlur()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 100, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 20, 1000, null, true);
	Fade("$効果ナット名", 80, 0, null, true);
	}

}
