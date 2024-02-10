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

scene ma04_002.nss_MAIN
{

	$TITLE_NOW=" ————　第四篇 震天骑　———— ";

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

	if($Ichizyou_Dead == true){#ev112_一条をお姫様だっこする村正=true;}
	else{}

//嶋：デバッグ
//	$Ichizyou_Dead = true;

//嶋：分岐注意

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_k";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}else{
		//■未読既読判定３
		$BasGameName = $GameName;
		$GameName = $GameName + "_i";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//■超速設定３
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定４
		$GameName = $BasGameName + "_k";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定４
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}



	}

	//■選択肢スクリプト及びフラグ設定２
	$PreGameName = $GameName;
	$GameName = "ma04_003.nss";
}

//嶋：通過用スクリプト
scene ma04_002.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_001.nss"



//◆第四編「震天騎」

	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第四編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);

}



scene ma04_002.nss_i
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_001.nss"



//◆第四編「震天騎」

/*
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第四編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);
*/

..//分岐。一条生存なら０１へ。死亡なら０２へ
//◆分岐。一条生存なら０１へ。死亡なら０２へ


//――――――――――――――――――――――――――――――
.//●０１
//●０１
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");

	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　憎恨世间的恶。
　这是父亲留下的最大遗志。

　父亲教导过。
　什么是恶。

　掠夺，
　诈骗，
　背信，
　奸佞，

　父亲逐一教导过我。
　用孩子听来浅显易懂却又郑重的话语。

　所以我理解了。
　然而，我还有未能明白的事。

　为什么，一定要憎恨恶行呢。

　为什么一定要夺取他人之物？
　为什么一定要欺骗？
　为什么一定要背叛？
　为什么一定要阿谀奉承？

　对于这发问，父亲左右摇晃脑袋。
　
　——无法说明。

　我必须憎恨恶行的理由，无法用常理解释。
　不。我认为事情并非如此。

　德川时代出现了一位名叫细井平洲的儒学者，他
说，真正的信爱是像幼子信赖母亲，母亲疼爱孩子
一般，并不存在所谓理由。
　我以为正是如此。

　难道不正是一样的道理？
　正因为是人，所以能憎恨恶行，并不需要其它理由。
勉强寻求冠冕堂皇的道理，拘泥于此，反而会偏离
本质。

　至于原因，如果用理论来否定恶，一旦产生新的理论
将其推翻，恶行也会得到认可。
所谓“必要的恶”这种想法。

　因为要保护自己——
　因为是对方最先行恶——
　因为反正也没什么大不了——
　行恶也未尝不可，这种思考方式。

　依靠道理来否定恶，必将使恶径由其它道理而
受到肯定。　
　我认为此乃谬误——我想要这么以为。

　如此下去，恶行定然无法斩除。
　世人皆会在否定恶的同时又对其加以肯定，纵
容恶行的存在。以为人生在世到头来就是如此。

　承认做个正直的人——不过是黄粱一梦。
　我不想承认。不，我不能承认。
即便结果最终如此……

　作为人，我志在消灭罪恶。
　为达目的——无一例外。我必须
否定罪恶。

　大概也有不得不……行恶的情况吧。
　应该有。至今为止，我也见过不少形形色色的人。
确实有人已经穷途末路，唯有行恶这一条生路。

　既便如此，恶终究是恶。
　是必须否定的行为。不能用「迫不得已」
四个字就将其肯定。

　所谓恶。
　我认为就是背弃了做人<RUBY text="··">原则</RUBY>的行为。

　所以，这并非道理。
　不是用头脑去思考。而是去切身感受。

　用性命去感知。
　憎恨恶行的必要性。

　…………父亲此番话语，我很难说自己已理解。
　至今尚未。毕竟，他大概原本就未曾指望我能
加以<RUBY text="··">理解</RUBY>。

　然而，我坚信父亲此言乃千真万确。
　我现在依然——深信不疑。

　绫弥一条以生命起誓，憎恨恶行。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

	Wait(1000);

//◆教室
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg008_教室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020010a02">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　叹息一声。
　并不是由于对憎恶的厌倦。

　无力感令人疲劳。
　因为没有战斗能力。

　对罪恶的憎恨丝毫没有动摇。
　还有从父亲和叔祖母那里学来的战斗技巧。

　然而对于与<RUBY text="···">那个人</RUBY>为敌的恶而言，这两点还不够。
　不够。远远不够。

　既便如此，依然想要战斗。
　希望他让自己战斗。

　然而他没有同意。
　这也是理所当然。如果立场调换过来，她也
不会同意。

　无力之人就算战斗也只是白白牺牲。
　也许本人会感到满足，却无法拯救别人，
也无法带来任何有益的成果。大概只会给同伴
带来巨大的麻烦。

　这点一条也很明白。
　所以才克制着自己没有一意孤行。

　如今，她在想。
　希望得到战斗的力量。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆第二話、一条を救う村正絵。ちらっと挿入

	EfRecoIn1(18010,300);
	CreateTextureSP("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	EfRecoIn2(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　——希望能够帮助那个人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw教師.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020020e051">
「绫弥。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020030a02">
「……」

{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020040e051">
「绫——弥！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	FadeDelete("絵ＥＶ100", 0, true);
	EfRecoOut2(500,true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020050a02">
「……什么？」

{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020060e051">
「没什么。你走神了。
　回答我的问题。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020070a02">
「……哪里？」

{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020080e051">
「什么啊，你没在听讲吗!?
　一百二十七页的第三个问题！」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020090a02">
「……」

{	OnSE("se日常_物_紙をめくる01",1000);
	NwC("cg/fw/nw教師.png");}
//◆教科書めくる音。ぱらぱら。
//◆教師、会心のギャグっぽく
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020100e051">
「一直在发呆。
　你是呆瓜吗！」

{	NwC("cg/fw/nw教師.png");}
//◆しーん
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020110e051">
「……肯定是晚上游玩作乐才睡眠不足吧。
你这样的学生将来真是令人担心！
绝对成不了正经的大人，最多在哪个
破烂小工厂里当个女工——」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020120a02">
「根据Ｋ能量第一法则得到Ｐ=ＷＨＳ。」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020130a02">
「问题说『是由九六式战车一〇台跟金属
球棒八根，五升油加上七升牛奶，
三合米，九升盐，加上三小匙砂糖制成』
所以Ｗ为五五〇吨。」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020140a02">
「Ｈ是由『交叠的扑克牌可能会有一部分
被撕裂』出发，代入问题二的答案，
得出二一五公斤。技术型黄金发动机加上
翅膀是三Ｔ的话Ｓ即为四八公斤。」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020150a02">
「进行代入，五五〇×二一五×四八……
　五六七六〇〇〇。」

{	FwC("cg/fw/fw一条_通常a.png");}
//ｋｔは「カラテ」と読む
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020160a02">
「答案。
　破坏机器人的冲击力为五六七六〇〇〇ｋｔ。」

{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020170e051">
「…………回答正确。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se日常_物_椅子鳴る01",1000);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Fade("絵背景100", 2000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　完成任务后坐回座位。
　然后继续眺望天空。

　同时玩弄着手中的短小铁块。
　……这是在那个已经毁灭的小村庄里，
救下她性命的老人最后托付给她的东西。

　像尖牙又像触角的，奇妙铁棒。
　金属制品的冰冷触感让一条的意识豁然开朗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020180a02">
（去见他吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　决定了下午的计划。
　最近每天都在重复同样的生活。几乎已经成了
习惯，虽然并不一定真能见到。
　即便如此，还是要去。

　并非有意疏于功课。
　父亲教导过。只有通晓世间万物并判断其价
值的人，才能够凭自己的喜好选择知识。

　即是说，既然自己并不是神，就必须抱着谦逊的
态度学习一切知识。
　那个人说过。更加简单明了。他说，在学校所学
习的知识，非常重要。

　所以对于学习要不遗余力。本学年所修科目全部
预习完毕，不明白的地方也向老师请教解决，已经
把握了教材的全部内容。
　然而——却又不想去更上一层楼。

　因为眼下还有别的东西想要学习。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020190a02">
（不知他现在在做什么……
　但愿他没有独自去调查……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　想尽快见到他。

　跟他见面，向他学习。
　即便只有点滴……也要学点什么。

　为了能够早一天参加战斗。

   ——诵经一般的授课再度开始。
　不禁握紧了冰冷的铁棒。一条再次把反复回味
过无数次的话语深藏心中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

..//ジャンプ指定？
//次ファイル　●０２？　"ma04_003.nss"
//嶋：ジャンプ先「●０２」に変更

}



.//●０２
//――――――――――――――――――――――――――――――
scene ma04_002.nss_k
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//――――――――――――――――――――――――――――――
.//●０２
//●０２

//◆拘置所
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg011_拘置所内_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//◆景明の顔グラが上下逆？
	SetNwC("cg/fw/nw看守.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma04/0020200e038">
「未决犯〇四八号。
　出来。」

{	OnFwC("cg/fw/fw景明_困惑.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0020210a00">
「是。」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma04/0020220e038">
「…………我说，你今天在做什么？
　脚朝上倒挂在架子上。」

{	OnFwC("cg/fw/fw景明_困惑.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0020230a00">
「是腹肌运动。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆八幡宮
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	WaitKey(500);

	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　——位于江之岛的幕府直辖渔业研究所。
　它的实体是兵器研究设施，而且正在进行危险性
极高秘而不宣的新型兵器的开发——<k>一个月前
收到了如上举报，并开始着手调查。

　判断其嫌疑巨大，并派出调查员伺机潜入调查，
上周他留下了最后的简短联络，从此杳无音信。
　————说是「看见了银色怪物」。

　另外，证实了在江之岛附近沿岸，可疑的失踪案频发。
近郊的住户也开始对海岛满腹狐疑，议论纷纷。
　……事态似乎比预期更为严峻。

　六波罗幕府在进行非人道的兵器试验。
　或是与未确认的连续大量虐杀犯——化名银星号
有所关联。判断有必要即刻进行调查。

　然而当下，适合参与大和调查行动的人才却为数
不多，尚未投身其它工作的人更是遍地难寻。
　于是——

　进驻军总司令部请求大和国内务省警察局基于
国际和平的精神予以协助。
　以上。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1000,true);
//	ClearWaitAll(1000, 2000);


//	CreateColorSP("絵暗転", 15000, "#000000");
//	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

..//ジャンプ指定
//次ファイル　"ma04_003.nss"


}



