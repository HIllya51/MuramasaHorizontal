//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_013.nss_MAIN
{

	

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
	#ev178_ѩ܇ȥ��å������`��܇�u��_c=true;
	#ev178_ѩ܇ȥ��å������`��܇�u��_d=true;
	#ev179_��܇��Ѻ����������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_014.nss";

}

scene mc03_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc03_012.nss"

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm12", 0, 1000, true);

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	CreateTexture("�}����50", 100, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");
	Move("�}����50", 216000, @0, -5150, null, false);

	CreateTextureSP("�}���}�}����С", 1000, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	Request("�}���}�}����С", Smoothing);
	Rotate("�}���}�}����С", 0, @0, @0, @55, null,true);
	Zoom("�}���}�}����С", 0, 100, 100, null, true);
	Move("�}���}�}����С", 0, @-306, @-400, null, true);
	Shake("�}���}�}����С", 216000, 1, 1, 0, 0, 1000, null, false);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,600,0,800,null,false);
	Move("�}���}�}����С", 3000, @50, @300, null, false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/0130010a00">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}��", 5000, 630, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);

	CreateTextureSP("�}��/�}������", 100, Center, InTop, "cg/bg/resize/bg204_�����ر���_01ex.jpg");
	CreateTextureSP("�}��/�}������", 100, Center, InTop, "cg/bg/resize/bg204_�����ر���_01ex.jpg");
	Zoom("�}��/�}����*", 0, 1500, 1000, null, true);

	$�k�����A=ImageVertical("�}��/�}������");
	$�k���M�z��=$�k�����A*(-1);

	CreateSCR1("@�}��/�}������","@�}��/�}������",400,@0,$�k���M�z��);

	CreateTextureSP("�}��/�}���}�}����", 1000, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	Request("�}��/�}���}�}����", Smoothing);
	Rotate("�}��/�}���}�}����", 0, @0, @0, @75, null,true);

	Zoom("�}��/�}���}�}����", 0, 1200, 1200, null, true);
	Move("�}��/�}���}�}����", 0, @256, @-400, null, true);
	Shake("�}��/�}���}�}����", 216000, 1, 3, 0, 0, 1000, null, false);

	Move("�}��/�}���}�}����", 21600, @0, @200, null, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ǡ���
����ʱ��Ĺ�����!!

�����������ƵĿ����ԣ������֮һ���������С�
����һ�죬��ǰ�������µ�;�У��赲�ҵ�<RUBY text="�գ�������">������</RUBY>��
�������������Σ����޷��ú����ص�һ�仰�������ġ�

����ʹ������һǧ�꣬��Ҳ���������ǡ�
��
��Ϊʲô�������
����Ϊ��ʲô��

���ǹ�Ȼ�ǽ�פ����ս����!?
�����ں�ѩ���һ�غϻ��<k>Ҫ��ʲô!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}��", 300, 0, 1000, Dxl2, true);
	Delete("�}��");

	Move("�}���}�}����С", 10000, @0, @100, null, false);

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/0130020b33">
��<RUBY text="Exorcism��Father's��Kick">���顡�ˡ�ɢ���񡡸�����</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å������`ͻ��
//���ɤä��`��
	CreateSE("SE01","se���L_����_��ͻ�M08");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}���}�}����С", 300, @0, @512, Axl2, true);

	Wait(1000);

	OnSE("se���L_�Ɖ�_�󱬰k01", 1000);

	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");

	Wait(10);

	CreateTextureSP("�ɤ��`��", 2000, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	Delete("�}���}�}����С");

	CreatePlainSP("�}��д", 2010);
	Zoom("�}��д", 0, 2000, 2000, null, false);

	FadeDelete("�}ɫ��", 2000, false);

	Shake("�}��д", 1000000, 2, 0, 0, 0, 1000, DxlAuto, false);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("�\Ļ��");

	Zoom("�}��д", 3000, 1200, 1200, null, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc03/0130030a00">
��ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����50", 1300, Center, Middle, "cg/ev/ev178_ѩ܇ȥ��å������`��܇�u��_c.jpg");
	Fade("�}����50", 1000, 1000, null, true);
	Fade("�ɤ��`��", 0, 600, null, true);

	FadeDelete("�}��д",1000,true);


	Delete("�\Ļ��");
	FadeDelete("�¤���",300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���š���

���ű��ƻ��ˣ�

������������!!

�������г�������ʻ�����ϵ�ʱ��
��������ʧ�ˡ���ֻʣ�����ε���ա�

������·��Ǻӡ�
��
���������г�����������С�

�������Һʹ������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc03/0130040a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����˲���������жϡ�
�����³�����<k>�ܵþȵ�ֻ���ң������<k>�ȸ�֪�����ξ
Σ�ա���<k>û���㹻��ʱ�䣬�����

���ó�ͣ�¡�<k>
��ֻ���ó�ͣ�¡���ǰ�桭��

��<RUBY text="��������������">ֻ�ܰ������г�</RUBY>��<RUBY text="����������">��������ס</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ��

	CreateColorEXadd("�ե�", 10000, "#FFFFFF");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	CreateSE("SE01","se����_�z_װ��03");

	MusicStart("SE01",0,1000,0,1250,null,false);

	Fade("�ե�", 300, 1000, null, true);

	WaitKey(1000);

//����܇���嵱���ꡣ�����`��
//���ãǣ����ƥ�`�ޥ��B���졹
//ev179_��܇��Ѻ����������.jpg
	Delete("�ɤ��`��");
	Delete("�}����*");

	CreateSE("SE00","se���L_����_��ͻ�M01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 20000, "#000000");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�ե�");

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

	PrintGO("�ϱ���", 20000);
	Wait(12);
	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�����`��", 15000, @-250, @0, "cg/ev/resize/ev179_��܇��Ѻ����������_m.jpg");
	Delete("�ϱ���");

	CreatePlainSP("�}��д", 15000);

	OnSE("se���L_�Ɖ�_�z03", 1000);
	CreateSE("SPSE01", "se�\��_��܇_���֥�`��01_L");
	MusicStart("SPSE01", 0, 1000, 0, 1000, null,true);
	CreateSE("SPSE02", "se�\��_��܇_����01_L");
	MusicStart("SPSE02", 0, 800, 0, 1000, null,true);

	SetFrequency("SPSE02", 3000, 850, null);

	CreateSE("SPSE03", "se���L_����_늓Ď��01");
	MusicStart("SPSE03", 0, 1000, 0, 1000, null,true);

//����������򡢥��㥮�Ȥ�Ŀ�����ʤ����餤�ޤǒ���
	Zoom("�}��д", 0, 2000, 2000, null, false);

	FadeDelete("�}ɫ��", 1000, false);
	Shake("�}��д", 10000000, 3, 2, 0, 0, 300, AxlDxl, false);

//���󤷤����֤��M�з���˥��饤�� �F�ڤρ�  �Ĥ��Ǥ˓e�餹������inc�Ѿ�
	Move("�}��д", 1000, @500, @0, null, true);

//��ä����������ȫò��Ҋ���롣

	CreateTextureSP("�����`��2", 14000, @0, @-180, "cg/ev/resize/ev179_��܇��Ѻ����������_l.jpg");
	CreatePlainEX("�}��д2", 14000);
	Fade("�}��д2", 0, 1000, null, false);
	Shake("�}��д2", 10000000, 1, 2, 1, 2, 1000, DxlAxl, false);

	FadeDelete("�����`��",0,false);
	FadeDelete("�}��д",1000,true);

	WaitKey(1000);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/mc03/0130050a01">
�������������İ���������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������ֻ���ڹ������н����������ڳ�ֵĸ���״̬��
���ټ������ʾ��䱾���������


�������<RUBY text="Momentum">����</RUBY>����Ϯ����
��
������������������������

������ȫ�޷�֧�����ֶ�����
����ֻ����ǿ���Լ���������ѹ��

���ҵ���֫��Ϊ��<RUBY text="����">֧��</RUBY>��ֻҪ���в�����
�ҵ�����һ˲��ͻ���ʧ�ڳ���֮�¡�
��������װ��Ҳ�޷���ס�ҵ�������


���ܵ�΢���ĵֿ�֮�󣬸��ʵĳ��ֺ�<RUBY text="Rail">����</RUBY>֮�������
Ħ���������˴̶���������
����������˵����������ֻ������ʳ�޿�������󷢳�
��ĥ������

����Ȼ��Ʒ�����ܶ�νӽ������Ŀֲ������һ����޷�
ϰ�ߡ������Ҽ���ʧȥ���ֽ��ϵ�������
����ȫ���Ը��س����š����Ҳ����䡣���˾�ȫ������
�ˡ�

���������ң��������еĶ��ˡ�
��
��������ԡ��ֽ�������ֻ�����������ֿ�����ǿ���
������

������˫�Ų�ͣ����󻬶���
�����Ĳ����˿����������ָ��¡�

���޷�վס��
���г�ͣ���������޷���ֹ��

���š������������ڵĵط����ж�Զ��
���һ��ж�����ء�

�������г����䣬���ж�Զ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/mc03/0130060a01">
�����������!!��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0130070a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	Delete("�}��д2");
//CG���󤫺Τ��Ǳ��줿���֤��ʾ�� inc�Ѿ�
	FadeDelete(�����`��2,100,false);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPmul("���`��", 180, Center, Middle, "cg/ev/ev178_ѩ܇ȥ��å������`��܇�u��_c.jpg");
	CreateTextureEX("���`����", 190, Center, Middle, "cg/ev/ev178_ѩ܇ȥ��å������`��܇�u��_c.jpg");
	Request("���`��*", Smoothing);
	FadeDelete("�}ɫ��", 500, false);
	Zoom("���`����", 500, 1500, 1500, Dxl2, false);
	Fade("���`����", 250, 1000, null, true);
	FadeDelete("���`��", 300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���Ҹе������ĺ�ëֱ���ˡ�
������<RUBY text="����">�հ�</RUBY>��Ԥ�С�

������ȥ��
������ȥ��

�����С�
�����������Ҳ�����

���Ҳ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå�������֦�ȹ򤯾���


	EfRecoIn1(18000,600);

	CreateTextureSP("���ٽ}10", 200, Center, Middle, "cg/ev/ev171_����֦�˹򤯾���.jpg");
	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��
����������������������ԭ�¡�
��������������������Ҫɱ�㡣��

��
�������������������Բ���ԭ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	WaitKey(1000);

	EfRecoOut1(300);


	Delete("���ٽ}*");

	EfRecoOut2(600,true);
	

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ң�<k>
��
������ʧȥ�Ǹ�<RUBY text="��">Ů��</RUBY>��������!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�ե�å����", 15000, "WHITE");
	OnSE("se�M��_�ե�å���Хå�01",1000);

//�������`�������������֥�`��
	CreateSE("�֥�`��", "se�\��_��܇_���֥�`��01_L");
	MusicStart("�֥�`��", 0, 700, 0, 1000, null,true);

	SetFrequency("SPSE02", 3000, 650, null);

	CreateTextureEX("�����`��", 15000, @-250, @0, "cg/ev/resize/ev179_��܇��Ѻ����������_m.jpg");

	Fade("�����`��", 0, 1000, null, true);

	CreatePlainEX("�}��д", 15000);
	Fade("�}��д", 0, 1000, null, true);

	Shake("�}��д", 10000000, 1, 2, 1, 2, 300, AxlDxl, false);
	Zoom("�}��д", 0, 2000, 2000, null, false);


	Move("�}��д", 500, @500, @0, null, true);

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");


//Ѻ��
//SE�ɤ���

	CreateSE("Ź��", "se���L_����_�z_���02");
	MusicStart("Ź��", 0, 1000, 0, 1000, null,false);

	CreateTextureSPadd("���1", 19000, @0, @0, "cg/ef/ef042_���ô��.jpg");
	Fade("���1", 1000, 0, null, false);
	Zoom("���1", 0, 1200, 1200, null, false);
	Shake("���1", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	Rotate("���1", 0, @180, @0, @180, null, true);


	Move("�}��д", 3000, @-50, @0, null, true);

//Ѻ�����

	Move("�}��д", 300, @50, @0, null, true);

//�ޤ�Ѻ��
//SE�ɤ���

	CreateSE("Ź��", "se���L_����_�z_���02");
	MusicStart("Ź��", 0, 1000, 0, 1000, null,false);

	CreateTextureSPadd("���1", 19000, @0, @0, "cg/ef/ef042_���ô��.jpg");
	Fade("���1", 1000, 0, null, false);
	Zoom("���1", 0, 1200, 1200, null, false);
	Rotate("���1", 0, @180, @0, @180, null, true);

	Shake("���1", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	Move("�}��д", 3000, @-100, @0, null, true);
//Ѻ�����

	Move("�}��д", 300, @100, @0, null, true);

//�ޤ��ޤ�Ѻ��
//SE�ɤ���

	CreateSE("Ź��", "se���L_����_�z_���02");
	MusicStart("Ź��", 0, 1000, 0, 1000, null,false);

	CreateTextureSPadd("���1", 19000, @0, @0, "cg/ef/ef042_���ô��.jpg");
	Fade("���1", 1000, 0, null, false);
	Rotate("���1", 0, @180, @0, @180, null, true);

	Zoom("���1", 0, 1200, 1200, null, false);

	Shake("���1", 500, 50, 0, 0, 0, 1000, Dxl3, false);


	Move("�}��д", 3000, @-150, @0, null, true);

//Ѻ�����


	Move("�}��д", 300, @50, @0, null, true);


//�������K�ˤ����������`�ȤȤäƤ�����һ�ģ���FLASH��
//������ã��äƸФ���SE���֥�`���ե��`�ɥ�����

	Move("�}��д", 300, @-300, @0, null, false);

	CreateColorEXadd("�ե�å����", 25000, "WHITE");
	Fade("�ե�å����",300,1000,null,true);

	OnSE("se����_��x_�k��02", 1000);

	CreateTextureEX("�������å�", 18000, @0, @0, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	Request("�������å�", Smoothing);

	Fade("�ե�å����",300,0,null,true);

	Fade("�������å�", 500, 1000, null, false);
	Zoom("�������å�", 1000, 1500, 1500, null, false);

	Move("�}��д", 600, @300, @0, null, false);

	Wait(800);

	CreateWindow("�}��", 19000, 0, 0, 1024, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	$SYSTEM_effect_rain_dencity = 32;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}��/�}������", 19990, Center, Middle, 288, 512, "Rain");
	SetAlias("�}��/�}������","�}��/�}������");
	Fade("�}��/�}������", 0, 500, null, true);

	Rotate("�}��/�}������", 0, @0, @0, @-90, null,true);
	Zoom("�}��/�}������", 0, 20000, 10000, null, true);
	Move("�}��/�}������", 0, @400, @0, null, true);

	CreateColorSP("�}��/�}ɫ냇���\��", 19020, "#000000");
	DrawTransition("�}��/�}ɫ냇���\��", 0, 0, 80, 1000, null, "cg/data/slide_05_00_1.png", true);

	CreateColorSPmul("�}��/�}ɫ냇�ݳ�", 19001, "#CC0000");
	CreateTextureEX("�}��/�}������", 19000, 0, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
	CreateTextureEX("�}��/�}������", 19000, 0, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
	$������A=ImageHorizon("�}��/�}������")-1024;
	$����M�z=$������A*(-1);
	Move("�}��/�}����*", 0, $����M�z, @0, null, true);

	Fade("�}��/�}����*", 1, 1000, null, true);
	CreateSCR1("@�}��/�}������","@�}��/�}������",400,0,@0);

	CreateTextureSP("�}��/�}�ݾ���", 19100, Center, Middle, "cg/ev/ev996_�������åȥ���.png");
	$������λ��=ImageHorizon("�}��/�}�ݾ���");
	$�������ƄӾ��x=$������λ��*(-1);
	Move("�}��/�}�ݾ���", 0, $������λ��, @0, null, true);

	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	CreateVOICE("����","mb04/025vs0390a00");
	MusicStart("����",0,1000,0,1000,null,false);
	Move("�}��/�}�ݾ���", 400, @$�������ƄӾ��x, @0, Dxl2, false);

	Wait(300);

	Move("�}��/�}�ݾ���", 2000, 0, @0, null, false);

	SetVolume("SPSE*", 1000, 0, null);

	CreateColorEXadd("�ե�å���ף�", 20000, "WHITE");
	Fade("�ե�å���ף�",1500,1000,null,true);

	WaitKey(1000);

//���é`
	PrintGO("�ϱ���", 30000);

	Wait(10);

	CreateColorSPadd("�ե�å���ף�", 19000, "WHITE");
	CreateColorSP("�}ɫ�\", 10, "#000000");

	Delete("���`��*");
	Delete("���*");
	Delete("�ե�å����");
	Delete("�����`��");
	Delete("�������å�"); 
	SetVolume("�֥�`��", 0, 0, null);
	SetVolume("@mbgm*", 0, 0, null);

	WaitKey(2000);

	FadeDelete("�ϱ���", 2000, true);
	FadeDelete("�ե�å���ף�", 2000, true);

	OnSE("se����_��x_���A����", 1000);
	CreateSE("SE01","se���L_�Ɖ�_���k06");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(5000);

	ClearWaitAll(2000, 1000);

//�ز���ɰ椬������ԇ����� inc�Ѿ�
/*

//�Τ����ѥ��󥳤��ݳ��ߤ����ˤʤäƤ��ޤä� inc�Ѿ�	

	CreateWindow("������ɥ���", 1500, 0, 0, 1024, 288, false);
	CreateWindow("������ɥ���", 1500, 0, 288, 1024, 576, false);

//ֹ��������������
	CreateTextureSP("������ɥ���/�}����50", 1500, Center, Middle, "cg/ev/ev179_��܇��Ѻ����������.jpg");
//�ȤäƤ���K��ꡡ������
	CreateTextureSP("������ɥ���/�}����50", 1500, Center, Middle, "cg/ev/ev152_Ҋ�¤��y�Ǻ�_a.jpg");

	Zoom("������ɥ���/�}����50", 0, 2000, 2000, null, true);
	Move("������ɥ���/�}����50", 3000, @500, @0, null, false);

	Zoom("������ɥ���/�}����50", 3000, 2000, 2000, null, true);

	CreateColorEX("�ۥ磻�ȥ�����", 5000, "WHITE");
	Fade("�ۥ磻�ȥ�����", 1000, 1000, null, true);

//WaitKey(3000);
	Delete("������ɥ���");
	Delete("������ɥ���");
	Delete("������ɥ���/�}����50");
	Delete("������ɥ���/�}����50");
	Delete("���`��");
	SetVolume("�֥�`��", 1000, 0, null);
	FadeDelete("���`����",1000,true);

//���Ǥ�ֹ�ޤ�ޤ���Ǥ�����
//���ãǲ�֣����������܇���ɤܩ`�󡣥ե��`�ɥ����ȡ�
	OnSE("se���L_�Ɖ�_�z03", 1000);
	CreateTextureSP("�ɤܤ�", 180, Center, Middle, "cg/ev/ev178_ѩ܇ȥ��å������`��܇�u��_d.jpg");

	FadeDelete("�ۥ磻�ȥ�����",300,true);
	WaitKey(2000);

*/

}

..//������ָ��
//�Υե����롡"mc03_014.nss"