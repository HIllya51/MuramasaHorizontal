//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_019.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		//$Ichizyou_Dead = true;
		//$Kanae_Dead = true;
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev122_�R��������҆�� = true;
	#ev123_�󄇤�֤ĥ��`���å����� = true;
	#ev912_��҆�¸o�ݳh���å�_a = true;
	#ev912_��҆�¸o�ݳh���å�_b = true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_����������=true;
	#av_ST05��`�����=true;
	#av_GR03�����=true;

	$PreGameName = $GameName;

	$GameName = "ma04_020vs.nss";

}

scene ma04_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_018vs.nss"

//��С��᪡�
//���ҥ���ȫ�T�����`�ȤΈ��Ϥ����¥��`��
//����������Έ��Ϥ��w�Ф��ƴΤء�

..//if_start
if(!$Ichizyou_Dead && !$Kanae_Dead){
//��һ��
//���ԥԥá��o��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg046_���΍u��̨_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0190010a02">
���ն�������
�������ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԩ`�������`��늲�״�B���
//���ԥԥá��o��������

	CreateSE("SE01a","se�ճ�_�Cе_�o��ͨ��06");//���ߩ`ע��
	MusicStart("SE01a",0,1000,0,1000,null,false);


	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0190020a02">
��ι������ҵĴ�С�㣡
�����ü���?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԩ`�������`��늲�״�B���
	CreateSE("SE01a","se�ճ�_�Cе_�o��ͨ��03");//���ߩ`ע��
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0190030a02">
������ʲôѽ����
���ѵ��Ǹ��ŵ粨��?!��

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0190040a02">
���ɶ񡭡�
������ȥѽ����

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0190050a02">
��<RUBY text="����">����</RUBY>��
��<RUBY text="��������">�����˰�</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԩ`�������`��늲�״�B���
	CreateSE("SE01a","se�ճ�_�Cе_�o��ͨ��03");//���ߩ`ע��
	MusicStart("SE01a",0,1000,0,1000,null,true);

	ClearWaitAll(2000, 1000);

}
..//if_end

//����҆�¡��R��
	PrintBG("�ϱ���", 25000);
	Delete("@���ꥢ�\");
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateTextureSP("�}�ţ�500", 500, Center, -240, "cg/ev/ev122_�R��������҆��.jpg");
	Delete("�ϱ���");
	CreateSE("SEL01","se��Ȼ_��_��ĵ���");
	MusicStart("SEL01",2000,1000,0,750,null,true);
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������ޱ���Ĭ�ˡ�
����һֱ�ߵ������Ѻ۱�¶���¹��£���Ϊ��˸����м
֮ɽ��

������ʹ���Ų����ɵ�˫������ɽ�����������ѷ�����
��¶����������ͷ����������ʽ��������˳�����

�����ż�ʻ�ž޴���������ˣ���Ȼʧȥ��ʶ��

�������ֱ����ӵ����ϣ������ѷ��п��ӡ�

������ȷ���������ص�����ĺ������棬������������
�����׷������ǵ���Ӱ��

��û��һ���˻���塣
���໥�����ţ���Ӳ������

�����ڵı��飬�����عǻ���������
�����޷������������������ǵ����֣�ȷ�����ǵ�����
���ֵ����Ķ����������־����谭��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}�ţ�*", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma04/0190060a00">
������������
��ȷ��һ�¡���

//��������
<voice name="����" class="����" src="voice/ma04/0190070a00">
����Դ̽�ˡ�
�����ǵġ���״̬Ϊ������

{	CreateSE("SE01","se����_���å��ԥå�_̽��01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0190080a01">
������������

//��������
<voice name="����" class="��������" src="voice/ma04/0190090a01">
������ƽ����
����Ȼʮ��˥�������������š�
���̽������ƾ��ܵþȰɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������äȤ����Ф�����ޤ���
//����������ɤ��á�
	PrintGO("�}�ţ�100", 5100);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Zoom("�}�ţ�100", 0, 1200, 1200, null, true);
	SetTone("�}�ţ�100", NegaPosi);
	FadeFR2("�}�ţ�100",0,800,300,0,0,20,DxlAuto, false);
	FadeDelete("�}�ţ�100", 600, true);
	CreateSE("SE01","se���L_�n��_�zܞ��01");
	PrintGO("�}�ţ�100", 5200);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}�ţ�100", 300, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("�}�ţ�100");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/ma04/0190100a01">
����������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190110a00">
����Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070a]
����ȴ��ƣ�ͺ�ʹ��һ���ӷ׷�����Ϯ����
��ͷ��Ŀѣ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,800,null,false);
	StR(1000, @-30, @0,"cg/st/3d�����˜�_����_�i��.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070b]
���Ǳ�ˤ��ĳ���ڴ�ʱ�������ԡ�
������ǿ˦�����ָо���վ��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/ma04/0190120a01">
����������Ǽ����ˡ�
�����ڵ����ǣ�Ҳ���ǰ���ӵľ����ý���
���������������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190130a00">
�����㶼˵ɥ��������ȷʵ�൱�����ˡ�
�������о����Ǳ߻�û��ʰ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0190140a01">
������ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190150a00">
����ξ͵���Ϊֹ�ˡ�
���˴ε��»����ܹ�ȷ�������Ǻ��¼��޹ء�
��Ȼ��ˣ���û�б�Ҫ�����ڵ�״̬ǿ��
�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190160a00">
����Ҳ����˵Ҫ��������
��֮���ˡ�
�����ڣ��Ա������ǡ�������һ��Ϊ���ȡ���

//��������
<voice name="����" class="����" src="voice/ma04/0190170a00">
��ȷ�����ǵ�����ȫ����ͬ���ϣ�
�������ͻض԰�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0190180a01">
���˽⡣
������ŵ����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ٴΣ��Ѿ���������мɽ��
���ܴ��Ǹ��ѷ��д�Ⱥ����Ǿͺ��ˡ���
��ʮ�ּ��ѣ�����ÿ��Ǿ�Ԯ���ֶΡ�

�������������ڴ˴�ȷ�����ǵİ�ȫ������
��Ԯ�ķ���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T���ΙC�|���
//��������ܞ����
	CreateSE("SE01a","se���L_�|��_�C�v�|����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("�}�ե�", 5500, "#FFFFFF");
	CreateTextureEX("�}�݄����|", 5510, -130, -200, "cg/ev/resize/ev302_94ʽ���_l.jpg");
	Fade("�}�݄����|", 0, 500, null, true);
	WaitKey(10);

	FadeDelete("�}�݄����|", 100, false);
	FadeDelete("�}�ե�", 300, true);

	CreateSE("SE01b","se���L_�n��_�zܞ��01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreatePlainSP("�}��",1100);
	Shake("�}��", 300, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("�}��");
	SetVolume("SE01a", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/ma04/0190190a01">
��ʲ����ʲô����
���ղš�����

//��������
<voice name="����" class="��������" src="voice/ma04/0190200a01">
������ʲô������?!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190210a00">
������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ƣ�����Ĵ��Ա��ӵ��޴򣬼����ǽ�ʣ�����ϸ����

��
�������ǵġ���һ�ε��¼���<RUBY text="����">����</RUBY>��

������ҵĴ��ڵ�<RUBY text="����">����</RUBY>�����õ����塣
��ʲô���鶼û�����ͽ������ⲻ���ܡ�

�����Ǵ˷����߻��ģ���<RUBY text="����">����</RUBY>��<RUBY text="����">����</RUBY>�����ɱ��
����ӭ��������Ľ�֡������޵Ĺ��ﱻ�򵹣�
��Ҳ��ɰ��������״̬��
����ô��֮���ֻ�ǡ���������������Ƿ����һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣԣ��������ǣң�����
	#av_ST05��`�����=true;
	#av_GR03�����=true;


	SetVolume("SEL*", 1000, 0, null);

	PrintGO("�ϱ���", 10000);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�ϱ���");
	CreateTextureEX("�}����100", 100, -4000, 0, "cg/bg/bg204_�����ر���_03.jpg");
	Fade("�}����100", 0, 1000, null, true);

	CreateTextureEX("�}����200", 100, -4000, 0, "cg/bg/bg204_�����ر���_03.jpg");
	Fade("�}����200", 0, 1000, null, true);

	CreateSCR1("@�}����100","@�}����200",5000,0,-250);

	CreateTextureSP("�}��1000", 1000, Center, Middle, "cg/st/3d��`�����_�T��_ͨ��.png");
	Move("�}��1000", 0, -148, -376, null, true);
	Request("�}��1000", Smoothing);
	Zoom("�}��1000", 0, 300, 300, null, true);

	CreateTextureSP("�}��1001", 1001, Center, Middle, "cg/st/3d��`�����_�T��_���L.png");
	Move("�}��1001", 0, -306, -121, null, true);
	Request("�}��1001", Smoothing);
	Zoom("�}��1001", 0, 600, 600, null, true);

	CreateTextureSP("�}��1002", 1003, Center, Middle, "cg/st/3d��`�����_�T��_���L.png");
	Move("�}��1002", 0, 276, -141, null, true);

	Move("�}��1000", 0, @+300, @0, null, true);
	Move("�}��1001", 0, @+400, @0, null, true);
	Move("�}��1002", 0, @+500, @0, null, true);


	CreateSE("SE01","se���L_����_��ͻ�M08");
	CreateSE("SE02","se���L_����_��ͻ�M08");
	CreateSE("SE03","se���L_����_��ͻ�M08");

	Move("�}��1000", 400, @-300, @0, Dxl1, false);
	Move("�}��1001", 400, @-400, @0, DxlAuto, false);
	Move("�}��1002", 400, @-500, @0, Dxl3, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(50);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(50);
	MusicStart("SE03",0,1000,0,1000,null,false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	WaitKey(1000);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SCR1stop();
	Delete("�}����*");
	Delete("�}��*");

	CreateTextureEX("�}����100", 100, -500, 0, "cg/bg/resize/bg203_�����ݳ�������a_03.jpg");
	Fade("�}����100", 0, 1000, null, true);

	CreateTextureSP("�}��1000", 1010, Center, Middle, "cg/st/3d�����_�T��_���L.png");
	Move("�}��1000", 0, 99, -152, null, true);

	CreateTextureSP("�}��1001", 1001, Center, Middle, "cg/st/3d�����_�T��_���L.png");
	Move("�}��1001", 0, -76, -321, null, true);
	Request("�}��1001", Smoothing);
	Zoom("�}��1001", 0, 600, 600, null, true);

	CreateTextureSP("�}��1002", 1000, Center, Middle, "cg/st/3d�����_�T��_ͨ��.png");
	Move("�}��1002", 0, -431, -209, null, true);
	Request("�}��1002", Smoothing);
	Zoom("�}��1002", 0, 500, 500, null, true);

	Move("�}��1000", 0, @+1500, @0, Dxl1, true);
	Move("�}��1001", 0, @+700, @-400, null, true);
	Move("�}��1002", 0, @+500, @-400, null, true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	OnSE("se���L_����_��ͻ�M04",1000);
	Move("�}��1001", 800, @-700, @+500, Dxl1, false);
	Move("�}��1002", 800, @-500, @+500, Dxl1, false);
	Move("�}����100", 700, 0, -700, Dxl2, true);

	Shake("�}����100", 2000, 2, 1, 0, 0, 500, null, false);
	OnSE("se���L_����_��ͻ�M03",1000);
	Move("�}��1001", 500, @-2000, @0, Dxl1, false);
	Move("�}��1002", 500, @-2000, @0, Dxl1, false);
	Move("�}��1000", 500, @-1500, @0, Dxl1, true);

	SetBlur("�}��1000", true, 3, 500, 200, false);
	BGMoveAuto("@�}��1000",1);

	Wait(1000);

	SetBlur("�}��1000", false, 3, 500, 200, false);
	BGMoveDelete();
	OnSE("se���L_����_��ͻ�M01",1000);
	Move("�}��1000", 500, @-2500, @0, Dxl1, true);

	PrintGO("�ϱ���", 30000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����Ͽ������ĵ�Ӱ�����
���ԵͿո��ӵ����ҷ��ģ������

���ƿ�ս�ô����������ӣ�-���������ַ�
����½ս����װ��������ǣ�-�����Ӷ�ķ��

�������������˾�����ʽ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����܇ꠣ��i����ꠤ��������`�ä�
	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("�\Ļ��", 1000, "BLACK");
	CreateColorEXadd("�}ɫ100", 1500, #FFFFFF);

	Fade("�\Ļ��", 100, 1000, null, true);
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 300, 0, 1000, 100, Dxl1, "cg/data/zzex_Slide_01_04_00.png", true);

	Delete("�\Ļ��");
	CreateTextureSP("�}����100", 1000, 0, 0, "cg/ev/ev123_�󄇤�֤ĥ��`���å�����.jpg");
	CreateTextureSPadd("�}����200", 100, 0, 0, "cg/ev/ev123_�󄇤�֤ĥ��`���å�����.jpg");
	Zoom("�}����200", 0, 1200, 1200, null, true);

	CreateSE("SE02","se�\��_��܇_������");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("�}����200", 1000, 1000, 1000, null, false);
	FadeDelete("�}����200", 1000, false);
	FadeDelete("�}ɫ100", 500, true);

	Wait(500);
	SetVolume("SE02", 2000, 0, null);

	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureEX("�}����210", 1010, -1270, -680, "cg/ev/resize/ev123_�󄇤�֤ĥ��`���å�����lm.jpg");

	Fade("�}����210", 2000, 1000, null, false);
	Move("�}����210", 6000, @0, -140, DxlAuto, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���������������������ս�����е��������
���������Ѵ�����ȫ����Χ��״̬��

����ǰ��ս����װ���ϣ����Կ�����������Ӱ��
�����ⷢ�ﵽ�ɴӾ����ڲ�����͸���ĸ߸������ˡ�

��Ȼ������ȴ���������������������Ų�Э������ϸ��
���𷢱��ۣ�һ����֪��Ѫͳ�����İ�ɫ���֡�ͬ����
����Ļƽ��ƴ��ศ��ɣ�ٲȻ�γ�һ��������Ӣ
�˻��档

����ӹ���ɣ����Ǿ��ӵ�ָ�ӹ١�
����������ҹ��ȷ�����ľ��׼���Ҳ֪����<k>����
���������ֽ׼���ζ�����Ǵ�ӳ��������ھ����е�
ĳ�����ŵ���Ҫְ�Ľ�У��

�������в�δ�̺��п����ּ��ҵ����������������ҡ�


</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma04/0190220a00">
������������λ����

{	FwL("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190230b02">
����Ϊ��ڣ��ش���ɣ������սʿ��
����������˵�ã��Ҳ���Ҫ���񡣡�

{	FwL("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190240b02">
���������Ρ�������������
�������ǣȣ����Ϲ���ơ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����210", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����Ȼ����Ҫ�����ұ�ֻ��������˵�ͷ�����Լ�����
�ֱܶ���̸��
�������Է����ҵĸ����鱨Ҳ��ȫû����Ȥ��


����ֻ��������Լ������ʡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma04/0190250a00">
���������Ϲ���ƣ���

{	FwL("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190260b02">
���ǵġ�
���������������ϵġ���

{	FwL("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190270b02">
���ҵĹ����У�Ҳ����<RUBY text="����">����</RUBY>��<RUBY text="����">����</RUBY>����

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190280a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������������
���Ҵ����Ʋ⣬��ν�����Ϲ���ƣ�է��֮�£�
ֻ�ǰ�������֮�˵Ĳ��Űɡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma04/0190290a00">
������˵�����ǲ���ѩ������ǣ�Ϊ��֧��
��Ͷ���ı���ߵ����
�������Ľ���û��ɡ����⹤�����
�೤���ˡ���

{	FwL("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190300b02">
���ҿɲ���Ϊ���лش���ı�Ҫ����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���ư�����¶����Ľ�У��
���ش�����֮�죬������ζ����ȫ�Ŀ϶���
����������˼�˰ɡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma04/0190310a00">
����ô���Ҽ���������ʵ������ѯ�ʡ�
����Ȼ�˽���ս����ѯ���ƶ���ͽ�͵ģ�
������Ϊ���������������кû�֮�֡���

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190320a00">
����ʹ�����ѹ��͵�ս�Ա���ͬ��
Ȼ���Ա��ӵĲ����������ģ��ѵ�
������������Ϊ�������ݵı�����
��������㣬����ô��Ϊ����

{	FwL("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190330b02">
���ҿɲ���Ϊ���лش���ı�Ҫ����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������������������ɫ���ظ��ش�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190340b02">
������������������һ��ļ�����������
��������ν�Ĳб�����û�о����Ե�
��׼�����������������

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190350b02">
�����ǵĲ����ǲб����ǲ��б���
ֻ�����Ǽ����ϵķ���ɡ���

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190360a00">
��������޶ȵ����׶�������Ϊ�����Եı�׼��
�𣿡�

{	FwL("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190370b02">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������ⲻ��ʹ�ҷ���ĳ�־�̾��
��������ֻ�ǰڳ�һ��ƽ���ı��飬����˵����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190380b02">
��Ϊ��֮����������������ҵ��츸�Ľ̵��ǣ�
Ӧ�����Ե����ء�
��Ȼ��������<RUBY text="����">����</RUBY>���޹�ϵ�ɣ���

{	FwL("cg/fw/fw���`���å�_����.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190390b02">
����˵����������Ӱ�������

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190400a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����ʮ�������ˡ�
���ҷǳ�����ˡ�

���������������
��������������塣

������˵�ǳư�ȫ�����಻Ϊ���İ���³����ѷ�˵�ΰ
ҵ������ֻ������ս�Ժͼ�����������ɣ�����������
���Ǳ�����ѡ�е��ر����壬�Ǳ���������֮�ˡ�
��������Ǻ����ģ��಻����������������

��Ȼ���������������˵ļ�ֵ�����ڣ��˴�֮������
�߽���ٹ���ľ���ɡ�
����ʮ���ź�������û����ô��ʱ��Ŀ�ԣ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma04/0190410a00">
�������ҷ�Ҳ��Ϊ��ò������ȷ��һ�¡���

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190420a00">
�����Լ����ڻر�ս���ж�����Ը��
��ȫ�����ס�һ��㶼û����
�����Ρ���������������

{	FwL("cg/fw/fw���`���å�_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190430b02">
���Ҳ���ս����
������Ӧ��˵�������������������ϵġ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������֦����Έ���
..//if_start
if(!$Kanae_Dead){

	SetFwL("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190440b02">
�����������С���
��������ֻ���ӣ���֪Ϊ�������Ҿ�������
���Ǹ����������˲����С�󰡡���

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��������������˵�����ξ��

��ԭ����ˣ���λ�����Ĳ��Ų�����ӭ����
������֪���״̬�³�Ϊץ���ҵ��㹳��������ͬ����
����һ�𱻴����������������˴ε�����


��������������˵������ʮ���뵱Ȼ�ļ�����
����ʹ�����ڴ˳ɹ����Ҽ���Ҳ�޷��������ɡ�


����������ڣǣȣѵ��Ȱ�������ʲôäĿ�Ŵӡ�
��̬��չҲ��Ԥ��֮�С�
��������ֵ�ö�ҡ���£����Ӧ��Ҳһ���ܳɹ����ߵġ�


</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190450b02">
�������������ϡ���
�����ǽ�����������˶��ѡ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}else{
..//else_start

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

.//������֦�����Έ��Ϥ�����

	SetFwL("cg/fw/fw���`���å�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190460b02">
��������
������ֻ�ǽ�������Ϸ������ѡ���

</PRE>
	SetTextEXL();
	TypeBeginTimeLI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}
..//if_end

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������

	SetFwL("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma04/0190470a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����û����˼ȥȷ������״����
����ս��֮ǰ���ܷ�����һ���ء�

�����ܹ��������ڵ�����������ֽţ������Ǳ�����
���������ϵ�״̬���ѡ������ұߵ��ֽ�Ҳ��ࡣ
�������ÿ�����䣬�������鲼�˺ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/ma04/0190480a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0190490a01">
������ֻ����һ�£�û�й�����
��������ѡ���𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190500a00">
����������еĻ���̫�Ҹ��ˡ�
�����������������������ߡ����Ͳ�������
����ֵ�ý���Ķ��󿴴�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������Ҳ�������͵Ĵ����������⡣
����Ȼ������Щ��������ֻ��˼�ǹ��ࡣ

���������̻ش�ʮ�ָɴࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="��������" src="voice/ma04/0190510a01">
������ĳЩ���ˣ�������Ϻ���˻��еĸо���
�����Ǽһ����ڿ����ҷ��ĸо�����
 ��ô������̸�������õġ���

//��������
<voice name="����" class="��������" src="voice/ma04/0190520a01">
�������ܣ����ǻ����ɱ��
����������һ�ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190530a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��������ʿ�Ļ��
��ֻ�ܵ�ͷ����ԭ����û�гַ��������


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/ma04/0190540a00">
������ͻ�ơ�
�������𣬴�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0190550a01">
����������϶�������ϸ�ʿɽ�Ļ���һ���С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190560a00">
������
�����̶ֳ��𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0190570a01">
���������̶ֳ�Ŷ��
�����ɵ��ϰɣ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����һ��Ҫ��ɵ�ʹ����
���������Һʹ�����˵��

���ڴ˴��������޷�������ġ�
����Ȼ�᲻��������ڱ��������Ԥ�е�ʱ�̣�����Ҳ
����ҪŬ����̽����������ȥ�ĵ�·���С�

��������ɨ���Χ�Ķ��Ρ�
��������ˮ��©���������͡�����ֻ��������ȥ�ķ�϶
��û�С�

�������Ǵӿ����ӳ�����·��ʮ�����˾�����
����Ȼ�����ѱ���������ô�뿪�����˲�䲻�������
�����ԣ��������ȥ�����������ٵá�

����·ֻ���ڵ���Ѱ�ҡ�
����ս���벽������Χ�����ô˻����ñ�����ǿ������
��װ�������ͷ��Ϯ�������з���Ӧ���밴���������
���С������谭���ǵļƻ���

����һ�߽�սһ���ƶ�ս�����ȴ�ʱ�����ѣ�Ȼ��ص�
����ȷ����������һ�ҵ�����ȫ��֮����ͬ���ϣ�
�������ѡ�
���ҷ���Ӧ��ô�����Ͱࡣ

������ͬ���϶�������ϸ�ʿɽ����ȣ���ɲ�֪����
�˶��١�

��Ҳ����ע�⵽���ҵľٶ��������塣
���𷢵Ŀ������˶��ˡ�

��������˫�����ֵĴ󽣣���ʮ��״���衣
��������С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 100, 0, 0, "cg/bg/bg043_���΍uɽ��_03.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);
	CreateTextureEX("�}st200", 200, -50, -464, "cg/st/resize/st���`���å�_ͨ��_�Ʒ�a_l.png");

	Move("�}����100", 500, -300, @0, null, false);

	Fade("�}����100", 300, 1000, null, true);

	Move("�}st200", 500, 0, @0, DxlAuto, false);
	Fade("�}st200", 300, 1000, null, true);

	SetFwH("cg/fw/fw���`���å�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190580b02">
����ʥ�����ַ�����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ס�����������
	#av_����������=true;

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	Delete("�}����100");
	Delete("�}st200");

	StC(1000, @0, @0,"cg/st/3d���������_����_�i��.png");
	FadeStC(0,true);
	FadeDelete("�}�ե�", 1000, true);

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="��������" src="voice/ma04/0190590a01">
�����У���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190600a00">
����Ȼô������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�����ž������ⲻ����ֻ�ǽ����ѡ�
���ƽ�Ľ�����������Ϊװ�׸��ڽ�Уȫ��

�����С����»������
������������������Ϊ����֮����ʥ���ػ�������
�ĸ���Ʒ�𡣲�̫������ԭ��ɡ�

����װ�׵��ʸ�Ӧ����Ӣ���������죬���ߴ���ڰ˴���
�����ң����Գ�֮Ϊһ�������ˡ�

�������ݻ��Ľ��У���У��ǰ������
����û����������������ӡ�

�������ѵ����Ǵ��㵥�������
��
��Ҳ���������������ĵ����ʡ�

������Ȼ�ص�������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190610b02">
�����������ǰ�����Σ�ա���
������ͽ�͵Ĺ�������

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190620b02">
��Ϊ���������飬�Ҳ����˷��Ҿ������ʿ����
��ͬ����������
�����ǵ�������Ӧ��ֻ������������Ƶ�
ս��֮�С���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���ǣȣѵ������ü������������˵�������¡�
���������ź��ص��ڰ�Χ�����ܵ�ʿ��֮�䡣

�����񱻸ж��ˡ�
����������������<RUBY text="������">����Ϣ</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="��������" src="voice/ma04/0190630a01">
������Ҫ�����𣿡�

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190640a00">
�����ǲ�Ҫ�ˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����Ϊ��������̫��������鷳��

���ӿ��������������Ͽ��������Բ��µķ�Ӧ�кα�ʾ��

���������ݵ���ǰ�����Ų�������ͣ��������

������ͬ�ҽ����ľ��룬��ʮ��ңԶ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/ma04/0190650a00">
����������

{	FwL("cg/fw/fw���������_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190660b02">
����������������ͺ��ˡ�
���������Ľ�֣��ǲ����ͷ�ͬ�����֣�
�ú����Լ���������

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190670b02">
���ú����Լ������ʳ��
�������𣿡�

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����֪Ϊ�Σ������������ʵ���

���ǣȣѵ���ͼ����Ȼ�˽⡣
����֮�����������Դ���ͼΪ���������µġ�
Ȼ���������ɹ��ˣ����������ڵĽ����

����������Ϊʲô��Ϊʲô�µ����
������ȷ�������ʵ��Ȼ����Щʤ���Ŀ�ҫ��<k>
��
�����������ġ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190680b02">
�����ԡ�
��û�л����ʳ<RUBY text="��������">ֱ�����</RUBY>���Һ�����Ŷ����

{	SoundPlay("@mbgm13",0,1000,true);
	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190690a00">
������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,750,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
��ֱ���زµ��������⡣
��Ȼ����������Ҫ��������

��Ȼ���ҵ�˫�ű������ҵ���Ը��
���˺�����ƣ��������˫�ţ�ֻ����ν�ش�ɳ����
���䣬һ����ǰ�����ˡ�

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	DrawTransition("�}��ܞ", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	CreateTextureSP("�}�ţ�100", 3100, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	DeleteStA(0,true);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0501a]
�������������ҵ��Ǳ�һ�㣬�ǣȣѵĽ�У������
��Ծ������
����������ߡ�����û�С�

</PRE>
	SetTextEXL();
	TypeBeginTimeLI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�1000", 1000, Center, -240, "cg/ev/ev122_�R��������҆��.jpg");
	FadeDelete("�}�ţ�100", 300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0501b]
��<RUBY text="������������">���Ź����Ϸ�</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("����", 5500, 0, 0, 276, 576, true);
	SetAlias("����", "����");
	Fade("����", 0, 0, null, true);
	Move("����", 0, @658, @0, null, true);
	CreateTextureSP("����/�µ�", 5500, @-572, 0, "cg/bg/bg043_���΍uɽ��_03.jpg");
	Fade("����", 0, 1000, null, true);
	CreateTextureSP("����/�}�ңӣ�", 5510, @-378, -170, "cg/st/3d�����˜�_����_�i��.png");
	Move("����/�}�ңӣ�", 600, @0, -200, DxlAuto, false);
	DrawTransition("����", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	SetFwL("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510a]
//��������
<voice name="����" class="����" src="voice/ma04/0190700a00">
����������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("����", 4500, 0, 60, 1024, 276, true);
	SetAlias("����", "����");
	CreateTextureEX("����/�µ�", 4500, @0, @0, "cg/bg/bg002_��a_03.jpg");
	CreateTextureEX("����/�}��ӣ�", 4510, -45, -105, "cg/st/3d���������_����_�i��.png");

	Fade("����/�µ�", 0, 1000, null, false);
	Fade("����/�}��ӣ�", 0, 1000, null, false);
	DrawTransition("����", 300, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", false);
	Move("����/�}��ӣ�", 600, -75, @0, DxlAuto, true);

	SetFwL("cg/fw/fw���������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510b]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190710b02">
������������������治����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
�����䲢վ�����ھ޴������ϣ���ʿ����ص������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190720b02">
��̫�����ˡ����������
���������ӵ�֮�ִ�����Ķ������
���������ϵȵ�һ������

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190730b02">
��<RUBY text="������������������������������">һ�߽��������ɴ���һ���������</RUBY>��
�����б������Ч�ʵ���ɨ�������𣿡�

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190740a00">
��������������������������
��������������ʿ��!!��

{	FwL("cg/fw/fw���������_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190750b02">
����ӹ���ɡ�
��������ʿ����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
����ȫ����
�����飬��ȫ�������ˡ�

������³����ѷ�����Ժ������ߡ�
�����Ρ����������������Ե���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190760b02">
����������ٵ�ʥ��ս����
��Ϊ����Ϊ�������Ϊ��ͬ������

//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190770b02">
��������Ϊ�˻��ֵĺ��ӡ�
������������ô����˼���𣿡�

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190780a00">
��������

{	FwL("cg/fw/fw���������_ͨ��.png");}
//�����`���åȡ�
<voice name="���`���å�" class="���`���å�" src="voice/ma04/0190790b02">
��ı��ӻ��Ļ�����Ҫ����ʿ���ö��ﰮ��
���帺��ͺ��ˡ�
���ټ��˴�����������ͣ��ֽƻ���
��ô���������˲����Ұ�ޡ���

{	FwL("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0190800a00">
��ס�֡�������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560a]
���ҵĽк���ֻ��ͽ�͡�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_�l����01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("����/�}��ӣ�", 300, @-20, @60, DxlAuto, false);
	FadeDelete("����/�}��ӣ�", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560b]
����ʿ����Ӱ��û�ھ���֮�С�
�����������Ѿ���ȥ�Ĺ��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����҆��������
	CreateSE("SE01","se����_��x_��҆��01");
	MusicStart("SE01",0,1000,0,500,null,false);
	SetFrequency("SE01", 3000, 1000, AxlAuto);

	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");
	Move("����", 300, @0, @-600, Axl1, false);
	Move("����", 300, @600, @0, Axl1, false);
	Wait(300);
	Fade("�}�ե�", 600, 1000, null, false);
	Wait(600);
	PrintGO("�ϱ���", 35000);
	CreateColorSPadd("�}�ե�", 3500, "#FFFFFF");
	CreateTextureEX("�}�ţ�2100", 2100, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	SetBlur("�}�ţ�2100", true, 3, 500, 200, false);
	CreateTextureSP("�}�ţ�1100", 1100, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Delete("��*");
	Delete("�ϱ���");
	OnSE("se����_�z_װ��06",1000);

	FadeDelete("�}�ե�", 600, false);
	Fade("�}�ţ�2100", 0, 800, null, true);
	Zoom("�}�ţ�2100", 300, 1200, 1200, DxlAuto, false);
	Wait(300);
	FadeDelete("�}�ţ�2100", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
��������
�������ľ޴�����εض������ҵĺ������쳹ҹ�ա�

�����ͬʱ���Ӻ󷽽ӽ��Ĵ��ͳ���������ֻ����һ˲
�������˼򵥵���ҵ��
������<RUBY text="��������">��Դ����</RUBY>�Ľ�����

�����ھ��޽����������һͬ��ء�
�����걸����̬����������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��������
<voice name="����" class="��������" src="voice/ma04/0190810a01">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
����Ư�׵�˼�����·����ҵ���ʶ�ռ���Ϊһ�塣
����֪������ʲô��Ҳ��֪������ʲô��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�ݳh
	CreateSE("SE01","se����_�z_�l����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ţ�1200", 1200, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	Fade("�}�ţ�1200", 600, 1000, null, true);
	Delete("�}�ţ�1100");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
�������ſ��°͡�

������ô���źá�
������ô�����źá�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSEEX("SE01","se���L_��҆��_����02_L");
	MusicStart("SE01",0,500,0,1000,null,true);
	CreateTextureSP("�}�ţ�1100", 1100, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	FadeDelete("�}�ţ�1200", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0602]
��ս����
�������ԡ�ս����

��������
����һ�Σ�ͬ�ǹ���ս���Ļ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����륤��`�����Bһ��
	SetVolume("SE*", 300, 1, null);
	OnSE("se�M��_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 25000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	StC(3000, @0,@0,"cg/st/st���B_ͨ��_˽��.png");
	FadeStC(0,true);
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 500, null, true);

	WaitKey(500);

	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}����*");
	DeleteStA(0,true);
	SetVolume("SE*", 600, 600, null);
	FadeDelete("�}��ܞ", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
�����ǣ�
���Ϳ죬

���Ϳ졪��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/ma04/0190820a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
��˼ά��ֻʣһƬ�հס�
���������κ��ǻۡ�

�����������ħ�ڡ���
��Ϊ�Ҷ��������������ͷ��βϸϸ������

��ʲô���޷�����
���񵾲���һ�㣬��Ȼ������

���ҵȴ��ź���������սᡣ
���������ģ���Ϊ���������е����˶��޷�������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 2000, 1000, null);
	CreateColorEXadd("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 2000, 1000, DxlAuto, true);

	WaitKey(1000);
	SetVolume("SE01", 1000, 0, null);
	ClearWaitAll(1000, 1000);


}

..//������ָ��
//�Υե����롡"ma04_020vs.nss"