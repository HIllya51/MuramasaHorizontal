//<continuation number="130">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_011vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_011vs.nss","DenziBladeChargeEX",true);
	Conquest("nss/mb04_011vs.nss","DenziBladeChargeSet",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#ev901_�y�Ǻ�����ʧ��С����_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_012vs.nss";

}

scene mb04_011vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_010vs.nss"


//���y�Ǻ�
	SoundPlay("@mbgm11",0,1000,true);
	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_���ϕN01");
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}���y�Ǻ�", 17000, Center, -1300, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	CreateTextureEX("�}���y�Ǻŏr", 17010, 0, -480, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_al.jpg");
	Request("�}���y�Ǻ�*", Smoothing);
	Rotate("�}���y�Ǻŏr", 0, @0, @180, @0, null,true);
	Zoom("�}���y�Ǻ�", 0, 3000, 3000, null, true);
	Rotate("�}���y�Ǻ�", 0, @180, @0, @0, null,true);
	SetBlur("�}���y�Ǻ�", true, 1, 500, 50, false);
	Delete("�ϱ���");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}���y�Ǻ�", 150, 1000, 1000, null, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_0", true);
	Fade("�}���y�Ǻŏr", 2000, 600, Axl2, false);
	Move("�}���y�Ǻŏr", 3000, -300, -480, DxlAuto, false);
	Move("�}���y�Ǻ�", 3000, @0, @200, DxlAuto, false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0010a14">
�����ɡ���

//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0020a14">
�����ɡ�����������

//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0030a14">
��ֻ��һ���ˡ�
��һ��֮ң������

//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0040a14">
������ܡ������������ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������һ����

��û������ֻ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0050a14">
�������ô����
������������һ���Ĳ���أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������

������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0060a14">
���Ѿ��޼ƿ�ʩ����
������Ϊֹ���𣿾�������

//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0070a14">
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ĝʂ�
	PrintGO("�ϱ���", 25000);
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateTextureSPadd("�}���y�Ǻ���", 17100, -300, -480, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_al.jpg");
	CreateTextureSP("�}���y�Ǻ�", 17000, -300, -480, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_al.jpg");
	Request("�}���y�Ǻ�*", Smoothing);
	Rotate("�}���y�Ǻ�*", 0, @0, @180, @0, null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}���y�Ǻ���", 0, 1200, 1200, null, false);
	Zoom("�}���y�Ǻ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}���y�Ǻ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}���y�Ǻ���", 200, false);

	FadeDelete("�ϱ���", 100, true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0080a14">
����һ�����Խ�����
������ں޵�׹�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������¡��쥤�ǥ��Х�
	PrintGO("�ϱ���", 25000);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateTextureSP("�}���y�Ǻ�", 17000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_b.jpg");
	Request("�}���y�Ǻ�", Smoothing);
	Rotate("�}���y�Ǻ�", 0, @0, @180, @0, null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�ϱ���", 1000, true);

//�����礬��ֹ���r�g��ֹ�ޤä��Ф�����Υ���
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("�}ɫ��", 18000, "#FFFFFF");
	Wait(100);
	FadeDelete("�}ɫ��", 2000, true);

	CreatePlainSP("�}��д", 18000);
	SetTone("�}��д", Monochrome);
	DrawTransition("�}��д", 3000, 0, 1000, 100, Dxl2, "cg/data/circle_03_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������ǡ�
������һ˲�䡣

���ҵ���ʶ���׵��ͺ��ˡ�
����һ�ж�����֮���Ҹ����ŵ��˺�<RUBY text="������">���Լ�</RUBY>��

�����������ʹ�������ı�ɱ����������׹�µ�С���ǡ�
���Ҳ�δ�о��������ĵ�������һ���ҿ��Զ϶���

��Ȼ����֫ȴ�ƶ��ˡ�
��Ѹ����Ӧ���ŵ��ˡ�

���Ҳ������ԡ�
��Ҳ��ֻ��׷Ѱ���������ٶ�������������
����<RUBY text="��������">��������</RUBY>���ѡ�

��Ҳ����ֻ��������
��
�������ɣ��Ҳ���֪����

��������ô˵����ʱ��ȷʵ������<RUBY text="��������">��˷�Ӧ</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늴Œi���ʂ䡣�ʤ����
	PrintGO("�ϱ���", 30000);
	CreateSE("SEL01","se����_늓�_���02");
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureEXadd("�ץ�}��", 17020, InRight, -650, "cg/ev/resize/ev902_����늴Œi����`�륬��_ctl.jpg");
	CreateTextureEXsub("�ץ�}", 17010, InRight, -650, "cg/ev/resize/ev902_����늴Œi����`�륬��_ctl.jpg");
	CreateTextureSP("�}�ݒi���ʂ�", 17000, InRight, -650, "cg/ev/resize/ev902_����늴Œi����`�륬��_btl.jpg");
	SetBlur("�}�ݒi���ʂ�*", true, 2, 500, 80, false);

	SetBlur("�ץ�}*", true, 1, 500, 80, false);

	Delete("�ϱ���");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	SoundPlay("@mbgm12",0,1000,true);
	FadeDelete("�ϱ���", 100, true);
	FadeDelete("�}ɫ��", 600, true);

	Move("�ץ�}*", 2000, @0, @-600, AxlDxl, false);
	Move("�}�ݒi���ʂ�*", 2000, @0, @-600, AxlDxl, true);

	SetVertex("�ץ�}*", 586, 1592);
	DenziBladeChargeEX();

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0090a14">
����Ȼ���������а�����

//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0100a14">
���ѹ�֮��������
�����ô����ų�����ٰε�������

//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0110a14">
����һ�е��ٶȣ��������ҵ��۾����޷�������
���޷��㿪�����޴ӷ���������

//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0120a14">
�����ǣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 200, 0, null);

//�������y�Ǻ�
	CreateSE("SE01","se���L_����_���ϕN01");
	CreateColorSP("�}��ܞ", 20000, "#000000");
	CreateTextureSP("�}���y�Ǻ�", 18000, Center, -1300, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	Request("�}���y�Ǻ�*", Smoothing);
	Zoom("�}���y�Ǻ�", 0, 3000, 3000, null, true);
	Rotate("�}���y�Ǻ�", 0, @180, @0, @0, null,true);
	SetBlur("�}���y�Ǻ�", true, 1, 500, 50, false);
	Delete("�ץ�*");
	Delete("�}�ݒi��*");
	Delete("��*");
	Delete("�ϱ���");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}���y�Ǻ�", 150, 1000, 1000, null, false);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_0", true);
	Move("�}���y�Ǻ�", 1500, @0, @100, DxlAuto, false);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/mb04/011vs0130a14">
��<RUBY text="��������������������������">�ҿ��õ�ʹ��̫���������Ӱ</RUBY>�����ϧ����
�����������û��ʱ�佫���ӵ����аγ�
�Ļ�����ô�������ĵ�Ҳ��۵�һ�����޼�ֵ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš����ä���������
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateTextureSPadd("�}���y�Ǻ���", 18100, -350, -250, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_cl.jpg");
	CreateTextureSP("�}���y�Ǻ�", 18010, -350, -250, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_cl.jpg");
	Request("�}���y�Ǻ�*", Smoothing);
	Rotate("�}���y�Ǻ�*", 0, @0, @180, @0, null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}���y�Ǻ���", 0, 1200, 1200, null, false);
	Zoom("�}���y�Ǻ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}���y�Ǻ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}���y�Ǻ���", 200, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������û��
�����Ǻ�˵��û��

����ʹ�������ٵĹ����ֶΡ���
������ʹ��֮ǰ<RUBY text="����">����</RUBY>�ͱ������˵Ļ����Ǳ�������塣

���������Ķ������ױ����ǺŲ�׽���Ļ�����ô����
�ű�ɿ�����ʹ�������ε���ʱ����Ȼ�����Ұε�֮ǰ
�Ƚ��Ҵ�ܡ�
����ͨ����Ҳ�������������������Ǻ�һ�����õ���

����֮��Եģ��ҷ�ȴ�������һ˿Ӱ�Ӷ���׽������
����ʹ�аε���ʱ�䣬̫��Ҳ�޷�����������ɡ�

��Ҳ������ν�ı������
�������ô���

�������ԡ�û��
��<RUBY text="����������������������">��ƾ��ε��Ǻ��������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"mb04_012vs.nss"

.//�ץ�����======================================================

..//늴Œi����능�`�ץ�������
function DenziBladeChargeEX()
{
	CreateProcess("��늴Œi����능�`��", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("��늴Œi����능�`��","��늴Œi����능�`��");
	Request("��늴Œi����능�`��", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 300, $RZS, $RZS, null, false);
	Fade("@�ץ�}", 50, 800, Dxl3, false);
	Fade("@�ץ�}��", 50, 800, Axl1, true);
	Fade("@�ץ�}*", 250, 0, null, true);
	Wait(50);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 200, $RZS, $RZS, null, false);
	Fade("@�ץ�}", 50, 800, Dxl3, false);
	Fade("@�ץ�}��", 50, 800, Axl1, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 150, $RZS, $RZS, null, false);
	Fade("@�ץ�}", 50, 800, Dxl3, false);
	Fade("@�ץ�}��", 50, 800, Axl1, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	}

}