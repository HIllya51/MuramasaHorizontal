//<continuation number="920">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_002.nss_MAIN
{

	$TITLE_NOW=" ————　第三篇 逆袭骑　———— ";

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
	#bg018_署長執務室_01=true;
	#bg007_若宮大路a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_署長=true;

	$PreGameName = $GameName;

	$GameName = "ma03_003.nss";

}

scene ma03_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_001.nss"

//◆第三編「逆襲騎」

	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第三編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);


//◆関東拘置所
//◆景明の獄室

	PrintGO("上背景", 25000);

	OnBG(10,"bg010_拘置所外観_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm22",0,1000,true);

//あきゅん「SE：要望：腕立ての音、木の板が軋む、同テンポでループとか」
	CreateSE("SEL01","se人体_動作_拾う01");//ダミー注意
	MusicStart("SEL01",2000,1000,0,500,null,true);


	OnBG(10,"bg011_拘置所内_01a.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　在拘留所的每一天都无聊至极。

　和为已经判刑的人准备的监狱不同，拘留所收押的
都是嫌疑犯以及跟嫌疑犯同等待遇的死囚
（他们会被处以的刑罚，除了死别无其他），
所以并不实行强制劳动。

　在规定上只要提出申请应该就可以参加劳役，但这个
关东拘留所并没有这样的制度，所以这个要求是不可
能满足的——就是这样。
　这些是从看守那里听到的。

　一天之内能外出活动身体的时间只有三十分钟。
　其余时间只能在单身牢房中安静地度过。

　虽然可以读书或者写东西，但有限制。
　不可能用来打发漫长的一天。

　那样的话，就只能一个劲儿地睡觉，或者——如果
不能容忍由于贪睡导致身心机能退化的话——就只能
在两个榻榻米大小的空间做一些容许范围内的运动。

　会发出明显声响的行为，当然是不被允许的。
　要使用器械的运动也不必说了——就算是用牢房内现
有的东西将就一下也不行。仅仅只是干布摩擦，也会被
看守认作是在做绞杀的准备。

　做空挥什么的除外。摆出体术的姿势也只会恶作剧般
刺激到看守人长刺一样敏锐的神经。
　最终，能做的锻炼就只有腕关节、腹肌、背肌等基本的
肌肉锻炼而已。

　也就是说，我现在在做的就是这种事情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ガチャ
	OnSE("se日常_建物_牢獄扉開く01",1000);
	SetVolume("SEL*", 300, 0, null);


	SetNwC("cg/fw/nw看守.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020010e038">
「嫌疑犯〇四八号。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_囚人.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020020a00">
「在。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020030e038">
「接到了为听取情况，要把你暂时移送到镰仓警署
的通知。接送的车子已经到了。
　十分钟内收拾好。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020040a00">
「明白了。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020050e038">
「……话说回来，你。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020060a00">
「有什么事。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020070e038">
「刚才，在做什么？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020080a00">
「俯卧撑。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020090e038">
「……这样啊。
　是俯卧撑吗。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020100a00">
「是。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020110e038">
「你，是哪里人？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020120a00">
「长崎。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020130e038">
「我是秋田。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020140a00">
「烤米糕很好吃的那个吗。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020150e038">
「长崎，是杂烩面吧。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020160a00">
「是啊。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020170e038">
「……在我的故乡，俯卧撑是双手双脚着地来
做的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020180a00">
「大多是这样吧。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020190e038">
「双脚悬空来做的俯卧撑，我还是第一次见到。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020200a00">
「我自己也没怎么看过别人是怎么做的。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020210e038">
「不难受吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020220a00">
「难受得要死。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020230e038">
「…………这样啊。
　那我放心了。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020240a00">
「那太好了。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020250e038">
「你准备准备。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020260a00">
「好的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉
//◆署長室

	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg018_署長執務室_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw署長_通常.png");

	#voice_on_署長=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020270a11">
「……也就是说。
　没有错啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020280a00">
「是的。
　那个村子是被银星号所毁灭的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　伸手取过桌上的茶碗。
　鼻尖嗅到了隐隐约约的香气，是远州的新茶。从颜
色来看是便宜货，但品质并不差。

　稍稍倾斜茶碗至水面触到嘴唇的程度，濡湿舌尖。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020290a00">
「村正也是一样的看法。不如说……
　这种一个人都没能逃掉，字面意义上的<RUBY text="··">全灭</RUBY>
的情况。不会错的。」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020300a11">
「说得没错。
　比如说军事用语中的全灭，是指部队受到了
让机能完全丧失程度损害的状态。从比率来看是
三成到四成左右。」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020310a11">
「就算是全灭也有六成左右是平安生还的。这
是常识。
　但是，遭遇到<RUBY text="··">那个</RUBY>的人，连这六成都
无法存活。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020320a00">
「那并不是战争。
　加害者和被害者之间，
并不存在战斗这种温和的
游戏般的交涉。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020330a00">
「只是天灾。
　是袭击沿岸村庄的大海啸。
　是袭击山脚村庄的火山大爆发。
　必定没有幸存的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我用事实断言了事实。
　没有回应。

　并不宽敞的房间东侧的墙壁上，装饰着一幅画。画着几
颗种植着的桑树，是极为平常的风景画。从技术层面来看
也没什么亮点吧。
　但要问我喜不喜欢的话，答案是喜欢。

　并非名人的作品。不，作者甚至不能算是一个画家。
是这间房间的主人，自己画的。
　该说正因为是平庸的作品吗，有种让看到的人平静
下来的意境……但也许只是我的偏好。

　就算是这种画，也是这间房里，唯一可以称得上是
装饰品的东西。
　其他就是实用主义的家具和大量的资料，尽是一些枯
燥无趣的东西。

　作为负责镰仓市治安（应该是）的警察署署长，这样
坐着该是多么孤寂的景象。
　如果用再讽刺一点的形容词，或许可以说其充斥着<RUBY text="··">可悲</RUBY>。

　抑或是<RUBY text="··">现实</RUBY>吗。
　现实的署长室里现实的警察署长，移开朝向
桌子纹理的视线，再次看向我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020340a11">
「阻止了“卵”的孵化吗。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020350a00">
「是的。
　六波罗官员长坂右京和佣兵风魔小太郎已经
确认是寄生体，两人都已消灭了。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020360a11">
「现在最要紧的就是这件事。
　决不能允许那种东西<RUBY text="··">增加</RUBY>下去。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020370a11">
「你辛苦了啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020380a00">
「没这回事。
　辛苦的，肯定不是我。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020390a11">
「…………
　获得银星号的情报了吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020400a00">
「长坂右京那里一无所获。
　风魔小太郎那边虽然和<RUBY text="··">那个</RUBY>有过对话接触，
但所在地一类有价值的情报还是没有。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020410a11">
「这样啊。
　看来那个应该是在什么地方，被什么人，在
<RUBY text="··">保护</RUBY>着吧……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020420a00">
「不这样想的话，实在不合情理。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020430a11">
「尽管当作失踪者在全国范围内搜索，
也完全捉不到一点蛛丝马迹。
　警力不足可能也是个原因……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020440a11">
「已经两年了。
　应该考虑是不是有支援者了。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020450a00">
「的确。但是，目的全然不明。
　什么人，怀着什么目的，会对无差别杀人的
杀戮者伸出援手。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020460a11">
「没错。说不通吧？
　……但这个社会里，说不通的事到处横行，
让人头疼。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020470a00">
「这样的话，只是根据理论上的推测，会很
难接近真相。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020480a11">
「没错。
　就算是装腔作势纸上谈兵的侦探，
也成不了事。」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020490a11">
「还是需要决定性的情报。
　抱歉要拜托你了啊，景明。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020500a00">
「了解。
　对了。还有一件事，也有点让人在意。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020510a11">
「什么？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020520a00">
「提供给风魔小太郎剑胄的男人。
　名字是雪车町一藏。所属于六波罗御雇的野
木山组，而且他还是ＧＨＱ的跑腿。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020530a11">
「啊啊……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020540a00">
「如果以盲信自己听到的所有话作为前提的话
——风魔将被ＧＨＱ夺走的剑胄通过雪车町又
拿回来了。为什么，这种行为会被允许呢。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020550a00">
「ＧＨＱ的“狩猎剑胄”政策的成果，当然应该
被谨慎封存起来。
　不然的话，费那么大工夫猎捕收集剑胄就没
有意义了。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020560a11">
「…………
　前几天的那个教师。是叫铃川令法吧。他也
持有来源不明的剑胄。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020570a00">
「是的。
　我怀疑这有关联。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020580a11">
「你是怎么看的呢？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020590a00">
「……如果要做妥当推论的话。
　ＧＨＱ对大和的不关心导致了进驻军的纪
律松散，使得物资轻易地流向了黑市
——大概就是这样。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020600a11">
「你自己给这个推论的打分呢？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020610a00">
「不及格。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020620a11">
「为什么？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020630a00">
「ＧＨＱ对大和不关心吗？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020640a11">
「不可能。
　……是，是这么回事啊。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020650a11">
「关于这件事我已经有推测了。
　不过，明天再说吧。反正会成为话题……
这种话题我不想多谈。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020660a00">
「明天吗？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020670a11">
「今天你就在我的官邸休息一下吧。不用回
拘留所的。
　明天，工作结束之后有个地方想让你陪我
去一下。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020680a00">
「去哪里。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020690a11">
「八幡宮。
　亲王殿下想召见你。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020700a00">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020710a00">
「这又是，为何。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020720a11">
「殿下比你想象的，更关注你的情况。
　殿下将严重危害国民的银星号事件当做自
己的事情来考虑。」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020730a11">
「他对你也有很大的期望。
　事实上他以前就提过，想和你亲切地交谈
一次。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020740a00">
「但是。
　浑身沾满血污的人怎能在皇族面前——」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020750a11">
「殿下不是会在意这种无谓之事的人。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020760a00">
「我不认为这是无谓的事情。
　执掌朝政之人应该远离不洁。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020770a11">
「哎呀，别这么说。
　重要的是殿下是个实干家。他为了了解
事件的实情而想要听在事发现场的人的说
法。除了你别无他人。」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020780a11">
「就这样而已。所以也没有必要刻意地笑脸相迎。
　只要回答殿下提出的关于这起事件的问题就
行了。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020790a11">
「忍耐一小时左右。你就配合一下吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020800a00">
「……我明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　无奈点头。
　真是沉重的对话，但被这样说也无可奈何。

　——八幡宮的亲王。
　虽有听说过他是皇室的异类这样的传言，看来是如
传闻一般甚至超过传闻程度的人物。
　想见囚徒的贵人，从未听闻。

　……还是不要刨根问底，问这问那的比较好吧。

　灌了一口已不再冒热气的茶水。
　失去了温度的茶，无限地苦。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉街路

	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg007_若宮大路a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　通过员工专用门走出镰仓警署。
　来到大街。

　署长特意赶来送行。虽说盛情难却，
但想到旁人的目光却也烦恼。
　警察署署长送一个囚犯是奇怪的行为。

　虽说如此，署长穿着警察制服，但我却没穿着
拘留所的犯人服。
　我知道，这是不必要的担心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020810a11">
「如果没什么事的话，明天傍晚前回到官邸。
到那之前就放松一下吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020820a00">
「好的。
　用书房的话也可以吗？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020830a11">
「随你便。
　……啊，话说回来，里面有关于德意志优等生
的研究书籍汇总。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020840a00">
「对那方面比较关心。今晚上看看吧。
　告辞了。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020850a11">
「啊啊——
　嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　署长的视线，忽然游离了。
　朝我的右后方而去。

　我跟着看过去。
　
　有个人影。

　背靠在水泥墙上，朝这边侧目窥视着。
　乍一看，貌似毫无波澜。但事实上，
她的眼瞳深处闪烁着强烈的意志。

　在我的记忆中，她一直是这个样子。

　这张面孔在我脑海留下了深刻记忆。
　要想起她的名字毫不费力。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0020860a02">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020870a00">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020880a11">
「是熟人吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020890a00">
「嗯……
　为什么你会在这里？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020900a00">
「一条绫弥小姐。」


{	OnSE("se擬音_コミカル_ガーン01",1000);
	FwC("cg/fw/fw一条_怒りb.png");}
//◆ショックガーン
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0020910a02">
「叫反了啊!!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020920a00">
「…………抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_003.nss"