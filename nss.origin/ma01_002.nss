//<continuation number="630">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_002.nss_MAIN
{

	$TITLE_NOW=" ������������һƪ �ʺ���������� ";

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg006_���w�β���_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�������w=true;
	#voice_on_����ҰС��=true;

	$PreGameName = $GameName;

	$GameName = "ma01_003.nss";

}

scene ma01_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_001.nss"

//�������ȥ롸��һ�����r�t�T��
//���ƥ�åף������Ӣ�ۤ����Z�ǤϤʤ���

//�����w�β���



/*
//�������ɦ�������ץ�
	CreateTexture("�����ȥ�", 500, Center, 50, "cg/bg/��һ��Taitle.jpg");
	Move("�����ȥ�", 0, @0, @+10, null, true);
	Fade("�����ȥ�", 0, 0, null, false);

	CreateTexture("�ƥ�å�", 500, Center, Middle, "cg/bg/�ƥ�å�.png");
	Move("�ƥ�å�", 0, @0, @+10, null, true);
	Fade("�ƥ�å�", 0, 0, null, false);

	Wait(300);
	Move("�����ȥ�", 700, @0, @-10, Dxl1, false);
	Fade("�����ȥ�", 1000, 1000, null, true);

	WaitKey(2000);

	Move("�����ȥ�", 700, @0, @+10, Dxl1, false);
	Fade("�����ȥ�", 1000, 0, null, false);
	Request("�����ȥ�", Disused);

	WaitKey(2000);
	WaitAction("�����ȥ�", null);

	Move("�ƥ�å�", 500, @0, @-10, null, false);
	Fade("�ƥ�å�", 500, 1000, null, false);

	WaitKey(3000);

	CreateColor("��Ļ��", 19000, 0, 0, 1024, 576, "White");
	Fade("��Ļ��", 0, 0, null, false);

	Wait(200);

	Fade("��Ļ��", 1000, 1000, null, true);
	Delete("�ƥ�å�");
	CreateColor("�\Ļ��", 1000, 0, 0, 1024, 576, "Black");
	Fade("��Ļ��", 500, 0, null, true);
	Delete("��Ļ��");
*/

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 1500, "Black");
	Delete("�ϱ���");


	CreateTextureEX("�}�ƥ�100", 2000, Center, Middle, "cg/sys/Telop/lg_��һ��.png");
	Fade("�}�ƥ�100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("�}�ƥ�100", 2000, true);

	WaitKey(2000);

	CreateTextureEX("�}�ƥ�100", 2000, Center, Middle, "cg/sys/Telop/tp_��һ������.png");
	Zoom("�}�ƥ�100", 0, 700, 700, null, true);
	Request("�}�ƥ�100", Smoothing);
	Fade("�}�ƥ�100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("�}�ƥ�100", 3000, true);

	WaitKey(2000);

	SoundPlay("@mbgm35",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������Ȼ�е���ͻ��
����̸һ̸����ӵ�������ʽ��

���������������ʿ���
��ʲô�Ż��������ӵ�������ʽ�أ�

��ج�Ρ���

��������ˣ�
������˵��ج���о��ѣ����Ǹ����˳�����ȫ����


����������

��ԭ����ˣ���ȷ���š�
��������С�£�ֻҪʹ��һ����Ϊ���͵�����
���ֵܵ��ˡ������ܲ��˵Ļ�������Ϊ���в˵�
������Ҳ�ܸ㶨������������ûʲô���ˡ�

�������أ�

����С�浽���Ů��������һ������÷��ǵ�
�������˵��Ҫ�ٵ���Ŷ��һ��ǿ�аѱ���ק�ߡ���

�����Ц��

���������еõ���ĸ�Ͽɵ�δ���޺��ڼҺܻ��չ��˵�
�������ݼҵ����ú��ǹ�������������ס�ڼ����
ŮӶ����ɽ�������Ů�ʹ�ĳ������ѧ�Ĺ�������
ÿ���糿Ҳ���������𴲡���

����ֲ������ȷ��Ļ��������˾���������һ������

�������š�ȷʵ�е��������š�����������׿�����Ѷϣ�
�ó������;��������Ը����ǣ�����϶��ܽ����
�⻹�������״̬�����Բ��ܷ�������Ҫս����

���ؼ��ǣ���������ʬ�塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������ô��
������ӵ�������ʽ�ǣ�

��ֻ��һ���𰸡�<k>
������˯�������ʱ����ͻȻ��
���Ǳ��Ƿ�ʹ�����ѡ�û��

����˵����ʲô�𰸰���
���ر���û�о�����ˡ�

������������һ�¡�
�����������ڹ�԰ɢ�����Ρ�������ͻȻ�����ˡ�<k>��ʹ��<k>
��֪�����׷�����ʲô�¡�<k>ʹ���������ò�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������Լ��ȳ���ˡ�

����ôһ˵�������˰ɣ�
��һ���磬�𴲵�˲�䣬�����Լ���Ϊ���ڳ���
ʹ�಻������ʲô�о���

�������޷����ܣ��ѹ���֣��Ҿ��û����������
��ӵ�������ĸо���ʵ���ϣ�ȷʵ�޷����ܡ�
����ޡ����ǿ�Ҳ����������⣬���Ӳпᡣ

��Ʒ���Ƿݱ��˵�ʱ���ƺ����ˡ�
���Ҽ�����˯�������������Ȳ�������ʹ��
����������������ʮ�붼���þ����˰ɡ�

���������Լ������帡�����ˡ�
�����ǡ������ˣ��ҽ������۷ɡ�

������˵�������������ٻ��ˡ�����лл��
����������������ӱ���ʵ�Ի��ļ����˸�
�ҵĿ������Ի�����һ�㡣

����Ȼ����û�����ټ����ˣ��뱣�ء�
����Ҫ������ʵ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColor("��Ļ", 150, 0, 0, 1024, 576, "White");
	Request("��Ļ", AddRender);
	Fade("�\Ļ��", 5000, 0, null, false);

	SetVolume("@mbgm35", 5000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041]
����Ȼ��������ҵ�ֻ���޾�ʹ�ࡣ
��û��ϵ����������취��������

</PRE>
	SetTextEXC();
	TypeBeginCO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����w�β���
	CreateTextureSP("�}����100", 50, Center, Middle, "cg/bg/bg006_���w�β���_01.jpg");
	CreateTextureSP("�}������", 100, Center, Middle, "cg/bg/bg006_���w�β���_01.jpg");


//�������ɥ����x
	SetFwC("cg/fw/fw���w_ͨ��b.png");

	Fade("�\Ļ��", 1000, 0, Dxl1, true);
	Delete("�\Ļ��");
	Fade("��Ļ", 1000, 0, null, true);
	Delete("��Ļ");

	#voice_on_�������w=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020010b56">
������������

{	#voice_on_����ҰС��=true;
	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020020b33">
������������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020030b56">
������������

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020040b33">
��������

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020050b56">
�������˰�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0081]
��ͼ�⣩

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ֱ�ʾ�ٶȲ����ǥΩ`�������ȱ�ʾ�ˤ��������
//�����ɤǤ����ä�����

//��������������������
//�������������d���𡡡���
//�������������ܡ�����


SetBacklog("������������������", null, null);
SetBacklog("�ҡ�������d���𡡡���", null, null);
SetBacklog("�����������ܡ�����", null, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����������ܡ�����
�ҡ�������d���𡡡���
������������������

</PRE>
	SetTextEXC();
	Request("@text0090", NoLog);
	Request("@text0090", PushText);
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������������������
//��������������d����
//�������������ܡ�����
//�����������������Y�Ĥ���

SetBacklog("����������������", null, null);
SetBacklog("������������d����", null, null);
SetBacklog("�����������ܡ�����", null, null);
SetBacklog("�������������������Ȳ��̶�", null, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����������ܡ�����
������������d����
����������������
�������������������Ȳ��̶���һ�����ƣ�

</PRE>
	SetTextEXC();
	Request("@text0100", NoLog);
	Request("@text0100", PushText);
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������������������åĥݩ`��
//��������������d����
//�������������ܡ�����

SetBacklog("����������������������ۼ�������", null, null);
SetBacklog("������������d����", null, null);
SetBacklog("�����������ܡ�����", null, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����������ܡ��ġ�����ۼ�������
������������d����
������������������

</PRE>
	SetTextEXC();
	Request("@text0110", NoLog);
	Request("@text0110", PushText);
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������ţ���������
�������ң������ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Хäȥ磻�פ��ƿդ�

	SoundPlay("@mbgm25",0,1000,true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 250, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	CreateTexture("�}����50", 500, 0, 0, "cg/bg/bg001_��a_01.jpg");
	Fade("�}����50",0,1000,null,true);
	Zoom("�}����50", 0, 1500, 1500, null, true);

	Zoom("�}����50", 400, 1000, 1000, Axl1, false);
	DrawTransition("�\Ļ��", 250, 1000, 0, 100, Dxl1, "cg/data/slide_02_01_1.png", false);
	Request("�\Ļ��", Disused);

	Wait(100);

	SetFwC("cg/fw/fw���w_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020060b56">
��Ϊɶ��������ҰС�ġ�������˻˻!!��

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020070b33">
���۷ɣ��ٲ��𴲾�Ҫ�ٵ���Ŷ����

{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020080b56">
������������÷��ǵ��������˵���ֻ�����
����������£����ǲ������ܰ쵽�ģ�
���Բ����ܣ����Ҽ���������������������࣡��

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020090b33">
�����𴲵Ļ������ס�����Ŷ����

{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020100b56">
���ɶ񣡡�������������ȴαװ�������
���̱��ԣ����������������а������ʱ
���ྫ���Դ��������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	Shake("�}������", 500, 0, 3, 0, 0, 500, null, false);

//���ӣţ����Ф�Ф�Ф�
	CreateSE("SE01","se����_����_ߵ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(200);
	CreateSE("SE02","se����_����_ߵ��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(200);
	CreateSE("SE03","se����_����_ߵ��01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(200);

	SetFwC("cg/fw/fw���w_�@��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020110b56">
����Щ���Ҳ�˵����Ѿ��Ǽ�����
����������������������
����������������������������

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020120b33">
���������������ౡ��

{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020130b56">
�����������������Ҹ���Ӱ��ĥ���ң�
��Ҫ���˿��޷�ʵ�ֵ�ϣ����
�������Ҿ����ɣ����������˹���ɱ���Ұɣ�
�������Ĵȱ�ɱ���Ұɡ�����������!!��

{	NwC("cg/fw/nwС�Ĥθ�.png");}
//������㣯С�ĸ���
<voice name="����㣯С�ĸ�" class="����������" src="voice/ma01/0020140e125">
��������������С�Ĺ�Ȼϲ��
�۷ɾ�ѽ������

{	NwC("cg/fw/nwС�Ĥ�ĸ.png");}
//������㣯С��ĸ��
<voice name="����㣯С��ĸ" class="������Ů��" src="voice/ma01/0020150e126">
��û���������˶������ˡ�
�����ǵġ���

{	FwC("cg/fw/fw���w_�Ӥ�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020160b56">
������������ĸ�����������ˡ���΢�ߵ�
����Ů�����������������������ʵ̬��
��˵����������˵����!?��ι!?��

{	FwC("cg/fw/fwС��_ͨ��a.png");
	FadeFwC(0,true);}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020170b33">
���۷����ǵġ���Ȼû���˼�����߾Ͳ���ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ӣţ����ꡣ
	CreateSE("SE01","se����_����_�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}������", 500, 5, 3, 0, 0, 500, null, false);

	FwC("cg/fw/fw���w_�@��b.png");
	FadeFwC(0,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020180b56">
��ѽ������������������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
������ǣ�������������ʽ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteFw(300,false);

	SetVolume("@mbgm25", 1000, 0, null);

//��K��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	CreateTextureSP("�}����50", 50, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	CreateSE("SE01","se����_����_�i��02_L");
	MusicStart("SE01",0,1000,0,750,null,true);

	SoundPlay("@mbgm22",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������һ��ƽ�͵ĳ��С�

  Ҳ������ʷ�ƾõ�Ե�ʣ���ʹ���ڳ����������糿��
����Ҳ��һ������ģ����������񾭽���ææµµ��
������Ȼ�������������ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����Դ����������������ǧ�ꡪ����׼ȷ˵��
�������˰��ꡪ����˳�ʱ����ۻ���
�����������Ա�������������У�Ҳ���ǲ���˼�顣

������ǲ�����ʮ�����������࣬�޷�����Ĵ��ڰɡ�

������Ҳ�ɻ���֮��������ˡ�
��ֻ����һ�����࣬�޷�������ʷ�ĳ���
���������˵Ȱ���֮�£����붼���������

����ʹ������棬���к����ܼ������ء�
����Ӧû�С�����ͼ�Կ���ʷ��
����Ϊ�ܹ��������޴�֮ͽ��

�������𱸡�
����������Ϊ���ֵĳ��е����ҳٵ��ģ�
ѧУ����ʦ�ǿ϶������𱸡������𱸵ġ�

{	SetVolume("SE01", 3000, 0, null);}
������ʵ�ǣ��϶��ᱻ�𱸵ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(500, @0,@0,"cg/st/st���w_ͨ��_�Ʒ�.png");

	FadeStL(300,true);

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020190b56">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��̾�˿������������������š�
����Ȼ���Լ��ٵ������������ĳ���ʧ���ˣ�
ȴ��ȫû���û����ŵ�˫���߿����������顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(500, @0,@0,"cg/st/stС��_ͨ��_�Ʒ�.png");

	FadeStR(300,true);
	SetFwC("cg/fw/fwС��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020200b33">
���۷ɣ�Ҫ�ٵ���Ŷ������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020210b56">
�������ѵ�����˵�㲻֪���ٵ������𣿡�

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020220b33">
��֪������֪������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020230b56">
���ϻ���֮ǰ�Ҿ����ʣ�Ϊʲô����һ�
���ܷ���ʲô����ʲô
�����������ƻ��Եķ��򡪡���

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020240b33">
��ԭ�����ӾͰ�����һ����Ҳ�����ˣ�
���ԲŻ�ٵ�ѽ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������܉��
//���ӣţ��ҥ��

	SetVolume("@mbgm22", 300, 200, null);
	CreateSE("SE01","se���L_����_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColor("�ե�å����", 15000, 0, 0, 1024, 576, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Delete("@fw*");
	DeleteStR(0,true);
	DeleteStL(0,true);

	CreateTexture("�}������", 1000, 0, 0, "cg/ef/ef015_���ú�܉��.jpg");

	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
�����������ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
���ҰѼ��ӱ������н�ų��������Ѱ���˦�˳�ȥ��
������ȵ�һ������˱�á�

��Ŀ��������
����һ�ȷ����ˣ�����׳��������ת�Ƶз�ע�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SL_centerout(@0,@0,3000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
���Ѱ�����С�ĵķ����ͬʱ�������³���
��û�д�Ϣ������ʱ�䡣�þ���ǰ�����������

����������

���³����š�

��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	SL_rightdown(@0,@0,2000);
	SL_right(@-100,@100,2500);
	Delete("�}������");

	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");


	CreateSE("SE03","se���L_����_�����01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SL_centeroutfade(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����ƶ�׼������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SL_rightdownfade(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�������ֵ����ϲ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se���L_����_�����01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_rightfade(10);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����׼���µĺ��������

��һ�����֡�

��������ô��ε����ɺܼ򵥡�

����Ϊ����Ҳ���ֵ�Ҳ�ö�û���С�

��û���е�ԭ��Ҳ�ܼ򵥡�

����Ϊ�����Ѳ���ԭ�ء�

��ͽ���ҵı��������ڿ��С�

</PRE>
	SetTextEXC();
	TypeBeginCO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SL_Delete();
	CreateSE("SE02","se���L_����_�����02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_down(@0,@0,3000);
	SL_downfade2(10);
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,700,0,1000,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
�����һ�������Ľź�����ƿ���������档

�����ͬʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SL_rightup(@0,@0,2500);

	CreateSE("SE02","se���L_����_Ұ̫�����02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_rightupfade2(0);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0411]
��ͨ�����ǡ������������������µĹ�����
���������һ����׼ȷ����ػ������ҵ��°͡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������
//���ۥ磻�ȥ�����

	CreateSE("SE02","se���L_����_Ź��02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("�ե�å����", 3000, "WHITE");

	CreatePlainSP("�}��������500", 500);
	Shake("�}��������500", 300, 5, 20, 0, 0, 500, Dxl1, false);

	Wait(100);

	Fade("�ե�å����",500,1000,null,true);
	Wait(500);
	Delete("�}��������500");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��������ա�
��һƬ��ɫ������������

����գ�̫�������˰���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
	CreateTexture("�}������", 500, 0, 0, "cg/bg/bg001_��a_01.jpg");
	Fade("�ե�å����", 1000, 0, null, true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
���ع��������������ڵ��ϡ�
�����һ�������������ε���š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��Ȼ��һͷţ��������̤����

</PRE>
	SetTextEXC();
	TypeBeginCO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��K��
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("�}������");


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
�����Ųˣ�����˯���ѵ�ũ�����ǣ����ǰ��ţ��
һ������ν�ı��飬�������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateSE("SE01","se����_����_�𤭤�02");
	MusicStart("SE01",0,500,0,1000,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateSE("SE02","se����_����_ʰ��01");
	MusicStart("SE02",0,700,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��ʰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(500, @0,@0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	StR(500, @0,@0,"cg/st/stС��_ͨ��_�Ʒ�.png");

	FadeStL(300,false);
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
��С��׷������ǰ��ʮ���������ŵ�С�ģ�
�������硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm22", 1000, 1000, null);

	SetFwC("cg/fw/fwС��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020250b33">
����˵�� ��

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020260b56">
���ޡ���

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020270b33">
������������˵���·�����������
����Ӧ�ó�������ǰ��á���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020280b56">
���ܹ�ɣ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020290b33">
���š�����ͨͨ��һ��������
��Ҫ��ǧ���ˡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020300b56">
����Ǯ������һ�����ˡ���

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020310b33">
�����һ���������ֻʣһ�����𣿡�

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020320b56">
������Ц���������о��ϵ�ȷ������ס���

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020330b33">
���ǡ�������������ǰֻҪʮ��֮һ�ļ۸�
�������µġ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020340b56">
��������
����ô˵Ҳ���ǲ���ǰ������սǰ�����˰ɡ���

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020350b33">
������
���о��⼸��۸������һ�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020360b56">
���ǣ���Ҫ����Щ�����𣿡�

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020370b33">
���϶���������
���Һ���һ���������㻨ǮʲôҲû�а�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020380b56">
��Ҳ�ǡ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020390b33">
����������˵��Ҫ�Ļ���ֻ��������
�ٹ����ã���ʹ��ǮҲ
�򲻵��ˡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020400b56">
��Ϊʲô����

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020410b33">
��������˵������Ҳ���Ǻ����������
Ů�˵��·�������Ʒ֮���õĲ�����Դ��
�ᱻ�ջ��������ҵ�����ӡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020420b56">
��������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
���������ڲſ�ʼ��
��սǰ��ս���������Ĵ��Ծ�һֱ���ϡ�

���������󲻽���ǣ�ս���Ѿ��������꣬
�������Գ����š�
�����ǲ�Ҫ��Ϊ��������Щ�һ��
������Ϊ����ʲô�������ɱȽϺðɡ�


����������Щ��Ȩ���йص����߰�����¡�
��Ļ�����ꡣԽ��Խ�����׳��Ԫ˧���ˡ�ֱ�����
���ȶ�ֱ�������أ������������ܿ������ˡ�

����֮���ǣ����ܻ�ӭ����Ʒ��ƽ��������룬
ȡ����֮�ٽ�������Ʒ���������Ʒ��������
�������ƣ�����Ϊ�С�������˭�ĵ����ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020430b33">
��������Ʒ����û��ϵ�������ǲŸ����𡭡���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020440b56">
�����ˣ�ûʲô�����������·����ѡ���

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020450b33">
���㰡�������Ҵ������������·�
Ҳû��ϵ��!?��

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020460b56">
���й�ϵ�����ɵ���ģ�庣��ȥ��
Ҳ�Ҳ�����������

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020470b33">
�����������������Ѿ����þ������ء�
��ÿ������Ϊ�ѿ��Ĵ�类�˳�Ц��ʱ��
����߹Ǿͻ���Ե�޹ʵضϵ�һ������

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020480b56">
������ʲô������ϵ������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020490b33">
���߹�ֻ�ж�ʮ�ĸ��ء�
����һ���¶��Ų���Ŷ�����������

{	FwC("cg/fw/fw���w_�Ӥ�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020500b56">
��һ��һ���𣡡���Ҫ����
�����뱻��Ц�Ļ��ͱ������Զ����
����ɣ���

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020510b33">
���������治��˼��ѽ����Ȼֻ��һ�ּ��裬
�������ҹ�ͬ��Ǯ��һ���·��Ļ���
һ���µ��������ܱ��һ���ˡ������������ء���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020520b56">
������������
����Ϊ�˰ѻ����������������İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
�������Ĩ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020530b56">
���а���Ҳûʲô���á���

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020540b33">
��������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0601]
��������ô�ɴ�ش���ң�С���ס�ˡ�
��֮ǰ�Ļ�������Щ�뿪��Ц������һ����˵Ҳ�ǰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0602]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020550b33">
��Ϊʲô����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020560b56">
��ҲûʲôΪʲô��
��������ҲûʲôҪ��Ǯ�ĵط�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0603]
���ֲ�ϲ�������˶���
��Ҳûʲô���á�

��˵�����㻨Ǯ�Ļ��ᡭ��
����ѧУ�ؼ�·�϶��Ӷ���ʱ�����ĵ�
�뿴��־��ʱ��Ҳ�����̶ȶ��ѡ�

�����˶�ȫ�ܡ����ù㷺���ұ����ǲ�ͬ��
û��̫���Ҫ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_Ц�b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020570b56">
������û��ϵ����Ҫ���٣���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020580b33">
������������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020590b56">
��ι��������

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020600b33">
����Ҫ�ˡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020610b56">
��������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0020620b33">
�����߰ɡ����Ҫ�ٵ��ˡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0020630b56">
������Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DeleteStR(300,false);
	DeleteStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
���һ�æ׷�����������Ҵ���ǰ�߿���С�ġ�


��Ů���ģ�����ա�
���ձ��������Ů���������һ����䣩
����ȫ�㲻������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);




..//������ָ��
//�Υե����롡"ma01_003.nss"

}
