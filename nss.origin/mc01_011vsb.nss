

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

scene mc01_011vsb.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc01_011vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_011vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//������x��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}�ݱ���", 100, Center, InBottom, "cg/bg/resize/bg002_��a_01.jpg");
	Move("�}�ݱ���", 0, @0, @200, Dxl2, false);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc01/011vs0230a00">
���������ı䷽�롣
�������뿪ս������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0240a01">
���������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Ȼ�ҵľٶ��ò�������Ϊ�μ��ڸ�·�Ĵ����е���
Щ��ƽ���������ջ����������ҵ����
��Ҳ�����Ե����ս�⣬��ҪԶ����Ī���־������
��ռ�Ϸ硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��܉���䤨���x��
	CreateSE("SE01","se���L_����_���ϕN01");
	CreateSE("SEL01","se���L_����_������02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	Zoom("�}�ݱ���", 300, 1500, 1500, Dxl2, false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}�ݱ���");
	CreateTextureSP("�}�ձ���", 100, 100, -1200, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Request("�}�ձ���", Smoothing);
	//SetBlur("�}�ձ���", true, 2, 500, 60, false);
	Move("�}�ձ���", 650, @0, @300, Dxl2, false);

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	//$First_Battle_Damage = 1;//�ǥХå���

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

	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,402);
	CP_SpeedChange(0,482,null,false);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1287,null,false);
	CP_AziChange(0,281,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove("@�}�ձ���", 0, -10, Dxl2, false);

	FrameShake();

	MusicStart("SEL01",2000,1000,0,1500,null,true);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

//������󡸣ãУ��ϕN���ʤ����·��Ȥ��ݳ���
	MyTr_Count(400,482);
	CP_SpeedChange(400,588,null,false);

	CP_PowerChange(400,800,null,false);

	CP_HighChange(400,1513,null,false);

	CP_AziChange(400000,261,DxlAuto,false);
	CP_AltChange(400,0,null,false);

	CP_RollBarMove2(5150,-3,null,false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc01/011vs0250a00">
����׷�������𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0260a01">
�������š�
�������ٶȺܿ졣��

//��������
<voice name="����" class="��������" src="voice/mc01/011vs0270a01">
��������ȥ�Ļ����ܿ�ͻᱻ׷���ˡ���
����ô�죿��


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc01/011vs0280a00">
����ָղŵķ��롣
���������ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0290a01">
���뱻�Ǹ��������Լ���ƨ���Ϻݺ�ҧ��
һ���𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/011vs0300a00">
������������������ߵĳ��谡����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������;�к��п��������������Ա����Ϯ����һ
�㣬����Ҫ���ǣ�����˶����߶�������Ӧ�ܻ�ġ�
��������������������ĳ���֮��ӡ����Ӧ��������
���ľ�����ϴˢ��

������Σ����赣��������⡣
����Ȼ���˵��ٶȺܿ죬�������ӽ���������ս������
��֮ǰ���Ҿ��ܵ���Ŀ�ĵ��ˡ�

�������������������ʱ��<k>
���������Ѿ�����ǰ�ˡ�
</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ��ܩ`�ǥ��`�۩`��k��
	CreateSE("SE02","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE02",0,800,0,1000,null,false);

	$�Еr�g=RemainTime("SE02")/2;
	WaitKey($�Еr�g);

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//������
//���h��ֱ�ġ������`��ɢ�A��
	CreateSE("SE01","se���L_����_�z��������03");
	CreateSE("SE01a","se���L_�Ɖ�_�z03");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

//������󡸣ãУ������ݳ��_ʼ��
	MyLife_Count(300,31);
	CP_IHPChange(300,1,null,false);

	MyTr_Count(300,51);
	CP_SpeedChange2(1500,142,Dxl2,false);

	CP_HighChange2(1500,1519,Dxl2,false);
	CP_AltChange(1500,20,Dxl2,false);
	Move("�}�ݿձ���", 1500, @0, @-60, Dxl2, false);

	FrameShakeDelete();
	Shake("@CP_Frame*", 1500, 0, 50, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿձ���", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

	WaitKey(1000);

	CreateSE("SE02","se���L_�n��_�zɢ�A");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 30000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, Axl2, true);

//������Ц������ȫ���ؤͤ롣
//���ƥ����ȟo����

	WaitKey(1000);

	CreateColorEX("�}ɫ�\", 30000, "#000000");
	Fade("�}ɫ�\", 5000, 1000, null, false);

	CreateVOICE("С��","mc01/011vs0301");
	MusicStart("С��",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("С��");
	WaitKey($�Еr�g);

	CreateColorEX("�}ɫ�\�r", 30010, "#000000");
	Fade("�}ɫ�\�r", 2000, 1000, null, true);

	SetVolume("С��", 2500, 0, null);

	WaitPlay("С��", null);

	ClearWaitAll(0, 2000);


/*

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/011vs0310b33">
��������������������������
���ǺǺǺǣ�����������������������������

{	NwC("cg/fw/nw������.png");}
//���ܩ`�ǥ���
<voice name="�ܩ`�ǥ�" class="�ܩ`�ǥ�" src="voice/mc01/011vs0320b07">
��������������������������
����������������������������

{	NwC("cg/fw/nw������.png");}
//���饤���`��
<voice name="�饤���`" class="�饤���`" src="voice/mc01/011vs0330b09">
��������������������������
�����ٺٺٺٺٺٺٺٺٺٺٺ٣���

{	NwC("cg/fw/nw������.png");}
//����ե��`��
<voice name="��ե��`" class="��ե��`" src="voice/mc01/011vs0340b12">
������ѽ��ѽ����ѽ��ѽ��ѽ��
���ǺǺǺǣ��ǺǺǺǺǺǺǺǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/


//�����`�४�`�Щ`

..//������ָ��
//�Υե�����

}


