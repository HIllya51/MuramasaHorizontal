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

scene mb03_022.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb03_022.nss","FlyMoving",true);
	Conquest("nss/mb03_022.nss","FlyMoving2",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg001_��a_02=true;
	#bg043_���΍uɽ��_02=true;
	#bg002_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_001.nss";

}

scene mb03_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_021.nss"


	PrintBG("�ϱ���", 30000);

//�����ߣ��ز��������椨
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureEX("�}���}", 1000, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Move("�}���}", 0, @-586, @120, null, true);
	Zoom("�}���}", 0, 200, 200, null, true);
	SetBlur("�}���}", true, 3, 200, 70, false);

	CreateTextureSP("�}���}��", 1000, Center, Middle, "cg/st/3d�y�Ǻ�_����_ͨ��2.png");
//	Move("�}���}��", 0, @-586, @120, null, true);
//	Zoom("�}���}��", 0, 200, 200, null, true);
	SetBlur("�}���}��", true, 3, 200, 70, false);

$��`�ץ�`�֥ʥå��� = "@�}���}";
$��`�ץ�`�֥����� = 40000;

	OnBG(100,"bg001_��a_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se����_����_���S03");

	Delete("�ϱ���");

	FadeDelete("�}��ܞ", 600, false);
	SoundPlay("@mbgm10",0,1000,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}���}", 300, 1000, null, false);
	Move("�}���}��", 1000, @106, @0, Dxl2, false);
	Move("�}���}", 1000, @296, @-120, Dxl2, true);


	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);

	SetFwR("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0220010a02">
�������ɡ������Ǻ�!!��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220020a14">
��������


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0220030a02">
����ɥ���ֵ��˲���������
������ɱ����һ��Ҳ��������Щ�ʡ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0220040a02">
���Ʋ������������̫���ˡ�
�����񣬸����޷�����������


</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݳ�ָʾ
//��������ӛһ��̨�~���ʾ���롣�ܥ�������;�Ф�
//������å����줿���Ϥϼ����ˣ��ء�����ʤ��ä�
//����Ϥϥܥ�������ֹ��Ƥ�롹�ޤ��������줿�r
//����Ǐ��ƵĤˣ��ء�
//������һ��̨�~������������ʾ�����ޤޡ������Ϥ�
//���Τι�̨�~���ե���ȣ���ܥå������ؤͤ�

	SetFwR("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0019]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0220050a02">
�����ǣ���ô���ܼ�������������Ϊ!!
���Һ����ڣ��������ֹ�㡪������
{


	CreatePlainSP("�}��д", 30000);
	$�Еr�g=RemainTime("@text0019");
	WaitKey($�Еr�g);

	SetVolume("@mbgm*", 500, 0, null);
	SetVolume("@text0019", 500, 0, null);

	CreateColorEX("�}ɫ100", 30200, "BLACK");
	Zoom("�}ɫ100", 0, 500, 1000, null, true);

	Fade("�}ɫ100", 0, 700, null, true);

	CreateVOICE("��������","mb03/0220060a14");
	MusicStart("��������",0,1000,0,1000,null,false);

	LockVideo(true);


	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֣�",30411,Center,Middle,auto,auto,"�����������䤫�ޤ�����");
	Rotate("�}���֣�", 0, @0, @0, @90, null,true);
	Request("�}���֣�",NoLog);
	Move("�}���֣�", 0, @150, @0, null, false);

	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֣�",30411,Center,Middle,auto,auto,"�����jȮ��������������");
	Rotate("�}���֣�", 0, @0, @0, @90, null,true);
	Request("�}���֣�",NoLog);
	Move("�}���֣�", 0, @100, @0, null, false);

	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֣�",30411,Center,Middle,auto,auto,"����������������������");
	Rotate("�}���֣�", 0, @0, @0, @90, null,true);
	Request("�}���֣�",NoLog);
	Move("�}���֣�", 0, @50, @0, null, false);

	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֣�",30411,Center,Middle,auto,auto,"����������������������");
	Rotate("�}���֣�", 0, @0, @0, @90, null,true);
	Request("�}���֣�",NoLog);
	Move("�}���֣�", 0, @0, @0, null, false);

	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֣�",30411,Center,Middle,auto,auto,"����������������������");
	Rotate("�}���֣�", 0, @0, @0, @90, null,true);
	Request("�}���֣�",NoLog);
	Move("�}���֣�", 0, @-50, @0, null, false);

	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֣�",30411,Center,Middle,auto,auto,"����������������������");
	Rotate("�}���֣�", 0, @0, @0, @90, null,true);
	Request("�}���֣�",NoLog);
	Move("�}���֣�", 0, @-100, @0, null, false);

	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֣�",30411,Center,Middle,auto,auto,"���������������åå�!!��");
	Rotate("�}���֣�", 0, @0, @0, @90, null,true);
	Request("�}���֣�",NoLog);
	Move("�}���֣�", 0, @-150, @20, null, false);



	SetBacklog("���������µ��������ְ�����������������������������������������������������������������������������������������������������������!!!!��", "Voice/mb03/0220060a14", ��);


	LockVideo(false);


	WaitKey(4500);
}
</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}����*");
	Delete("�}��д");
	Delete("�}ɫ100");

/*



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220060a14">
���������µ��������ְ�
����������������������
����������������������
����������������������
����������������������
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/
//���󱬰k���Υ����Ů���Υ��㥫�_�ۡ�
//�����Ɖ����ʤ��܇�����夬������ͱ������ޤ�����
//�����ӥ�٥�ǡ�
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se���L_�Ɖ�_�󱬰k01",1000);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);

	WaitKey(2000);

	CreateColorEX("�}ɫ�\", 5100, "#000000");
	Fade("�}ɫ�\", 3000, 1000, null, true);
	WaitPlay("SE*", null);

	ClearWaitAll(0, 2000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg043_���΍uɽ��_02.jpg");
	CreateSE("SEL01","se��Ȼ_�L_��Ұ_L");
	FadeBG(0,true);
	Delete("�ϱ���");

	MusicStart("SEL01",0,1000,0,850,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������Һ���ʧȥ��֪����
�������ǡ�������֮�䡣

�������ڼ䣬������ˡ�

�����ȣ���ȫ��������
����ȫʹ���Ͼ��������ڵ����ϥ�Ǹ����޷�ֱ����

���Ĵ�����һ������Ӱ��
��������ҵ���˼������������̽����ܡ���<k>
{//���ӣţ��ԥԥԡ��ź���
	CreateSE("SE01","se����_���å��ԥå�_̽��01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
�ҵ��ˡ���������ƫ����Լ��ǧ�׵ĵط���

��<RUBY text="������">��ǧ��</RUBY>��
��Ҳ����˵���㱻��������ô���ľ��롣

������̽���������������ġ�
������Щ����˼�顣�����źţ����������ͻ�󷵻ز�
�����źţ��ɴ�����������״�̽�⣬��Ϊ�������ϰ�
����࣬�������޷����ӻ��ܵġ�

��Ȼ�������ȴʵ���ˡ�
����ʵ�ϣ�Ҳû��ʲô����˼�顣�����ڵ����ϣ�
�����<RUBY text="��������">����ƽԭ</RUBY>�������룬�ź�̽��Ҳ��
�������ӻ��ܡ����˶��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɰĮ״�B��bg043�����ã�

	CreateMovie("���ӻ�", 1999, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 4000, null, true);
	Request("���ӻ�", AddRender);
	Move("���ӻ�", 0, @0, @-100, null, true);
	Rotate("���ӻ�", 0, @0, @180, @0, null,true);
	FadeDelete("�}��ܞ", 2000, true);

	Wait(1000);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb03/0220070a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);
	StC(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	Rotate("@StC*", 0, @0, @180, @0, null,true);
	Request("@StC*", Smoothing);
	FadeStC(500,true);

	Wait(500);
	SoundPlay("@mbgm14",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ͷ����������У�Ψ�����Ǻ�һ��������
������һ˲�䣬��������������ʲô���˿��Ѻ��޺�
������ȭ���ǽ��ߣ����̫��������������޺ۼ���
�Ǿ��޴�֪���ˡ�

������Ҳ��ʲô��û���������ԲŻ���ޱ䶯��������
����������Ȼ���¶��ѡ�
����Ҳ��ֻ�����ǡ���<k><RUBY text="����������">�����˶���</RUBY>
�ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb03/0220080a00">
��������������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��Ȼ������䶯�벻�����������С�
�����ǺŴ˿̣����������ҡ�

������ͫ�Ǵ�δ�й��ı��䡣
��Ȼ��ͬʱҲ�����Ŵ�δ�й������ȡ�

���е�ķ�ŭ����ȵ�ʧ����
���������躮�䶳��ĸ�����С�
��
��������ħ��<RUBY text="��������">����ʧ��</RUBY>�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220090a14">
�����ġ�
�����ġ�
�����ġ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0220100a14">
�����Ȼ��ѡ���ӱܣ���ƭ�Լ���������ԸΥ
Ҳ���и��ȡ�
��������ĸ�׵Ľ̻塪���Ǿ�Ϸ�ԣ�Ҳ������
�����ˣ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0220110a14">
�������������ĵ������Ǿ��������������
��·����һ��ҲǷȱ��
��ֻ��һ����������ǳ�����ֹ�������ѣ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0220120a14">
��û�뵽�����Ȼ������Ȼ��
��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������ŭ���Դǻ������У������ҵ����š��̵ú��
�������ŵ���Ѫ����ζ�������ʹ��
����֪��Ϊʲô����Ϊʲô�����͵�����ز���������
������ɱ¾��ħ�Ĵ���ʴʶ��ѡ�

��һ�����ҵĺ�����������ȥ�޹��ߵ�����������Խ��
������֮�������Ĵ��������䡣
����ȥ�ģ�ֻ������λ��˭����ֿ׷��Ϊ������������
���˶���������Ů���϶��ġ����ߡ�

������ʲô����
����ʲô�������˳��������أ�

���������������������ǡ�
��
��������Ϊ�������ĳ��������������е�<RUBY text="����">����</RUBY>��
�����ҲŻ�������ض�ҡ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220130a14">
�����������㾿�������ʲô��
���ѵ�����Ϊ���Ǹ�С�������־��������𣿡�
ƾʲô�����϶�����Ϊֻ��Ҫɱһ���ˣ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0220140a14">
���ѵ�˵ɱһ˫��������ֻɱһ�˾���������
�𣿡�


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220150a00">
�����������ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ǿ��Ť����Ӳ����򦣬���������Ļ��
����������ϸм��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb03/0220160a00">
���������޹ء�
��������Ϊ���Բ�ɱ����֮�ˡ���ֻҪ��һ��һ
��ս���������Ҳ���ô��������������Ȼ�ġ���


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220170a14">
���ߡ�
����������֮�ˣ�ɱ��Ҳ�޷�����{WaitKey(5000);}���ԡ�
����������ȷ���һ�¡�����


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220180a14">
����������֮�ˣ�
��<RUBY text="��������">����ɱ��</RUBY>Ҳ�޷������������˼�𣿡�


{	FwR("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220190a00">
��������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220200a00">
���е�����޷�ԭ�¡�
���е�����ȷʵ��������


//��������
<voice name="����" class="����" src="voice/mb03/0220210a00">
�����У���Щ����Ϊӵ��ǿ�������������
��˾��Ҳ�޷��Ʋá������������ޣ����Ǻţ��㡣
һ���Ѵ�����Щ��������֮����Ϊ�Լ���ʹ������


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220220a00">
���Ҳ������������¡�����ʲô����


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220230a14">
��ԭ����ˣ�������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����Ǻ�¶�ǵ���ʾ����Ц����ɫ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220240a14">
����������Ҳ����<RUBY text="����">��ȷ</RUBY>�İɡ�
�����Ǽ�����ˣ�������Щ��Ϊ����ƾʲô��
���Գ������أ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220250a00">
��ʲô��������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220260a14">
��û�����ֵ���ɡ�
������˵����ʲô������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220270a14">
��<RUBY text="������������������">��ȷ��ɱ�˾�������</RUBY>�����𣿡�


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220280a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���������Զԡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220290a14">
����˵�����ˡ�
��ɱ�˾���ɱ�ˡ�û�����𡣡�


//���⡿
<voice name="��" class="��" src="voice/mb03/0220300a14">
������������֣�ͬ��ͬ�ʡ�
������������ʤ����ɱ¾����ֻ������������
���ѣ���������Ҫ�������͡���


//���⡿
<voice name="��" class="��" src="voice/mb03/0220310a14">
�����������
���ⲻ���������ĵģ�������������������
������ɱ�˻��ǲ�����ɱ�ˣ���ûʲô���𡣡�


//���⡿
<voice name="��" class="��" src="voice/mb03/0220320a14">
���ʹӻٻ�����ʹ���ս���һ����ԣ����߼�
����һ��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������ǰ�Ŀ������ӣ���ֱû�в������ء�
���޴����ӡ�������Ϊ�����ס������Ǻ����Խ�Ϊ����

�����������Ҳ������ͬ��
�����������һ�У��͵��ڡ�����������ȷ�ŵĵ���
�Ǵ���ġ���<k>���⡪��<k>������λ��Ů����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mb03/0220330a00">
��������������
����������������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220340a00">
�������ȥ��ֻ�Ǹ���֮�˵Ļ�����
����������ɱ������ɥ�����ˡ�ֻҪ�ܹ���ֹ��
����Ϊ�������С�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����塣�ұ����������ʡ�
��Ȼ��ȴû��˵���ڣ�������Ϊ���Է��Ļ���Ĩɱ����
����������Ϊ���Լ����������Լ��Ļ��ء�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220350a14">
������˵ʲô��
�������Ķ������ߡ��û�Ķ���ǿ�ߡ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0220360a14">
�������Ͳ����ڲ�����ȴ���˵��ˡ�
�������������ĵ��У�
�Ǿ��ǰܸ��������ľ�������


//���⡿
<voice name="��" class="��" src="voice/mb03/0220370a14">
���������ƻ��Ƕ�������������
û��ʲô��������ġ���


{	FwR("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220380a00">
�����ԡ�����
��������ֻ����ЩΨ�����ſ��Ʋõ���񡣡�


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220390a00">
����������������Ʋ�����Щ��񣬾ͻ���ͬ
����֮��һ����ɱ��
����Ϊ�ƶ���ֵĽ��ɡ�����


//��������
<voice name="����" class="����" src="voice/mb03/0220400a00">
���ң�������������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220410a14">
��������
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����������ɫ������ʧ����Ц��
���·���˵�Լ�����������ŭ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220420a14">
����������ֱ�������ͯ��
�����������������������������վ������޷�
����𡣡�


//���⡿
<voice name="��" class="��" src="voice/mb03/0220430a14">
��<RUBY text="��������">�ƶ����</RUBY>��
���Դ��������������ĸ��֣�
�㱧�е�ȫ����⡭����


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220440a00">
��������⡭������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/0220450a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����ֻ�ǡ���������ѡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220460a14">
���ǲ�������
���ƶ���֣���<RUBY text="����������">��������ʵ</RUBY>����


//���⡿
<voice name="��" class="��" src="voice/mb03/0220470a14">
������ν��ģ����ʡ���
������ֻ�ǽ����������������֮�¡���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220480a00">
��������ʲô������˼����


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220490a14">
��������㣬������Ҳ��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����Ǻ������顣
�����Ǻ�̧ͷ���죬�ƺ�Ҫ��͸��ʣ������ٴΣ�
����������Ͷ�����ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220500a14">
�����Ǿ�һ�㣬��Ҫ�����㡣
�����ڣ�<RUBY text="����������">����������</RUBY>��ʲô����


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220510a14">
������С�������־������壿
�����԰ɡ�����


//���⡿
<voice name="��" class="��" src="voice/mb03/0220520a14">
����������ս��������ɱ¾��
�������ǰ��ʲô���𡣡�����������
��������ǡ�����


//���⡿
<voice name="��" class="��" src="voice/mb03/0220530a14">
����������ǣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���������������ǰ���
��
�������׵ġ���ʵ�������׵ġ�

��ֻ����һ�㣬����ȫ�޷���⡣
����Ϊ�������Ϳ��Բ�ɱ���ˣ����Լ���˼��ͣ������
���뷨��������ȥ���ӵ�һ���¡�

���ն����������۵㡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220540a14">
������<RUBY text="������������">ɱ�˵Ĳ�����</RUBY>��
��<RUBY text="��������������">������ɱ�˵���</RUBY>�Ƿ蹷��������㲻ͬ������


//���⡿
<voice name="��" class="��" src="voice/mb03/0220550a14">
���㽫ɱ����Ϊ����ͬʱ��������������
���壬�Ƹ����Ǹ�СѾͷ����


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220560a14">
����֪�߳ܣ�����!!��


{	FwR("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0220570a00">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�������ǵġ�
������������

�����ڵ��ң���ɱ�˵��������Ƹ������һ����
��������������������ĵ�ĳ�����䣬������Ա��İ�
�ġ���

�������޿ɾ�ҩ����֪�ܵ�������Ϊ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//���⡿
<voice name="��" class="��" src="voice/mb03/0220580a14">
�������������ġ�
����ª��ƫ����֮�����Ѿ�̫Զ�ˡ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0220590a14">
��η�������������������
�����Ҿ�Ȼ��ͼ�������˵������̰ͼ����ʤ
���Ķ��ݡ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0220600a14">
��������û�취�ˡ�
�����ް취����


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220610a14">
��̫ʧ�ܣ�
������Ľ̵�����һ��ʧ�ܣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš��褤�Ϥ���
	CreateSE("SE01","se����_����_���S01");
	OnBG(3000,"bg002_��a_02.jpg");
	Fade("���ӻ�", 1000, 0, null, false);
	FadeBG(1000,true);
	StL(4000, @0, @60,"cg/st/3d�y�Ǻ�_����_ͨ��b.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @0, @-60, DxlAuto, false);
	FadeStL(300,true);

	Delete("���ӻ�");

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mb03/0220620a00">
���������Ǻţ���


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0220630a14">
��������̫�������ˡ�
�������չ˵��㣬����û�м��Ŵ��������
������ԸΥ����


//���⡿
<voice name="��" class="��" src="voice/mb03/0220640a14">
��˭���뵽����ᷢչ���ˡ�
������������������ԥ����


//���⡿
<voice name="��" class="��" src="voice/mb03/0220650a14">
���㿴���ˣ�������
�����⽫��ȫ���´����������


//���⡿
<voice name="��" class="��" src="voice/mb03/0220660a14">
���������������ȴһ��α�ε��������ģ�
���ú���������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���w��ȥ��
	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	CreateColorEX("�}��Ļ", 15000, "BLACK");
	Fade("�}ɫ��", 200, 1000, null, true);
	DeleteStA(0,true);

	WaitKey(100);

	FadeDelete("�}ɫ��", 200, false);

	CreateTextureSP("�}����100", 3100, -100, Middle, "cg/st/3d�y�Ǻ�_�T��_ͨ��2.png");
	SetBlur("�}����100", true, 4, 300, 20, false);

	EffectZoomadd(10000, 1000, 500, "cg/ef/ef034_����AȾ.jpg", false);

	Zoom("�}����100", 500, 10, 10, Axl2, false);
	Move("�}����100", 200, @500, @-100, Dxl2, true);

	FadeDelete("�}����100", 500, false);
	Move("�}����100", 300, @-1000, @-200, Axl2, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���ۿ��Ż��ɰ��������ǣ�ħ��֮��׷����ĺɫ��ȥ��
�����޷�׷�ϡ�

��Ҳ�޷��������ֱ�Ҳ������չ��
���ѳ���Ƭ����꣬��һ˿����Ҳ�޷��������֫��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��Ļ", 1500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0325]
����ֻ��Ŀ������ɫ�ı�Ӱ��
��
��
���������翪ʼ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���åѩ`����

//�����åȥ���ݤ�����
//��������ݳ�����������

/*
	ClearWaitAll(2000, 3000);

	CreateSE("SE01","se���L_����_���nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}����", 1000, Center, Middle, "cg/sys/Telop/lg_����.jpg");
	CreateColorSP("�}ɫ�\��", 100, "#000000");

	Wait(100);

	FadeDelete("�}ɫ��", 1000, true);

	WaitKey(2000);

	ClearWaitAll(3000, 3000);
*/


	ClearWaitAll(500, 500);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,1);

	ClearWaitAll(3000, 2000);

//������������������������������������������������

}

..//������ָ��
//�Υե����롡"mb04_001.nss"


function FlyMoving()
{

$t = $��`�ץ�`�֥�����;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$��`�ץ�`�֥ʥå���", $t, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function FlyMoving2()
{

$t2 = $��`�ץ�`�֥����ࣲ;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$��`�ץ�`�֥ʥå�����", $t2, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}
