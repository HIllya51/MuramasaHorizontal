//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_006.nss_MAIN
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
	#bg013_鎌倉俯瞰a_01=true;
	#bg034_署長宅茶の間a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_007.nss";

}

scene mc01_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_005.nss"

//◆署長宅
//◆新聞
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTexture("絵背景50", 1100, Center, Middle, "cg/ev/ev168_新聞.jpg");

	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　日向守异闻
　
　　　　　　　第四十七回　信贵山沦陷

{	OnSE("se日常_物_紙をめくる02", 1000);}
“——最后，织田的军队攻破正门，如澎湃的波涛般气
势汹汹地涌入城内。
　面对一气呵成蜂拥而至的人马，右卫门佐毫无畏惧挺
身阻拦，但终是寡不敌众，陷入困境。”

“面对勇猛地击退三四人之后又四下环顾着寻找下一个
敌手的右卫门佐，织田的军队心怀畏惧不敢上前，此时
惟任日向的家臣佐佐木从军中冲出，击断了他的长枪。”

“右卫门佐正要伸手拔出太刀，就在这一瞬间，数名杂
兵的长枪陆续刺出，右卫门佐肩腹中枪。松永嫡子的命
数，至此已尽。佐佐木将其首级取下，右卫门佐久通命
丧此地。享年三十五，据说死时无半句遗言。”

“得知右卫门佐已逝后，笼城士兵的阵脚迅速地陷入了
混乱。临阵倒戈、弃甲遁逃的人陆续不断。就在攻城方
开始向城郭和三围城墙放火时，义气之士也纷纷死心而
自我了断，不愿将自己的尸骨交予敌人。”

{	OnSE("se日常_物_紙をめくる02", 1000);}
“走投无路的松永弹正忠于城中央的城墙之上，俯视着
这幅场景，已知末期将至。
　如云霞般气势恢宏的军队，其总领是可恨至极的信长
的嫡子秋田城介，弹正盯着他的马标，狠狠咬牙。”

“败亡也好将死也罢，但若连一箭之仇都未报过，实在
是死不瞑目。弹正抱起茶釜，出现在织田军的面前。
　秋田城介惊讶地迅速站起，他身旁的羽柴筑前也大吃
一惊。”

“那宛如爬行蜘蛛般的异形茶釜，正是织田内府渴望已
久的名物。
　用此物甚至能换得让内府赦免松永连续叛变两次的罪
名的机会。”

{	OnSE("se日常_物_紙をめくる02", 1000);}
“面对慌乱而大声制止他的秋田城介，弹正毫不理会，
他大声嘲笑一番后，咏出最后一句。”
“——塔鲁布西、阿都拉、乌鲁、巴库鲁（ＴＡＬＵＢＳＩ！
ＡＤＵＬＡ！ＵＬＵ！ＢＡＡＣＨＵＲ！）——”

“这一句点燃了火种。
　瞬时间，巨大的爆炸撼动了整个城郭，掀起的烟尘淹
没四周。”

“织田军自始至终一声未发，注视着眼前的一切。”

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：機神咆吼
//◆新聞にレイヤー重ねでサイクラノーシュＣＧ？
	SetVolume("@mbgm*", 1000, 0, null);
	SoundPlay("@mbgm03",0,1000,true);
	OnSE("se日常_物_紙をめくる02", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
“烟云渐渐散开，显现了一个巨大的身形。
　那酷似蜘蛛的身形，此物正是方才那茶釜。”

“但那身形已膨胀至如山般庞大，宛若要捅破天顶一般。
　那凌然立于茶釜之上的人正是松永弹正忠。他高举双
臂，深吸一口气，大声宣道——”

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	CreateMask("絵覆", 5900, 0, 0, "cg/data/slide_07_00_0.png", false);
	SetAlias("絵覆","絵覆");
	CreateTextureEX("絵覆/絵演叡梵大師経論", 5000, Center, Middle, "cg/rec/evRec_サイクラ.jpg");
	Fade("絵覆/絵演叡梵大師経論", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
“以吾之魔导书『睿梵大师经论』，召唤鬼械神——
古天明平蜘蛛!!
　秋田城介信忠，前来受死吧！”

“织田秋田城介、羽柴筑前、惟任日向，仅仅是愕然地
听着松永的高呼。
　虽说日向守怀揣着由伴天连交予他的『死灵秘法』，
但日向，至今尚未知其深意——”

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
　
　　　　　　　　　　“待续。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばさっ。新聞を畳んだ
	OnSE("se日常_物_紙を置く01", 1000);

	CreateTextureSP("絵背景51", 1000, Center, Middle, "cg/bg/bg034_署長宅茶の間a_01.jpg");

	Delete("絵覆");
	Delete("絵背景50");
	FadeDelete("絵色黒", 1000, true);

	SetVolume("@mbgm*", 1000, 0, null);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0060010a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　连最后的连载小说都看完后，以报纸来消磨时间亦告
一段落。
　将报纸折好置于桌上，我无所事事地望向庭院。

　庭院看起来好萧条——但这也并非庭院里草木的责任
吧。
　若无论天气阴晴寒暖，都觉得它看起来很萧条的话，
那便是人的问题了。

　人的精神运作迟钝了的话，浜菊与山茶花看在眼中也
不会觉得有任何差别。
　最近一直是这种状态。

　从那个雨天开始。

　只是无所事事地，消磨着时间。
　因为村正对银星号的探索还未得出结果。也因为，从
那天起我便没有收到过八幡宫的传唤。

　但即便如此，也该有其他消磨时间的方式。
　根本不至于连着数日，每天都对着庭院里的草木发出
无理的责难。

　虽然可能一点忙也帮不上，但可以帮村正一同进行搜
索行动。
　也可以着手准备与银星号的对决，加强每日的锻炼。

　要做的事情有很多。
　
　但我却对每一件事都置之不理，仅是无所事事地度日。

　肉体没有任何异常。
　不想动弹的是精神方面。

　就像是——发条突然断了一般。
　我现在正陷入这样的心境之中。

　我知道这样下去会很糟糕。
　我没有忘记应完成的使命。必须要打败银星号。

　现在决不是放松心情研究什么发条断了的时候。
　应该马上恢复精神，为战斗做些准备。

　我这样想着。
　然而，这些投向自己内心深处的声音却没有得到一丝
回应，仅留下点滴回音就渐渐消失了。

　会陷入这种状态，仅仅只是由于自己的软弱。
　这些我都明白，却仍无动于衷。

　……病入膏肓了。
　
　我仿佛在想别人的事情一般，厌恶地思考着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＳＥ：スーッ。襖が開く音
	OnSE("se日常_建物_スライド開く01",1000);
	WaitKey(500);
	SetNwC("cg/fw/nw牧村家宰.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【牧村】
<voice name="牧村" class="牧村" src="voice/mc01/0060020b51">
「景明大人。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0060030a00">
「……什么事？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　牧村女士悄无声息地出现。
　一手包揽所有家事的此人，有着与她的劳动量成反比
的微弱存在感。

　多亏如此，即使现在心情格外糟糕，跟她对话也不会
觉得厌烦。
　我转过身，她以最简单明了的语句将事情传达于我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw牧村家宰.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【牧村】
<voice name="牧村" class="牧村" src="voice/mc01/0060040b51">
「您的电话。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0060050a00">
「找我的？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換。電話。絵は鎌倉市俯瞰？

	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureSP("絵背景10", 900, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_01.jpg");
	FadeDelete("絵背景51", 0, true);
	FadeDelete("黒幕１", 1000, true);




}

..//ジャンプ指定
//次ファイル　"mc01_007.nss"