//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_004.nss_MAIN
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
	#ev129_鉱山と工場と川=true;
	#ev128_病床の光_a01=true;
	#ev128_病床の光_a03=true;
	#ev128_病床の光_c03=true;
	#ev128_病床の光_b03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_005.nss";

}

scene ma05_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_003.nss"

//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	WaitKey(1000);

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【統】
<voice name="統" class="統" src="voice/ma05/0040010b46">
「……嗯？
　怎么了，景明？」

{	SoundPlay("@mbgm23",2000,1000,true);
	FadeDelete("絵暗転", 1000, false);
	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040020a00">
「啊……
　没什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我回过神来。
　偶然的情形似乎让我的心绪飘回了往昔。

　沉静的餐桌边，只有我和养母二人。
　<RUBY text="·">这</RUBY>才是现实。

　只要再加一人——就会陡然热闹非凡的
餐桌，已离我们远去。
　它只存在于过去的世界。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【統】
<voice name="統" class="統" src="voice/ma05/0040030b46">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040040a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　没有什么要特别交谈的。只是沉默地吃着饭。
　一年前……刚开始进入这种用餐状态时，并不是这样
的。

　我与养母都十分讨厌这令人难以忍受的寂静，拼命寻
找话题，喋喋不休地说个不停。
　然而并未持续很久。设法逃离沉默的空虚无力之感，
要体会到这一点，并不需要花费很多时间。

　自那以后，就一直这样。
　寂静沉重得仿佛要把头压到桌子上，在无声的忍耐中
机械地将饭菜送入口中。

　这莫名无法平静的心情，养母也和我一样吧。

　这份沉默十分令人讨厌。
　然而，却也希望这份沉默继续下去。

　也许称之为二律背反有些太夸张。
　对沉默的厌恶，远远不及我与养母心中对打破沉默而
怀有的深深恐惧。

　这是因为——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がたーん。
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se日常_物_木箱壊れる01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040050a00">
「!!」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0040060b46">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵暗転", 5500, "#000000");
	DrawTransition("絵暗転", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　耳边响起拉门被踹飞的声音，<RUBY text="·····">已经听惯的</RUBY>噪音。
　听到声响的同时，我站起身，跑了出去。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すぱーん。戸を開ける音
//◆ＥＶ：光の発作
	WaitAction("絵暗転", null);
	CreateTextureEX("絵演", 2200, Center, Middle, "cg/ev/ev128_病床の光_c03.jpg");
	CreateTextureSP("絵ＥＶ", 2100, Center, Middle, "cg/ev/ev128_病床の光_c03.jpg");
	CreateSE("SE01","se日常_建物_スライド開く02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵暗転", 300, 1000, "slide_01_01_1", true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040070a00">
「光……！」

{	NwL("cg/fw/nw光.png");}
//◆※光（発作時）の台詞は収録後に加工します
//【光】
<voice name="光" class="光" src="voice/ma05/0040080a14">
「吱，噶—————————————」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//◆どすんばたん
//◆鉱毒病に冒された光·発作状態
	CreateSE("SE01","se人体_衝撃_転倒03");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演", 0, 500, null, true);
	SetBlur("絵演", true, 3, 500, 100, false);
	FadeFR2("絵演",0,500,300,0,0,10,Dxl3, false);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　她的喉咙深处仿佛毁坏的乐器一般持续发出声音，
而身体也在满地打滚。
　我扑上去按住了她。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040090a00">
「光……
　不可以，不要乱动……！」

{	NwL("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0040100a14">
「吱——————————」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　光纤瘦而坚硬的身体在我的身下挣扎。
　然而我绝不可以用全力压制对方。

　如果强行按住她的话，发狂的光所爆发的能量就无可
发泄，最终只会全部反作用到自己身上。
　这是现在光的肉体无论如何也承受不了的。

　全身的骨头都会碎掉。
　一定，比打碎廉价的陶器还要容易。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆みしっ。底冷えのするような音で
	CreateSE("SE01","se人体_動作_抱きつき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040110a00">
「光，不行，拜托了！
　冷静下来吧……」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040120a00">
「光……
　拜托了……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　光的回答仅仅是毫无意义的怪声。
　我是知道的。

　我的声音无法传达到光的心中。

　即使如此我也无法停止自己的呼唤。
　仿佛相信祈祷会传达给神灵一般，我相信着妹妹会听
到我的声音，不停地呼唤着她。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040130a00">
「光……
　冷静下来……」

{//◆どすんばたん
	CreateSE("SE01","se人体_動作_物音立てる02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵演",0,500,300,0,0,20,Dxl3, false);
	FwL("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0040140b46">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　默默走来的养母在我身旁坐下。
　迟到的原因，是因为刚才去准备手中抱着的东西了。


{	OnSE("se人体_動作_布絞る",1000);}
　灌满井水的木桶。
　养母将布巾拧干，碰向光的额头。

　对于横冲直撞的光来说，这也不是件容易的事。
　不知是不是因为讨厌，她不停晃动着脑袋——<k>以致命
的劲头——<k>我险险地用双手轻轻地阻挡住。


　趁着这个间隙，养母用湿润的布巾擦拭女儿的面容。
　反复地抚摩……慢慢地，一点一点地。光的狂乱平息
下来，渐渐过渡到些微的痉挛。

　在这期间，我与养母没有说过一句话。
　这种东西毫无必要。这样的任务分工已经如同惯例，
深深刻入身体的记忆。

　从一年前——
　确实地，成为每日的惯例。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆鉱山と工場
	PrintGO("上背景", 5000);
	CreateColorSP("絵暗転", 2500, "#000000");
	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev129_鉱山と工場と川.jpg");
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　这里有条被称之为神那川的河流。
　在其上游有一座矿山，和一同建立的金属加工工厂。

　那便是一切的元凶。
　
　……虽然他们尚未承认这个事实。但附近的居民每一
个都已经如此确信了。

　某一天，吃了鱼的老人发狂了。

　发疯，狂乱，然后被车碾死。
　大家不约而同地谈论，世间真是会有如此骇人之事。

　三天后，吃了鱼的一家发狂了。

　父亲一头撞在土房地板上，母亲沉在井底，五岁的孩
子虽然被看护着，但最终还是咬舌而死。
　大家感慨着竟也会有此等偶然，纷纷做了辟邪的事。

　一个月后。
　那一带吃了鱼的人发狂了。

　大家终于发觉了。
　吃了神那川河中鱼的人，会发疯狂乱致死。

　那是矿物中毒。
　金属在冶炼过程中所产生的有害物质，排放到河流中
去，进入鱼的口中，渗入吃鱼人的五脏六腑，然后中毒
症状便会显现，患至全身。

　何其不幸——究其缘由也许不得不说这是一种幸运？
——在大和尚未得到研究的可怕疾病，在这块土地上出
现了。

　周围的城镇村庄从上至下都是一片大混乱。
　扔掉所有鱼贝类食物，想到事态发展至此的原因，大
家成群蜂拥至工厂，工厂的大门却紧闭着，只让媒体发
表这样那样的推脱之辞——

　然而这样的混乱也有曾离我很遥远。
　因为在临近真相暴露的前夕，我唯一的妹妹加入了牺
牲品的名单。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	PrintGO("上背景", 5000);
	CreateColorSP("絵暗転", 2500, "#000000");
	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev128_病床の光_a03.jpg");
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　之后，这样的日子持续着。
　光卧床不起，每到晚上就开始发作，然后想办法让她
平息下来睡着，为妹妹活到了今天而感谢——


　就算如此，第二天早上，看到光比前一天早上更衰弱
的容颜，就忍不住叹息。
　每一天都是如此。

　请过医生，数不清的医生。
　然而结果只是，毒素侵入骨组织导致腐坏，这超出常
规的痛苦使得精神狂乱——他们得出的只是针对症状的
推论而已。

　所有人的结论都一样。

　——我们国家的医生束手无策。
　要让西洋的医生来看诊才行。不列颠或哈布斯堡的医生
对于这种疾病的临床经验也会多一点。

　——让西洋的医生……

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040150a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我凝视着尚未停止怪声的光的嘴，想到。
　如果能做到这一点的话。

　不——
　肯定能做到的。

　金钱和权力。
　为了将西洋著名的医生邀请到眼下处于半戒严令之下的
大和所必要的……只要有这两样东西的话。

　目标，是有的。
　也时不时地打听过。

　然而其结果是……
　同昨日毫无改变，今日的情形仍是如此。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆がらら。遠くで戸の開く音
	CreateSE("SE01","se日常_建物_スライド開く03");
	MusicStart("SE01",0,750,0,1000,null,false);

	SetFwL("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040160a00">
「……统大人。
　集会的时间到了。」

{	FwL("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0040170b46">
「啊……嗯。
　能不能改成下次啊……」

{	FwL("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0040180b46">
「又不是非今天不可……」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040190a00">
「没关系。这种状态的话，之后我一个人
就够了。
　统大人请去会合吧。」

{	FwL("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0040200b46">
「唔……」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040210a00">
「那边也应该是紧急的问题。」

{	FwL("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0040220b46">
「啊……是吗。
　哎呀，真麻烦。」

{	FwL("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0040230b46">
「抱歉了，景明。
　那么就拜托你了。」

{	FwL("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040240a00">
「是。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//あきゅん「SE：要望：足袋とか柔らかい系で木板の廊下を歩く音、とんとんとん···ループ」
	CreateSE("SEL01","se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	SetVolume("SEL*", 10000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　养母将布巾交给了我，站起身走出了房间。
　远去的脚步声，满含忧愁。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆一度暗転
	ClearWaitAll(2000, 1000);

//◆戻り
	PrintBG("上背景", 5000);
	CreateColorSP("絵暗転", 2500, "#000000");
	OnBG(100,"bg033_湊斗家一室_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm33",0,1000,true);

	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040250a00">
（统大人也消瘦些了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我这么想着。
　即使这么想，也找不到可以让她恢复的方法，这让我
十分难受。

　原因很明显是操心过度。
　直到有一天，我不用再像这样压制着光的狂乱，否则
那个人是恢复不了健康的吧。

　光的发作渐渐冷静下来，只是手脚胡乱敲打着地板。
再等一会，就能让她睡进被窝里了。我的经验可以预
料到这些。
　然而，还不能大意。

　因为即使是如此轻微的动作，对光的骨骼来说都是十
分危险的。
　不能松懈下来，我用双手稳稳地抱着光，不断地抵挡
她的痉挛。

　这是一种柔术。
　从幼年时期便学习掌握的技术之一，没想到会以这种
形式派上用场……是该感谢好呢还是该讽刺好呢，我还
不是很清楚。

　如果用不着这门技巧，那才是最好的。
　可事实却是多亏我掌握了它，才得以让妹妹生存下去。

　镇静剂之类的对于这种病来说效果并不明显。
　想加强效果，就一定要下猛药，这样一来副作用也
会严重，短期使用暂且不论，长期使用的话，只会产生
反效果。

　既然不舍弃恢复的希望，那迫使光变成药罐子这一选
择便在考虑范围之外。
　只要想让她一天天地活下来，就算这样也可以吧。然
而我，想要光从病床上站起来。

　即使已经不奢望能痊愈……
　但还是希望，她能再一次，站起来走路。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040260a00">
（一定要说服那位大人才行）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我再次陷入沉思。
　正好，这个瞬间，从大厅那边传来了怒声。

　仿佛<RUBY text="····">雷霆之怒</RUBY>。
　而用差不多一半音量应答的是养母吧。虽然应该还有
其他好几个人在座，但他们是沉默还是只是小声说话，
我完全听不到。

　激烈地争吵太过遥远，听不清内容。
　不过既然养母已成为众矢之的，那一定一切都在那个
人的预料之中。没有必要担心。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw光.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/ma05/0040270a14">
「唔、唔唔———————」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040280a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　是因为注意力分散的不是时候吗，还是单纯地因为发作
的<RUBY text="··">势头</RUBY>来了呢。
　光的举动还是有些奇怪。

　我再次专心于柔术的实践中。
　直到可怕的痉挛平息为止…………一直。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ追加", 1100, Center, Middle, "cg/ev/ev128_病床の光_b03.jpg");
	Fade("絵ＥＶ追加", 1000, 1000, null, true);

	Wait(1000);

//◆夜空？
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);

	FadeDelete("絵ＥＶ追加", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　光睡着的时候，已是凌晨两点了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆あさー。
	OnBG(100,"bg001_空b_01.jpg");
	FadeBG(1000,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　我整理了下装束，和养母打招呼。
　然后又望了一眼光的房间。

　这是我上班之前一直要遵循的次序。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆病床の光·平常
	CreateTextureEX("絵ＥＶ", 3100, Center, Middle, "cg/ev/ev128_病床の光_a01.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040290a00">
「……光。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　已经不期待她会有什么反应，但我还是低语着。
　我的声音是传递不到她那边的，这一点不管是否在发
作，都没有变化。

　在晨光之下看，光的样子更显凄惨。
　在与病魔斗争的日子里，日渐消瘦的身体，现在已经
只剩皮包骨头了。

　失去光泽的发丝好似枯草。
　牙齿也几乎掉光了。

　浑浊的双眸，凝望着房顶。
　如果没有从喉咙里发出的微弱的呜呜声的话，把她错
看成死人也不是什么不可思议的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040300a00">
（……混帐……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　我责备着自己不该想那些不吉利的事。
　光的确活着。她是活着的。

　一定要相信这份力量。
　光定能继续生存的力量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0040310a00">
（回家的路上顺路去下那边，再次祈祷吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　脑海中安排着一天的计划。
　就这样，我离开了家。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆町
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

//あきゅん「SE：要望：ガヤ街並みループ」
	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");//ダミー注意
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　几乎和傍晚一样，早上的行人也很多。
　只是早上的行人没有傍晚那么多样化。
大部分都是学生或像我这样工作的男子。

　旁边还有一群女学生小跑着经过。
　是快要迟到了吗。

　其中有几个人看着很眼熟。
　名字是不知道的。不过记忆中好像和她们说过几句话。


　那是……
　什么时候的事情了？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_005.nss"