//<continuation number="40">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_012vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_012vs.nss","DenziBladeChargeEX",true);
	Conquest("nss/mb04_012vs.nss","DenziBladeChargeSet",true);
	Conquest("nss/mb04_012vs.nss","FlyMoving",true);
	Conquest("nss/mb04_012vs.nss","FlyMoving2",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#ev156_�y�ǺŤȤΛQ��Ӣ�۾�=true;
	#ev901_�y�Ǻ�����ʧ��С����_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_013.nss";

}

scene mb04_012vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_011vs.nss"

//������
	SoundPlay("@mbgm12",0,1000,true);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	CreateSE("SEL01","se����_늓�_���02");
	CreateTextureEXadd("�ץ�}��", 17020, InRight, -1250, "cg/ev/resize/ev902_����늴Œi����`�륬��_ctl.jpg");
	CreateTextureEXsub("�ץ�}", 17010, InRight, -1250, "cg/ev/resize/ev902_����늴Œi����`�륬��_ctl.jpg");
	CreateTextureSP("�}�ݒi���ʂ�", 17000, InRight, -1250, "cg/ev/resize/ev902_����늴Œi����`�륬��_btl.jpg");
	SetBlur("�}�ݒi���ʂ�*", true, 2, 500, 80, false);

	SetBlur("�ץ�}*", true, 1, 500, 80, false);
	MusicStart("SEL01",0,1000,0,1000,null,true);

	SetVertex("�ץ�}*", 586, 1592);
	DenziBladeChargeEX();

	$SYSTEM_effect_rain_speed = 96;
	$SYSTEM_effect_rain_dencity = 24;
	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Request("�}������", AddRender);
	Fade("�}������", 0, 300, null, true);
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);

	DrawDelete("�ϱ���", 150, 100, "slide_02_01_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_0", true);

	Move("�}�ݒi���ʂ�", 16000, @0, @600, null, false);
	Move("�ץ�}*", 16000, @0, @600, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����Ѿ����ס�
��ƾ����ʽ�����޷��������Ǻŵġ�

����Ҫ����������
�����ٶȡ�

��ֻ�в��ϵ������ٶȲ��ܻ������Ǻš�
������һ����ֻҪ�ٿ�һ�㡣

��һ˲�䡪��������˲��İٷ�֮һҲ�޷���
��Ϊ��˦��ħ�������ߣ����Լ���������Ұ���ٶȡ�

��Ϊ����ȡ���������ٶȡ�
���Ҳ����˷��ŵľ�ֹ��

��Ϊ�ˣ��Ҳ�������<RUBY text="����������">�������ж�</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늤��ʤ���ȫ��ز���
	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Request("�}������", AddRender);
	Fade("�}������", 0, 300, null, true);
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);

	Delete("��*");
	CreateTextureEXadd("�ץ�}��", 17020, InRight, -1250, "cg/ev/resize/ev902_����늴Œi����`�륬��_dtl.jpg");
	CreateTextureEXsub("�ץ�}", 17010, InRight, -1250, "cg/ev/resize/ev902_����늴Œi����`�륬��_dtl.jpg");
	CreateTextureSP("�}�ݒi���ʂ�", 17000, InRight, -1250, "cg/ev/resize/ev902_����늴Œi����`�륬��_ctl.jpg");
	Shake("�}�ݒi���ʂ�", 2160000, 0, 4, 0, 0, 1000, null, false);
	SetBlur("�}�ݒi���ʂ�*", true, 2, 500, 80, false);

	SetBlur("�ץ�}*", true, 1, 500, 80, false);
	MusicStart("SEL01",0,1000,0,1000,null,true);

	SetVertex("�ץ�}*", 586, 1592);
	DenziBladeChargeEX();

	FadeDelete("�}ɫ��", 800, true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/mb04/012vs0010a14">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����Ǻ�Ҳ�������һ˲�����������
��<RUBY text="����������������">��ʲô��Ҫ������</RUBY>��

���ѳ�Խ���෶���ս��ֱ��������׼ȷ�ض�Ϥ����
��һ�㡣
��
������

���������ʵأ�������ʶ������һ�㡣
�����ԡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 300, null);

//���y�Ǻš����������`������
	CreateTextureEX("�}���y��", 18100, -350, -250, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_cl.jpg");
	Request("�}���y��", Smoothing);
	Rotate("�}���y��", 0, @0, @180, @0, null,true);
	Fade("�}���y��", 1000, 1000, null, true);

	WaitKey(1000);

	CreateTextureSP("�}���y�r", 18090, -350, -250, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_dl.jpg");
	Request("�}���y�r", Smoothing);
	Rotate("�}���y�r", 0, @0, @180, @0, null,true);
	FadeDelete("�}���y��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����Ǻ�Ѹ�ٵط�ת�����������˹�����
��ʹ���˱�ɱ�Ե�һ����

�����������˵���ա�

����Ϊ��֪���Ҽ������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȫ�펡�

	SetVolume("SE*", 1000, 1000, null);
	FadeDelete("�}���y*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050a]
�������������������<RUBY text="����">����</RUBY>��
���������粻������궯�ţ��ų������š�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�ݒi���ʂ�", 300, @0, @600, AxlDxl, false);
	Move("�ץ�}*", 300, @0, @600, AxlDxl, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050b]
���ڱ���������ﵽ��ߵ�ʱ����
������<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�ݒi���ʂ�", 600, @0, @-600, Axl3, false);
	Move("�ץ�}*", 600, @0, @-600, Axl3, false);

	WaitKey(500);

	SetVolume("SE*", 300, 0, null);

//���ʤ󤫱��k���W��
//���ʤ󤫤���픤��򤫤äƼ��ߤ���
	CreateSE("SE01a","se����_�z_װ��03");
	CreateSE("SE01b","se���L_�Ɖ�_���k09");
	CreateSE("SE01c","se���L_����_��ͻ�M03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	Delete("�ץ�*");
	Delete("��*");
	Delete("�}����*");
	Delete("�}��*");


	CreateTextureSP("�}�ݴ���", 17000, 310, -1500, "cg/ef/resize/ef020_����ͻ؞02tl.jpg");
	Request("�}�ݴ���", Smoothing);
	Zoom("�}�ݴ���", 0, 2000, 2000, null, true);
	SetBlur("�}�ݴ���", true, 4, 500, 70, false);

$��`�ץ�`�֥ʥå��� = "@�}�ݴ���";
$��`�ץ�`�֥����� = 200;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Request("�}������", SubRender);
	Move("�}������", 0, 1156, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @-20, @0, @5, null,true);
	Fade("�}������", 0, 150, null, true);

	Shake("�}�ݴ���", 10000000, 1, 0, 0, 0, 1000, null, false);

//	Shake("�}�ݴ���", 1500, 3, 0, 0, 0, 1000, Dxl2, false);


	Fade("�}������", 1500, 0, null, false);
	FadeDelete("�}ɫ��", 1000, false);
	Zoom("�}�ݴ���", 700, 1700, 1700, Dxl2, true);


//	WaitKey(700);
	Delete("�ץ�����");

	Zoom("�}�ݴ���", 1600, 1000, 1000, Dxl2, false);
	BezierMove("�}�ݴ���", 1000, (@0,@0){-240,-1000}{-340,-1000}(100,-1300){-50,-300}{-100,-600}(-200,-100){-220,-600}{-120,-410}(-135,-440), null, true);

//	Move("�}�ݴ���", 200, -120, -410, Dxl1, true);
//	Move("�}�ݴ���", 100, -100, -510, AxlDxl, true);
//	Move("�}�ݴ���", 300, @0, -510, Dxl1, true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/mb04/012vs0020a14">
������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateSE("SE02a","se���L_����_��ͻ�M03");
	CreateSE("SE02b","se���L_����_��ͻ�M01");
	CreateSE("SE02c","se���L_�Ɖ�_���k09");
	CreateTextureSPadd("�}���y�Ǻ�", 17000, 0, -1050, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02t2l.jpg");
	Shake("�}���y�Ǻ�", 10000000, 1, 0, 0, 0, 1000, null, false);

	CreateTextureSP("�}���y�Ǻ�2", 17000, -100, -1500, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02t2l.jpg");
	Request("�}���y�Ǻ�2", Smoothing);
	Zoom("�}���y�Ǻ�2", 0, 2000, 2000, null, true);
	SetBlur("�}���y�Ǻ�2", true, 2, 300, 20, false);

	Move("�}������", 0, @0, @250, null, true);

	Fade("�}������", 0, 150, null, true);
	Zoom("�}���y�Ǻ�2", 1600, 1000, 1000, Dxl2, false);
	Fade("�}������", 1600, 100, null, false);
	Zoom("�}������", 1600, 5000, 5000, Dxl2, false);
	Rotate("�}������", 1600, @20, @0, @21, Dxl2,false);

	FadeDelete("�}ɫ��", 1000, false);

	BezierMove("�}���y�Ǻ�2", 1000, (@0,@0){-240,-1000}{-340,-1000}(0,-1300){-50,-1000}{-100,-1000}(-150,-1100){-140,-900}{-120,-1000}(0,-1050), null, false);

	Wait(900);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	MusicStart("SE02c",0,1000,0,1500,null,false);


	FadeDelete("�}���y�Ǻ�2", 500, false);

	Wait(300);
//	Move("�}���y�Ǻ�", 300, @0, -980, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��Ҳ�����ܷ������������顣
�������ѿյ�������ҷ·������˹�ĺ�����

�������Խ���Ϊָ����������͵�װ��ͨ������
����������ʵ��������

������ǹ��޷���׷�ٵ��ҵ���Ӱ��֤����

������������ע���š�
�����ɫ�Ľ�������������Ұ�����ڡ�

��Ȼ������ȴ���޷�����<RUBY text="��������">�ҵ���Ӱ</RUBY>�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);

//���פ��W����Ф˾���
//���֤ä��㤱��������ޤ��h���}�ˤʤ��褦�`ħ������
//�����������װ��
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 1000, 1000, Axl2, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}�ţ�", 18000, Center, Middle, "cg/ev/ev156_�y�ǺŤȤΛQ��Ӣ�۾�.jpg");
	Zoom("�}�ţ�", 0, 2000, 2000, null, true);

	SetBlur("�}�ţ�", true, 3, 500, 50, false);
	Move("�}�ţ�", 0, 500, @-200, null, true);

	Delete("�ϱ���");

	CreateSE("SE01","se����_늓�_���01");
	OnSE("se����_늓�_���02",1000);
	MusicStart("SE01",2000,500,0,1000,null,true);

	Zoom("�}�ţ�", 2000, 1800, 1800, null, false);
	Move("�}�ţ�", 2000, 400, -160, null, false);
	Fade("�}��ܞ", 2000, 0, null, true);

	OnSE("se����_늓�_���01",1000);
	Fade("�}��ܞ", 100, 500, null, true);
	FadeDelete("�}��ܞ", 500, false);
	Zoom("�}�ţ�", 500, 1000, 1000, Axl2, false);
	Move("�}�ţ�", 500, 0, 0, Axl2, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ĵ�Űε���

���Խ���Ϊ�ʣ�
��������Ϊ�У�
���ӳ�����һ����

���һ�����һ���⡣

��ʲô����������
���·𱻰�ɫ��������û���ֺ��Ʊ���������ĺڰ���

���ҿ��������Ǻš�
���������Ǻ����ڿ�������һ�㡣

�����Ⲣ���ҵ����ơ�

����������ظ��ܵ��Է���
�������������Ϸ���ֱ�����ҳ�����

�������ֻҪֱ������ǰ���Ϳ����ˡ�

������Ψһ��װ�ף���������ס��ȭ��
�������춥��

���ҵ�ȭ���Ի���е��

��Ȼ������
�����Ǻ��޷���׽������Ӱ������ʹ���Ѿ�������
�����ĸй�Ԥ�ϵ�����һ״������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���y�ǺŤ����
//������򤹤�i���뾰��
	CreateSE("SE01","se���L_����_���04");
	CreateSE("SE01a","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}����", 18100, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");
	CreateTextureSP("�}��", 18050, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");
	Rotate("�}��*", 0, @0, @180, @0, null,true);
	Zoom("�}��", 0, 1100, 1100, null, true);
	Request("�}��*", Smoothing);

	Fade("�}��*", 0, 1000, null, true);
	Zoom("�}����", 200, 1200, 1200, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	WaitKey(500);

	DrawDelete("�}��", 150, 100, "circle_01_00_1", true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/mb04/012vs0030a14">
������!!��


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/012vs0040a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��Ȼ�󡪡�
����˫�����������һ˲�䣬���Ǻŵ�����װ�׷�������
������Ҫ��Ϊ�����ĽŲ���

��������λ�����ڸ��ⱡ����״̬��
����ʱ�����ǺŸ������߱�����<k>���Գ����������
װ��ײ����ǿ�ȡ���!!

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//���ɤ��`�󡣤֤Ĥ��ä���
	CreateSE("SE01","se���L_�n��_�nͻ01");
	CreateSE("SE02","se���L_�n��_���Ľ��e02");
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	CreatePlainSPadd("�}��д", 19990);
	SetBlur("�}��д", true, 3, 500, 30, false);

	MusicStart("SE01",0,1000,0,750,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1150, 1150, null, false);
	Fade("�}ɫ��", 200, 1000, null, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateColorSP("�}��ܞ", 100, "#000000");
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitPlay("SE02", null);

//���٤��ܤ��Ф������������Ɖ�����
	CreateSE("SE03","se���L_�Ɖ�_�y�Ǻ��Ɖ�");
	MusicStart("SE03",0,1000,0,1000,null,false);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����Ѹ����Ĵ��С�
�����Ѫ��Ĵ��С�
�������ͷ�Ĵ��С�

�����������ڻ����Լ������á�
�������������������һ��Ϊ��������ÿһ��ϸ΢��
���С�

���������еĴ��С�
��һ˿����ظ�����ȫ��ս�������С�

����һֱ��������Ϊ�ˣ�Ϊ�˴ﵽ��һĿ�ģ�
����ս���š�

���Ⲣ������������ϣ���ġ�
��������ˣ��������Լ�����־��ѡ���������Ľ�֡�

����ˡ���
��
���ҽ�������������Ĵ��У���������̽����ҵ���ȭ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//����ȫ�Ɖ�
	CreateSE("SE01","se����_��x_�k��03");
	CreateSE("SE02","se����_�z_װ��03");
	CreateSE("SE03","se����_�ҥ���_�Қ�03");

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 300, 1000, null, true);

	WaitKey(2000);

	SetVolume("SE*", 2000, 0, null);
	Wait(2000);

//	ClearWaitAll(3000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_013.nss"

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
