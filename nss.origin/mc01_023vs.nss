//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_023vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc01_023vs.nss","MourouAction",true);
	Conquest("nss/mc01_023vs.nss","MourouSET",true);
	

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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mc01_024vs.nss";

}

scene mc01_023vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_022vsa.nss"
//ǰ�ե����롡"mc01_022vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}
	//$First_Battle_Damage = 1;

//������
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateTextureEX("�}�ץ����V��", 110, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	CreateTextureSP("�}�ձ���", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	CreateEffect("�}�������\", 18000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("�}�������\","�}�������\");
	Fade("�}�������\", 0, 0, null, true);
	Delete("�ϱ���");

	CreateSE("SEL01","se����_��_��Ġ����01_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);

	$x=0;
	$y=0;
	$z=30;
	MourouAction();
	Zoom("�}�ץ����V��", 0, 1100, 1100, null, true);
	Fade("�}�ץ����V��",3000,500,null,false);

	Fade("�}�������\", 1000, 750, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���о����������𽥴�Ƥ����ë����ʧ��
�����������౻��š��������С�

��������⡣
��һ���������ָо���������·һ����

��һ���᳹�׳��٣���Ҳ�ز�ȥ�ˡ�
��
{	SetVolume("SEL*", 1000, 500, null);
	Fade("�}�������\", 1000, 300, null, false);}
�����������С�

{	SetVolume("SEL*", 1000, 0, null);
	Fade("�}�������\", 1000, 0, null, false);
	Fade("�}�ץ����V��", 1000, 0, null, false);}
������������<RUBY text="����">����</RUBY>��
���һ�δ���ʹ����Ҳ��δ�ܵ��ͷ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ֱ�������B����
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}�������\");
	Delete("�}�ץ�*");
	Delete("�ץ���*");
	Delete("�}�ձ���");

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	MyLife_Count(0,$�����饤���{����);

.//�ã��ݳ����������{����
//������󡸣ãУ�����`���ե饰���������{����
	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	MyTr_Count(0,341);
	CP_SpeedChange2(0,336,null,false);

	CP_PowerChange(0,520,null,false);

	CP_HighChange2(0,1174,null,false);
	CP_AziChange(0,18,null,false);
	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	FrameShake();

//���B���äƷ�ܞ
	CreateTextureEX("�}�����ر���", 110, Center, InBottom, "cg/bg/resize/bg204_�����ر���_01tl.jpg");
	SetVertex("�}�����ر���", center, bottom);
	//SetBlur("�}�����ر���", true, 2, 500, 30, false);

	$�������ǉ��� = 1.00;
	$�������ǽM�z���� = $�������ǉ��� * 1000;
	$���Ƅ�Ӌ����ʂ� = ImageVertical("�}�����ر���");
	$��������λ�� = $���Ƅ�Ӌ����ʂ�*($�������ǉ��� - 1) - 100;

	Zoom("�}�����ر���", 0, @0, $�������ǽM�z����, null, true);

//������󡸣ãУ��Һ����؂��{����
	$�����ؿkλ�� = 432;
	$�����ؿkλ���{�� = $�����ؿkλ��*(-1);
	$�����ؿkλ�����Ă� = $�����ؿkλ��+288;
	CreateTextureSP("�}�ݿ����،���", 100, Center, $�����ؿkλ���{��, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	SetVertex("�}�ݿ����،���", center, $�����ؿkλ�����Ă�);

	$��������kλ�� = 720;
	$��������kλ���{�� = $��������kλ��*(-1);
	$��������kλ�����Ă� = $��������kλ��+288;
	CreateTextureSP("�}�ݿ������ጟ��", 90, Center, $��������kλ���{��, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	SetVertex("�}�ݿ������ጟ��", center, $��������kλ�����Ă�);
	Rotate("�}�ݿ������ጟ��", 0, @0, @0, @-90, null,true);
	Move("�}�ݿ������ጟ��", 0, @0, @-500, null, false);

	CreateSE("SERoll01","se���L_����_��ͻ�M05");
	CreateSE("SERoll01a","se���L_����_��ͻ�M08");
	CreateSE("SERoll01b","se���L_����_��ͻ�M08");
	MusicStart("SERoll01a",0,1000,0,750,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "zoom_01_00_1", false);
	Zoom("�}�ݿ����،���", 600, 1200, 1200, null, false);
	CP_RollBarMove("@�}�ݿ����،���", 1600, -90, AxlDxl, true);

	MusicStart("SERoll01",1600,750,0,1000,null,false);
	Zoom("�}�ݿ����،���", 1000, 1500, 1500, null, false);
	Fade("�}�����ر���", 1000, 1000, null, false);
	Move("�}�ݿ����،���", 1000, @0, @300, null, false);

//������󡸣ãУ������ء�225�Ȥ��餤�ƄӤ�����٤���
	CP_AziChange(3000,-207,AxlDxl,false);
	Move("�}�����ر���", 3000, @0, $��������λ��, AxlDxl, false);

	Wait(1400);
	Delete("�}�ݿ����،���");

	SetVolume("SERoll01", 3000, 0, null);
	MusicStart("SERoll01b",0,1000,0,1000,null,false);

	Fade("�}�����ر���", 1600, 0, null, false);
	Move("�}�ݿ������ጟ��", 1600, @0, @500, Dxl3, false);

	Wait(600);

	CP_RollBarMove("@�}�ݿ������ጟ��", 1500, 0, Dxl1, true);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CP_SpeedChange(0,336,null,false);
	CP_HighChange(0,1174,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ٶϲ����ʶ����ʵ������һ��ʹ��������ʵ
���硣
��ֻ����˾ͼ����ķ���ȫ���������������������߿�
��Ϊʱ���硣

�����˺ܿ�������Ϯ����
�����㷴������������Ҫ��������ʵ�ֳ��׷�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}�����ر���*");

//�����T��̽��
	Move("�}�ݿ������ጟ��", 300, @0, -1008, AxlDxl, true);

	WaitKey(200);

	Move("�}�ݿ������ጟ��", 300, -106, @0, AxlDxl, true);

	WaitKey(200);

	Move("�}�ݿ������ጟ��", 300, -406, @0, AxlDxl, true);

	WaitKey(200);

	Move("�}�ݿ������ጟ��", 300, -256, @0, AxlDxl, true);

	WaitKey(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������������

�������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc01/023vs0010a00">
��������
���������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/023vs0020a01">
����������������

//��������
<voice name="����" class="��������" src="voice/mc01/023vs0030a01">
���ǡ���
�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 2000, 0, null);

//�����������򤯡��¤η�
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	Move("�}�ݿ������ጟ��", 300, @0, @-288, AxlDxl, false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Cockpit_AllFade0();

	Delete("�}�ݿ������ጟ��");
	CreateTextureSP("�}�ݱ���", 100, Center, -1250, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

	CreateSE("SE05","se���L_����_�ռ�����01");
	CreateTextureSP("�}�ݺ���", 1000, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Zoom("�}�ݺ���", 0, 20, 20, null, true);

	Zoom("�}�ݺ���", 100000, 0, 0, Dxl2, false);
	Move("�}�ݺ���", 100000, @0, @288, Dxl2, false);

	Move("�}�ݱ���", 650, @0, @-288, AxlDxl, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_0", true);

	SetVolume("@mbgm*", 3000, 0, null);

//�����¤��Ƥ椯���å������`
	MusicStart("SE05",0,750,0,500,null,false);
	SetVolume("SE05", 10000, 0, null);

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/023vs0040b33">
�������������ޡ���

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/023vs0050b33">
���޹�������������������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ֻ�д�����װ��ͨ�ţ���Ȼ���Ҹ߳���־��
������ɱ¾֮�������У�����ɥʧ���Ե���̬Ҳ��ӹ��
�ɡ�

�����ǣ��з�����ȴ�����䡣
��ŭ�����ң�������֣�ͬʱ����������������Ķ���
����һ�ж���ͽ�͡����ﱻ����������ȥ��

����ħ֮�˵����������̫���Ե����ˡ�
���������ͲҲû�¡�

��Ȼ������Ϊʲô��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/mc01/023vs0060a01">
����Ȼʹ����ҩ��ɡ���



{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/023vs0070a00">
����������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/023vs0080a01">
������ͻȻ�������͡�
���뵥�������Ĳ�ͬ������ǿ������������
<RUBY text="������������">��Ӳ���˻�ȥ</RUBY>����

//��������
<voice name="����" class="��������" src="voice/mc01/023vs0090a01">
�������ܶ���֮��
��������ȡ��������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/023vs0100a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��Ŀ�͵�Ӱ��Զȥ��
������<RUBY text="����">׹��</RUBY>��������ǿ<RUBY text="����">����</RUBY>�����ٶ��൱֮�졣
�ʹ���½�Ļ������������൱���ص��𺦰ɡ�

����ʹ����ʵ��װ�ױ��������Ա�ȫ��������
������Ҳ�޿ɱ��⡣

������������ȡ�����Ľ�֡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc01/023vs0110a00">
��װ��֮���Ǹ����������ء�����


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/023vs0120a01">
��˭֪��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ܞ�Q
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	Move("�}�ݱ���", 300, @0, @-288, AxlDxl, false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 100, Center, InBottom, "cg/bg/resize/bg002_��a_01.jpg");

	Move("�}�ݱ���", 650, @0, @288, AxlDxl, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������Ȼ�������ʣ��ҷ����뿪��
����֮�����ϰ�������

������ǰ�������¡�
����Ϊ����������ľ�ʱ�䡣������֦С��ĵ绰
֮�󣬵��׾����೤ʱ�����ء�

�����ܷ���ʲô�£��ܼ�ʱ�ϵ��ͺá���

��ϣ���������𳤡���ƽ�����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Σ�ʤä������w��Ǥ�
	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	WaitKey(1000);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc01_024vs.nss"

.//�ץ�����======================================================

..//��Ġ�ιĄ�
function MourouAction()
{
	CreateProcess("�ץ������V", 5000, 0, 0, "MourouSET");
	SetAlias("�ץ������V","�ץ������V");
	Request("�ץ������V", Start);
	Request("�ץ������V", Disused);
}

function MourouSET()
{
	begin:
	while(1)
	{
	$X1 = $x;
	$X11 = ($X1 / 9) * 1 + Random($z);
	$X12 = ($X1 / 9) * 2 + Random($z);
	$X13 = ($X1 / 9) * 3 + Random($z);
	$X14 = ($X1 / 9) * 4 - Random($z);
	$X15 = ($X1 / 9) * 5 + Random($z);
	$X16 = ($X1 / 9) * 6 + Random($z);
	$X17 = ($X1 / 9) * 7 - Random($z);
	$X18 = ($X1 / 9) * 8 + Random($z);

	$Y1 = $y;
	$Y11 = ($Y1 / 9) * 1 - Random($z);
	$Y12 = ($Y1 / 9) * 2 - Random($z);
	$Y13 = ($Y1 / 9) * 3 - Random($z);
	$Y14 = ($Y1 / 9) * 4 + Random($z);
	$Y15 = ($Y1 / 9) * 5 + Random($z);
	$Y16 = ($Y1 / 9) * 6 - Random($z);
	$Y17 = ($Y1 / 9) * 7 + Random($z);
	$Y18 = ($Y1 / 9) * 8 + Random($z);

	BezierMove("@�}�ץ����V��", 5000, (@0,@0){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X1,@$Y1), null, true);
	}

}