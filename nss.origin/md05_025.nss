//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_025.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_025.nss","AnimeCube_Delete",true);
	Conquest("nss/md05_025.nss","AnimeCube_Slide",true);
	

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
	#ev937_����ꇥ������h��_a=true;
	#ev937_����ꇥ������h��_b=true;
	#ev937_����ꇥ������h��_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "function_magiccube.nss";

}

scene md05_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_024vs.nss"

	PrintBG("�ϱ���", 30000);

//ǰ�ե�����α����������ʤ����\�Τ� inc�Ѿ�
//ǰ�ե�����ΤĤʤ����v�S�����S������椨�ޤ�����ͽ�i
	SoundPlay("@mbgm13", 0, 1000, true);

//�룺���ߩ`
	CreateTextureEX("����������", 800, Center, Middle, "cg/ef/ef037_�|�I���ħ����d.jpg");
	Zoom("����������", 0, 1500, 1500, null, true);
	Fade("����������", 0, 1000, null, true);

	CreateColorEX("�}ɫ100", 801, "Black");
	Fade("�}ɫ100", 0, 500, null, true);


//	CreateTextureSP("����`��", 800, 0, 0, "cg/sys/magiccube/���������-02.jpg");

	CreateTextureEX("������", 800, 256, 188, "cg/sys/magiccube/����ꇴ���-01.png");

	CreateTextureEX("����`�֣�", 1100, 256, 188, "cg/sys/magiccube/����ꇴ���-02.png");
	CreateTextureEX("������", 1000, 256, 188, "cg/sys/magiccube/����ꇴ���-03.png");

	CreateTextureEX("����`�֣�", 1250, 256, 188, "cg/sys/magiccube/������h���ץ���`�֥說-12.png");
	CreateTextureEX("������", 1200, 256, 188, "cg/sys/magiccube/����ꇴ���-04.png");

	FadeDelete("�ϱ���",1000,true);

//���}�_ʼ
//�������Ϻ�����ܥå���
//����Ҫ�ϡ�����٥�����ħ��ꇤ���ɤ������Ȥ������}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ŀ���ǴӼ�����յ�����Ȧ���롣
����Ҫ�����ǣ������ĵ��͡�

��Ϊ�˽��ױ��ĳ���������������ð�����
�������ѻ��ᡣ

�����ҵ��������������Ŀ�ġ�

��������������Ҫ�ǽ������ӣ������������ŵ�
������������з��࣬�����ݡ�
  �˷������Գ�����ǿ��Ϊ��׼��
ǿ�Ⱥͺ�������ȡ�

������˵��������������������������ǿ��
�����������ȳ�����ǿ���屶������������
���������ںϣ�ӵ�кͳ���������ͬ��������

���ܹ�ͬʱ�����⣱�����ֳ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev937

	Fade("������", 500, 1000, null,true);

//	CreateTextureEX("���}", 15000, @0, @0, "cg/ev/ev937_����ꇥ������h��_a.jpg");
//	Fade("���}", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����磬������Ϊ���ģ�����һ��������Ŀռ䡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("������", 500, 1000, null,true);
	Delete("������");

//���������ʾ��ev937a
//	CreateTextureEX("���}02", 16000, @0, @0, "cg/ev/ev937_����ꇥ������h��_b.jpg");
//	Fade("���}02", 1000, 1000, null, true);
//	Delete("���}");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ָ���ݡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("������", 500, 1000, null,true);
	Delete("������");


//����gλ�ָev937b
//	CreateTextureEX("���}03", 16500, @0, @0, "cg/ev/ev937_����ꇥ������h��_c.jpg");
//	Fade("���}03", 1000, 1000, null, true);
//	Delete("���}02");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����蹲�ƣ�������С�����塣

�����⣱������������ռ��У�
�ܹ����������ֳ���һһ���䡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ǳ��}�����ʹ��������ʾ
//����٥룱���֤򥢥ԩ`��
//����٥룱��ꇡ����֤�Ӌ��oҕ�ξ_��������
//����٥룲���֤򥢥ԩ`��
//����٥룲���
//����٥룳���֤򥢥ԩ`��
//����٥룳���
//����٥룴���֤򥢥ԩ`��
//����٥룴���
//����٥룵���֤򥢥ԩ`��
//����٥룵���
	CreateTextureEX("����`�֣�", 1210, Center, Middle, "cg/sys/magiccube/������h���ץ���`�֥說ȫ��-05.png");

	CreateTextureEX("�h����٥룱��", 1200, 476, 366, "cg/sys/magiccube/������h������`������_06_1.png");
	CreateTextureEX("�h����٥룲��", 1200, 516, 201, "cg/sys/magiccube/������h������`������_07_1.png");
	CreateTextureEX("�h����٥룳��", 1200, 516, 38, "cg/sys/magiccube/������h������`������_08_1.png");
	CreateTextureEX("�h����٥룴��", 1200, 410, 38, "cg/sys/magiccube/������h������`������_09_1.png");
	CreateTextureEX("�h����٥룵��", 1200, 102, 38, "cg/sys/magiccube/������h������`������_10_1.png");

	CreateTextureEX("�h����٥룱", 1300, 476, 366, "cg/sys/magiccube/������h������`������_06_1.png");
	CreateTextureEX("�h����٥룲", 1300, 516, 201, "cg/sys/magiccube/������h������`������_07_1.png");
	CreateTextureEX("�h����٥룳", 1300, 516, 38, "cg/sys/magiccube/������h������`������_08_1.png");
	CreateTextureEX("�h����٥룴", 1300, 410, 38, "cg/sys/magiccube/������h������`������_09_1.png");
	CreateTextureEX("�h����٥룵", 1300, 102, 38, "cg/sys/magiccube/������h������`������_10_1.png");

	CreateTextureEX("�h����٥룱s", 1200, 256, 308, "cg/sys/magiccube/������h������`��_06.png");
	CreateTextureEX("�h����٥룲s", 1200, 256, 278, "cg/sys/magiccube/������h������`��_07.png");
	CreateTextureEX("�h����٥룳s", 1200, 256, 248, "cg/sys/magiccube/������h������`��_08.png");
	CreateTextureEX("�h����٥룴s", 1200, 256, 218, "cg/sys/magiccube/������h������`��_09.png");
	CreateTextureEX("�h����٥룵s", 1200, 256, 188, "cg/sys/magiccube/������h������`��_10.png");


	Fade("����`�֣�", 500, 1000, Dxl1,false);
	Fade("������", 500, 0, Axl1,true);

	Fade("�h����٥룱", 500, 1000, null, false);
	Fade("�h����٥룱s", 500, 1000, null, true);

	WaitKey();

	Fade("�h����٥룱��", 500, 1000, null, false);
	Fade("�h����٥룱", 500, 0, null, false);
	Fade("�h����٥룱s", 500, 0, null, true);

	Fade("�h����٥룲", 500, 1000, null, false);
	Fade("�h����٥룲s", 500, 1000, null, true);

	WaitKey();

	Fade("�h����٥룲��", 500, 1000, null, false);
	Fade("�h����٥룲", 500, 0, null, false);
	Fade("�h����٥룲s", 500, 0, null, true);

	Fade("�h����٥룳", 500, 1000, null, false);
	Fade("�h����٥룳s", 500, 1000, null, true);

	WaitKey();

	Fade("�h����٥룳��", 500, 1000, null, false);
	Fade("�h����٥룳", 500, 0, null, false);
	Fade("�h����٥룳s", 500, 0, null, true);

	Fade("�h����٥룴", 500, 1000, null, false);
	Fade("�h����٥룴s", 500, 1000, null, true);

	WaitKey();

	Fade("�h����٥룴��", 500, 1000, null, false);
	Fade("�h����٥룴", 500, 0, null, false);
	Fade("�h����٥룴s", 500, 0, null, true);

	Fade("�h����٥룵", 500, 1000, null, false);
	Fade("�h����٥룵s", 500, 1000, null, true);

	WaitKey();

	Fade("�h����٥룵��", 500, 1000, null, false);
	Fade("�h����٥룵", 500, 0, null, false);
	Fade("�h����٥룵s", 500, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������һ������Ȼ�������ĵ��ͼ������޷����
������
{	Fade("�h����٥�*", 500, 0, null, false);}
�������ĵ��ͣ���ζ�Ž�����ǿ�ȱ��־��⡣

����ˣ���������ռ�����ǳ���ά�ְ���״̬����

������ֱ�ߣ��Լ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ֱ�����򤤤��Ĥ����ԩ`��
	CreateTextureEX("level1_01", 1250, 102, 98, "cg/sys/magiccube/���}1����`��-13.png");
	CreateTextureEX("level1_02", 1250, 102, 98, "cg/sys/magiccube/���}1����`��-14.png");
	CreateTextureEX("level1_03", 1250, 102, 98, "cg/sys/magiccube/���}1����`��-15.png");
	CreateTextureEX("level1_04", 1250, 102, 98, "cg/sys/magiccube/���}1����`��-16.png");
	CreateTextureEX("level1_05", 1250, 102, 98, "cg/sys/magiccube/���}1����`��-17.png");

	Fade("level1_01", 200, 1000, null, true);
	Wait(100);
	Fade("level1_02", 200, 1000, null, true);
	Wait(100);
	Fade("level1_03", 200, 1000, null, true);
	Wait(100);
	Fade("level1_04", 200, 1000, null, true);
	Wait(100);
	Fade("level1_05", 200, 1000, null, true);

	CreateColorEX("�������\", 15000, "Black");
	CreateTextureEX("������01", 16000, 357, 115, "cg/sys/magiccube/���}1����`��-18.png");

	Fade("�������\", 500, 500, null, true);
	Fade("������01", 300, 1000, null, true);

	WaitKey();

	Delete("������*");
	Delete("level1_*");

	CreateTextureEX("level2_01", 1250, 360, 98, "cg/sys/magiccube/���}2����`��-19.png");
	CreateTextureEX("level2_02", 1250, 360, 98, "cg/sys/magiccube/���}2����`��-20.png");
	CreateTextureEX("level2_03", 1250, 360, 98, "cg/sys/magiccube/���}2����`��-21.png");
	CreateTextureEX("level2_04", 1250, 360, 98, "cg/sys/magiccube/���}2����`��-22.png");
	CreateTextureEX("level2_05", 1250, 360, 98, "cg/sys/magiccube/���}2����`��-23.png");

	Fade("level2_01", 200, 1000, null, true);
	Wait(100);
	Fade("level2_02", 200, 1000, null, true);
	Wait(100);
	Fade("level2_03", 200, 1000, null, true);
	Wait(100);
	Fade("level2_04", 200, 1000, null, true);
	Wait(100);
	Fade("level2_05", 200, 1000, null, true);

	CreateColorEX("�������\", 15000, "Black");
	CreateTextureEX("������01", 16000, 357, 115, "cg/sys/magiccube/���}2����`��-24.png");

	Fade("�������\", 500, 500, null, true);
	Fade("������01", 300, 1000, null, true);

	WaitKey();

	Delete("������*");
	Delete("level2_*");

	CreateTextureEX("level3_01", 1250, 206, 158, "cg/sys/magiccube/���}3����`��-26.png");
	CreateTextureEX("level3_02", 1250, 206, 158, "cg/sys/magiccube/���}3����`��-27.png");
	CreateTextureEX("level3_03", 1250, 206, 158, "cg/sys/magiccube/���}3����`��-28.png");
	CreateTextureEX("level3_04", 1250, 206, 158, "cg/sys/magiccube/���}3����`��-29.png");
	CreateTextureEX("level3_05", 1250, 206, 158, "cg/sys/magiccube/���}3����`��-30.png");

	Fade("level3_01", 200, 1000, null, true);
	Wait(100);
	Fade("level3_02", 200, 1000, null, true);
	Wait(100);
	Fade("level3_03", 200, 1000, null, true);
	Wait(100);
	Fade("level3_04", 200, 1000, null, true);
	Wait(100);
	Fade("level3_05", 200, 1000, null, true);

	CreateColorEX("�������\", 15000, "Black");
	CreateTextureEX("������01", 16000, 357, 115, "cg/sys/magiccube/���}3����`��-31.png");

	Fade("�������\", 500, 500, null, true);
	Fade("������01", 300, 1000, null, true);

	WaitKey();

	Delete("������*");
	Delete("level3_*");

	CreateTextureEX("level4_01", 1250, 256, 98, "cg/sys/magiccube/���}4����`��-32.png");
	CreateTextureEX("level4_02", 1250, 256, 98, "cg/sys/magiccube/���}4����`��-33.png");
	CreateTextureEX("level4_03", 1250, 256, 98, "cg/sys/magiccube/���}4����`��-34.png");
	CreateTextureEX("level4_04", 1250, 256, 98, "cg/sys/magiccube/���}4����`��-35.png");
	CreateTextureEX("level4_05", 1250, 256, 98, "cg/sys/magiccube/���}4����`��-36.png");

	Fade("level4_01", 200, 1000, null, true);
	Wait(100);
	Fade("level4_02", 200, 1000, null, true);
	Wait(100);
	Fade("level4_03", 200, 1000, null, true);
	Wait(100);
	Fade("level4_04", 200, 1000, null, true);
	Wait(100);
	Fade("level4_05", 200, 1000, null, true);

	CreateColorEX("�������\", 15000, "Black");
	CreateTextureEX("CubeNum1", 15500, Center, Middle, "cg/sys/magiccube/���}4����`��-37.png");
	CreateTextureEX("CubeNum2", 16000, Center, Middle, "cg/sys/magiccube/���}4����`��-38.png");
	CreateProcess("CubeM", 150, 0, 0, "AnimeCube_Slide");
	SetAlias("CubeM","CubeM");

	Fade("�������\", 500, 500, null, true);
	Request("CubeM", Start);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����жԽ��ߣ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Ǿ����򤤤��Ĥ����ԩ`��
	AnimeCube_Delete();

	Delete("������*");
	Delete("level4_*");

	CreateTextureEX("level5_01", 1250, 206, 38, "cg/sys/magiccube/���}5����`��-39.png");
	CreateTextureEX("level5_02", 1250, 206, 38, "cg/sys/magiccube/���}5����`��-40.png");
	CreateTextureEX("level5_03", 1250, 206, 38, "cg/sys/magiccube/���}5����`��-41.png");
	CreateTextureEX("level5_04", 1250, 206, 38, "cg/sys/magiccube/���}5����`��-42.png");
	CreateTextureEX("level5_05", 1250, 206, 38, "cg/sys/magiccube/���}5����`��-43.png");

	Fade("level5_01", 200, 1000, null, true);
	Wait(100);
	Fade("level5_02", 200, 1000, null, true);
	Wait(100);
	Fade("level5_03", 200, 1000, null, true);
	Wait(100);
	Fade("level5_04", 200, 1000, null, true);
	Wait(100);
	Fade("level5_05", 200, 1000, null, true);

	CreateColorEX("�������\", 15000, "Black");
	CreateTextureEX("������01", 16000, 357, 115, "cg/sys/magiccube/���}5����`��-44.png");

	Fade("�������\", 500, 500, null, true);
	Fade("������01", 300, 1000, null, true);

	WaitKey();

	Delete("������*");
	Delete("level5_*");

	CreateTextureEX("level6_01", 1250, 310, 98, "cg/sys/magiccube/���}6����`��-45.png");
	CreateTextureEX("level6_02", 1250, 310, 98, "cg/sys/magiccube/���}6����`��-46.png");
	CreateTextureEX("level6_03", 1250, 310, 98, "cg/sys/magiccube/���}6����`��-47.png");
	CreateTextureEX("level6_04", 1250, 310, 98, "cg/sys/magiccube/���}6����`��-48.png");
	CreateTextureEX("level6_05", 1250, 310, 98, "cg/sys/magiccube/���}6����`��-49.png");

	Fade("level6_01", 200, 1000, null, true);
	Wait(100);
	Fade("level6_02", 200, 1000, null, true);
	Wait(100);
	Fade("level6_03", 200, 1000, null, true);
	Wait(100);
	Fade("level6_04", 200, 1000, null, true);
	Wait(100);
	Fade("level6_05", 200, 1000, null, true);

	CreateColorEX("�������\", 15000, "Black");
	CreateTextureEX("������01", 16000, 357, 115, "cg/sys/magiccube/���}6����`��-50.png");

	Fade("�������\", 500, 500, null, true);
	Fade("������01", 300, 1000, null, true);

	WaitKey();

	Delete("������*");
	Delete("level6_*");

	CreateTextureEX("level7_01", 1250, 102, 98, "cg/sys/magiccube/���}7����`��-51.png");
	CreateTextureEX("level7_02", 1250, 102, 98, "cg/sys/magiccube/���}7����`��-52.png");
	CreateTextureEX("level7_03", 1250, 102, 98, "cg/sys/magiccube/���}7����`��-53.png");
	CreateTextureEX("level7_04", 1250, 102, 98, "cg/sys/magiccube/���}7����`��-54.png");
	CreateTextureEX("level7_05", 1250, 102, 98, "cg/sys/magiccube/���}7����`��-55.png");

	Fade("level7_01", 200, 1000, null, true);
	Wait(100);
	Fade("level7_02", 200, 1000, null, true);
	Wait(100);
	Fade("level7_03", 200, 1000, null, true);
	Wait(100);
	Fade("level7_04", 200, 1000, null, true);
	Wait(100);
	Fade("level7_05", 200, 1000, null, true);

	CreateColorEX("�������\", 15000, "Black");
	CreateTextureEX("CubeNum1", 15500, Center, Middle, "cg/sys/magiccube/���}7����`��-56.png");
	CreateTextureEX("CubeNum2", 16000, Center, Middle, "cg/sys/magiccube/���}7����`��-57.png");
	CreateProcess("CubeM", 150, 0, 0, "AnimeCube_Slide");
	SetAlias("CubeM","CubeM");

	Fade("�������\", 500, 500, null, true);
	Request("CubeM", Start);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
  ������ͬ��ǿ�ȷ��䣱�����ֳ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	AnimeCube_Delete();
	Delete("�������\");
	Delete("level7_*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0071]
����������˵��
������������ʾ�ҵ����⡣

����ô��ʼ���⡣

��Ҫ�����������Ҫ���Ѷȵļ��㡣
��ʱ����١�����Ĵ����������������н��еļ���
����Ҳ���㡣

���������ⲻ������������Ĵ��Բ��㡪��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���}���档��ꇤϤޤ��հ�
//�����㥭�`�󡣄���Ӌ�㣡���쥤���֩����ؤͤ룿

	OnSE("se����_�z_װ��03", 1000);

	CreateTextureSP("���}", 15000, @0, @0, "cg/ev/ev937_����ꇥ������h��_a.jpg");
	FadeDelete("���}03",1000,true);
	CreateTextureEX("֩���", 15100, @-400, @-300, "cg/st/resize/3d����֩��_����m.png");
	Fade("֩���", 300, 300, null, true);


//����ꇤ����֤�һ����Ф�����ޤ�


//�y�׶ȵ���OFF���Ȥ�����HIO? inc�Ѿ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�������ƥ��å��`������ɫ��
<FONT incolor="YELLOW">��Ϊ��ʹ����ֱ�ߺͶԽ��ߵ������ܺ���ͬ��
���ڿո���������Ӧ��ʣ�����֡�</FONT>

<FONT incolor="YELLOW">����굥��ѡ�е����ֺ�
�ٵ���ѡ�еĿո�
ѡ������ֽ�������ѡ��Ŀո��ڡ�</FONT>

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

if($����ꇺ��ץե饰){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����y�׶ȵ��£ϣΤΤ�
<FONT incolor="YELLOW">�������ֵ��ܺ��ǣ�������
�����е�ֱ�ߺͶԽ��ߣ��������ֵ��ܺ�ҪΪ��������
�����롣</FONT>

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}else{

}

//�������}������ץ�

	ClearWaitAll(1500, 1500);

..//������ָ��
//�Υե����롡"md05_025gameover.nss"
//�Υե����롡"md05_025end.nss"

}

..//AnimeCube_Delete
function AnimeCube_Delete(){

	Request("@cube_test", Stop);
	Request("@cube_test1", Stop);
	Fade("@CubeNum*", 300, 0, null, true);
	Delete("@CubeNum*");
	Delete("@CubeM");
	Delete("@cube_test");
	Delete("@cube_test2");

}

..//AnimeCube_Slide
function AnimeCube_Slide(){

	begin:

	Fade("@CubeNum1", 300, 1000, null, false);
	Fade("@CubeNum2", 300, 1000, null, true);

	while(1){
		Move("@CubeNum2", 1500, @0, @+174, AxlDxl, true);
		Wait(2000);
		Move("@CubeNum2", 1500, @0, @-174, AxlDxl, true);
		Wait(2000);
	}

}

