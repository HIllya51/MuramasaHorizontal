//<continuation number="600">

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

scene md05_016vs.nss_MAIN
{

	

	CP_AllSet("����");

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
	#bg106_��ʿɽ�h��b_00=true;
	#ev242_���񼤤����k��_a=true;
	#bg202_�����ݳ�����ɽ_02=true;
	#ev242_���񼤤����k��_d=true;
	#ev243_�رܙC�Ӥ�Ȥ����_a=true;
	#ev243_�رܙC�Ӥ�Ȥ����_c=true;
	#ev243_�رܙC�Ӥ�Ȥ����_d=true;
	#ev243_�رܙC�Ӥ�Ȥ����_e=true;
	#ev241_ɭ�ǰk�⤹�����_a=true;
	#bg023_��Դ̫�μ�_03a=true;
	#bg020_ɽ�}�ӵ�_01=true;
	#ev245_�L����������_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "md05_017vs.nss";

}

scene md05_016vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_015.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//����ʿɽ�Ͽ�
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg106_��ʿɽ�h��b_00.jpg");

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�������������ʂ�
	CreateTextureEX("�}��", 3000, Center, -30, "cg/ev/ev242_���񼤤����k��_b.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ʿɽ�Ͽա���
��ԭ�������硣ԭ����ʱ�䣡

{	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	Fade("�}��", 1000, 1000, null, false);}
�����Ӷ��£��ǽ���
���ۼ��������������������ҷ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/016vs0010a00">
����������
���ص�ԭ����ʱ�գ�����ζ�Ž��ٶȺ��Ǹ�
���񡱽���ս���˰ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0020a01">
������ǧ��С�ġ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 0, null);

//��������������`��
//���ܤ��`��
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bm.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bm.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	SoundPlay("@mbgm13",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��û�п��г����ڸп��С�
��ת��������װ�ף��ڿ��з����Ŵ��������ŷ���
�������������ѡ�

��һ˿��иҲ�����У�ֻ�ܾ�������ֱ�ӹ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0030a01">
���������������ѹ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0040a00">
���ǰ������ǡ���
������������˿ռ�Ť�����ͼ��ȵ�ʱ��Ť������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0050a00">
���쵯�������˰ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0060a01">
������ʲô�������ģ������������Ļ�������
��û���꣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g����
//���ܤ�
//�����g����
//���ܤ�

//��������
//���ܤ�
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSPadd("�}����", 10010, Center, Middle, "cg/ev/ev243_�رܙC�Ӥ�Ȥ����_c.jpg");
	CreateTextureSP("�}��", 10000, Center, Middle, "cg/ev/ev243_�رܙC�Ӥ�Ȥ����_c.jpg");
	Zoom("�}��", 0, 1100, 1100, Dxl2, false);
	Zoom("�}����", 0, 1300, 1300, null, false);
	Request("�}��*", Smoothing);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������ȷʵ��
�������������޷������������Ť��ʱ�գ��ͷ��ƻ�
һ�еĲ�����

����ȫû�кľ������ơ�
��
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(0,620);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,800,null,false);

	CP_SpeedChange(0,501,null,false);
	MyTr_Count(0,509);

	CP_HighChange(0,2731,null,false);
	CP_AziChange(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CloudZoomSet(1000);
	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");

	CloudZoomStart(400,800,800,300,400);
	MoveFFP1("@�}�ݺ��ձ���",10000);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	FadeDelete("�ϱ���", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md05/016vs0070a00">
��֪���ж����ˡ�
���ƺ�����ͬʱ��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0080a00">
�����ң�Ҳ�޷������ж�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0090a01">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ʹ�������ض���ÿ��һ�֣������ٶ�ʹ�ã������´�
���������ʱ������
����ֻ���޶���Χ�Ŀռ�Ť������ʱ����Ҳ����������
���������ƺ��Ͳ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0100a01">
����ʹ�����ܺͽӽ����ޣ�
Ҳ����������ʹ�ðɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0110a00">
��������������ˡ�
������˵��û�����̶ֳȵ�����������ʤ�㡣��
 
</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ֻ��һ�������������ƶ���ս�����������ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g����
//���ܤ�
	CreateSE("SE01","se����_������_���g����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("�}��д��", 1010);
	CreatePlainEX("�}��д", 1000);
	Fade("�}��д*", 300, 500, null, false);
	Zoom("�}��д*", 300, 1500, 1500, Dxl2, false);
	Wait(200);
	DrawEffect("�}��д", 1000, "HighWave", 300, 300, Dxl2);
	FadeDelete("�}��д��", 600, true);

	CreateSE("SE01a","se���L_����_��ͻ�M02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);
	Delete("�}��д");
	CreateTextureSP("�}�ݻرܿ�", 18000, Center, -340, "cg/ev/ev241_ɭ�ǰk�⤹�����_c.jpg");
	Request("�}�ݻرܿ�", Smoothing);
	SetBlur("�}�ݻرܿ�", true, 2, 500, 30, false);
	Shake("�}�ݻرܿ�", 450, 0, 30, 0, 0, 1000, Dxl2, false);
	Move("�}�ݻرܿ�", 450, 250, -620, Dxl2, false);
	Zoom("�}�ݻرܿ�", 450, 1500, 1500, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 1000, "slide_04_01_1", true);

	Wait(500);

//��������
//���ܤ�
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSPadd("�}����", 20010, Center, Middle, "cg/ev/ev243_�رܙC�Ӥ�Ȥ����_d.jpg");
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ev/ev243_�رܙC�Ӥ�Ȥ����_d.jpg");
	Zoom("�}��", 0, 1100, 1100, Dxl2, false);
	Zoom("�}����", 0, 1300, 1300, null, false);
	Request("�}��*", Smoothing);

	Cockpit_AllFade0();
	MoveFFP1stop();
	CloudZoomDelete(0,false);

	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//��ͻ�M��һ��
//����������ͣ�
	CreateSE("SE03","se���L_����_��ͻ�M01");
	MusicStart("SE03",0,1000,0,850,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("�}��*");

	CreateSE("SE03a","se���L_����_��ꪏ���02");
	CreateSE("SE03b","se���L_�n��_�nͻ01");
	CreateTextureSPadd("�}����", 18010, -55, -190, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);

	MusicStart("SE03a",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1500,null,false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("�}��*", 150, -615, @0, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 1000, "zoom_01_00_1", true);
	FadeDelete("�}����", 200, true);

	CreateSE("SE03c","se����_������_�����02");
	MusicStart("SE03c",0,1000,0,1000,null,false);

//���˱�
	CreateSE("SE04","se���L_����_��ͻ�M02");
	MusicStart("SE04",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");
	Delete("�}��*");

	CloudZoomSet(2000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@-1500,@0,null,false);

	CreateTextureSP("�}��������", 1000, -800, -150, "cg/st/3d������K_�T��_ͨ��b2.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 750, 750, null, true);

	Move("�}��������", 800, -700, -245, Dxl2, false);
	Shake("�}��������", 2160000, -2, 4, 0, 0, 1000, null, false);

	CreateTextureSP("�}�ݱ���", 100, InLeft, InBottom, "cg/bg/bg204_�����ر���c_02.jpg");
	$������=ImageHorizon("�}�ݱ���")-1100;
	$����M�z��=$������*(-1);
	Move("�}�ݱ���", 80000, $����M�z��, @0, DxlAuto, false);

	CreateSE("SEL04a","se���L_����_������01_L");
	CreateSE("SEL04b","se���L_����_������02_L");
	MusicStart("SEL04a",2000,750,0,1000,null,true);
	MusicStart("SEL04b",2000,750,0,1500,null,true);

	FadeDelete("�}ɫ��", 500, false);
	DrawTransition("�}ɫ��", 1000, 1000, 0, 100, null, "cg/data/slide_07_00_1.png", false);

	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0120a01">
����ʹ�ó�������֮�����Ϲ���Ŀ�ꣿ��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0130a00">
���ԡ�
����׼��϶һ����ȥ��Ȼ�����롣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL04*", 1000, 0, null);

	CreateSE("SE01L","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SE01L",1000,750,0,500,null,false);
	CreateTextureEX("�}�ݽ���", 15000, Center, Middle, "cg/ev/ev242_���񼤤����k��_a.jpg");
	Move("�}�ݽ���", 6000, @0, -30, DxlAuto, false);
	Fade("�}�ݽ���", 1000, 1000, null, true);

	Delete("�}�ݱ���");
	Delete("�}��������");
	CloudZoomFade(0,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ҷ�����������ԥ���ͻᱻ��������ȫ��λ����
���ɡ�
������һ���Ա�֮���£�ȴ�������¡�

�����ǣ�ֻҪ����и����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
//���ܤ�
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSPadd("�}����", 20010, Center, -115, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bl.jpg");
	CreateTextureSP("�}��", 20000, Center, -115, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bl.jpg");
	SetBlur("�}��", true, 2, 500, 30, false);
	Zoom("�}��", 0, 1100, 1100, Dxl2, false);
	Zoom("�}����", 0, 1300, 1300, null, false);
	Request("�}��*", Smoothing);
	Delete("�}�ݽ���");

	Rotate("�}��*", 200, @0, @0, @-20, Dxl2,false);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}��", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Wait(300);

//��ͻ�M������������
	CreateSE("SE02","se���L_����_��ͻ�M01");
	MusicStart("SE02",0,1000,0,850,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("�}��*");

	CreateSE("SE02a","se���L_����_���������ؓ�");
	CreateTextureSPadd("�}����", 18010, -770, -490, "cg/ev/resize/ev929_��������������l.jpg");
	CreateTextureSP("�}��", 18000, -770, -490, "cg/ev/resize/ev929_��������������l.jpg");
	SetVertex("�}��*", 1700, 760);
	Zoom("�}����", 0, 1000, 5000, null, false);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Zoom("�}����", 400, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 40, 0, 0, 1000, Dxl3, false);
	DrawDelete("�}ɫ�\", 150, 1000, "zoom_01_00_1", true);
	FadeDelete("�}����", 200, true);

	Wait(200);

//����������ͣ�
//���˱�
	CreateSE("SE03","se���L_�Ɖ�_���k05");
	MusicStart("SE03",0,1000,0,1500,null,false);
	CreateSE("SE03a","se����_������_��ν~��");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݽ���", 18010, Center, InTop, "cg/ev/ev241_ɭ�ǰk�⤹�����_e.jpg");
	CreateTextureSP("�}�ݽ���", 18000, Center, InTop, "cg/ev/ev241_ɭ�ǰk�⤹�����_e.jpg");
	SetVertex("�}�ݽ���", 800, 170);
	Zoom("�}�ݽ���", 1000, 1200, 1200, null, false);
	FadeDelete("�}�ݽ���", 1000, true);
	Delete("�}��");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0140a01">
���������ż��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0150a00">
�������Լ��Ĺ���û��Ч��
<RUBY text="��������">��������</RUBY>���ش�Ҳ���ᷳ�ɡ�
���ܺá���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0160a00">
�������񡱷�ŭ���ѣ�������Ϊ���ģ�Ĺ���֮
ʱ�������ҷ���ʤ֮������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0170a01">
������Խ�ͣ�Խ���ײ�����Ŀ�϶������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��û��
������Ұ̫������������Űε��Ļ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0180a01">
�������Ǵ�ݾ��߰ɡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0190a00">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ʹ���տ��ܱ���ҧ����������Ҳ�����ߵķ�����
ϣ����������������������ĳ̶ȡ�
�����ң�����ĩ·�Ŀ����Ծ��Բ��͡�

���Ƿ��ܿ�Խ���������᧿�Σ�����ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 19900);
	CreateColorSP("�}ɫ�\", 15000, "#000000");
	DrawDelete("�ϱ���", 150, 1000, "slide_01_03_1", false);

	Delete("�}�ݽ�*");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("�}�ݱ���", 100, InRight, -900, "cg/bg/bg204_�����ر���b_02.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d������K_�T��_���L.png");
	Zoom("�}�����}", 0, 500, 500, null, true);
	Request("�}�����}", Smoothing);

	Move("�}�����}", 0, @316, @0, null, true);
	Shake("�}�����}", 600000, 2, 0, 0, 0, 1000, null, false);

	Zoom("�}�����}", 450, 750, 750, DxlAuto, false);
	Move("�}�����}", 6000, @-60, @0, DxlAuto, false);
	Move("�}�ݱ���", 600000, -100, @0, null, false);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("�}ɫ�\", 150, 1000, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md05/016vs0200a00">
�������٣�Ϊ�˲����Լ����޴�����ڣ�Ŭ��
�ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0210a01">
���˽⡣
�����ֻ���Ҵ��ߵ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g����
	CreateSE("SE01","se����_������_���g����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("�}��д��", 2110);
	CreatePlainEX("�}��д", 2100);
	Fade("�}��д*", 0, 500, null, false);
	DrawTransition("�}��д*", 300, 0, 1000, 100, DxlAuto, "cg/data/spiral_01_00_0.png", false);
	Zoom("�}��д*", 300, 1500, 1500, Dxl2, false);
	Wait(200);
	DrawEffect("�}��д", 1000, "HighWave", 300, 300, Dxl2);
	FadeDelete("�}��д��", 600, true);

//���ܤ�
	CreateSE("SE01a","se���L_����_���ϕN01");
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}�����}", 2000, @-100, @0, null, false);
	Wait(1200);
	Fade("�}ɫ��", 0, 1000, null, true);
	Fade("�}ɫ��", 500, 0, null, false);
	DrawDelete("�}ɫ��", 500, 1000, "slide_05_00_1", false);
	Move("�}�����}", 300, @-2000, @0, Dxl3, true);
	Wait(200);

//����������С��
//���ܤ�
	CreateSE("SE02","se���L_��_����ӥƥ��֥饹��С_�k��");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 10010, Center, Middle, "cg/ev/ev243_�رܙC�Ӥ�Ȥ����_e.jpg");
	CreateTextureSP("�}��", 10000, Center, Middle, "cg/ev/ev243_�رܙC�Ӥ�Ȥ����_e.jpg");
	Zoom("�}��", 0, 1100, 1100, Dxl2, false);
	Request("�}��*", Smoothing);
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 500, true);

	Delete("�}�����}");
	Delete("�}�ݱ���");
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��������ë���Ȼ���������������ѣ�
��ֱ�ƶ�ȥ��

�����������������ظ���һ����һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0220a01">
�������ף��������ղš���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M
	CreateSE("SE01","se����_����_���S03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, -590, -140, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -590, -140, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);
	Wait(200);

//�􉈷��ء��ʂ�
	CreateSE("SE02","se����_�z_���ͥ륮�`���01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, -312, -240, "cg/ev/resize/ev905_����늴œĵ�_cm.jpg");
	CreateTextureSP("�}��", 3000, -312, -240, "cg/ev/resize/ev905_����늴œĵ�_cm.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);
	Wait(200);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0230a01">
���������ȵȣ�
�����ɣ���

//��������
<voice name="����" class="��������" src="voice/md05/016vs0240a01">
����ʲô��ֵĸо������������塪����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0250a00">
����?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����壿
���������������˼��װ�ö����߱��ġ��񡱡�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������С���ʂ�
	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",0,1000,0,1500,null,true);
	CreateTextureSPadd("�}����", 10010, Center, -30, "cg/ev/ev242_���񼤤����k��_b.jpg");
	CreateTextureSP("�}��", 10000, Center, -30, "cg/ev/ev242_���񼤤����k��_b.jpg");
	SetVertex("�}��*", center, 220);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 2000, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 2000, false);
	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����������������?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0260a01">
���ܿ�����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0270a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��Ϊ�Σ���ôͻȻ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 300, 0, null);

	CreateSE("SE01L","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SE01L",0,750,0,500,null,true);

//���k��
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��С_�k��");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 10010, Center, -30, "cg/ev/ev242_���񼤤����k��_d.jpg");
	CreateTextureSP("�}��", 10000, Center, -30, "cg/ev/ev242_���񼤤����k��_d.jpg");
	SetBlur("�}��", true, 2, 500, 60, false);
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 1100, 1100, Dxl2, false);

	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1100, 1100, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 500, true);

	Wait(200);

//���ܤ��`��
	CreateSE("SE02","se���L_����_��ͻ�M01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 10010, -580, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_al.jpg");
	CreateTextureSP("�}��", 10000, -580, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_al.jpg");

	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Move("�}��*", 800, -420, @0, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md05/016vs0280a00">
����������Ϊֹ�����������ˣ�
��������ô˵�𣡡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0290a01">
�����ԣ�
����������һ����������
Ϊ���ܽ�������!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0300a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��������������ת��һ����ͷ�Ͽɡ�
��֮ǰ����������ǰ����������ģҪС��

�����ǣ�������С��ı�Ǵ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0310a01">
�����ڼ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������С��
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��С_�k��");
	MusicStart("SE01",0,1000,0,1200,null,false);

//���ܤ�
	CreateSE("SE01a","se���L_����_��ͻ�M02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 10010, -180, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_cm.jpg");
	CreateTextureSP("�}��", 10000, -180, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_cm.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	SetBlur("�}��", true, 2, 500, 30, false);
	Move("�}��*", 300, -256, @0, Dxl2, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 300, true);

//����������С��
	CreateSE("SE02","se���L_��_����ӥƥ��֥饹��С_�k��");
	MusicStart("SE02",0,1000,0,800,null,false);

//���ܤ�
	CreateSE("SE02a","se���L_����_��ͻ�M02");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݶ���", 10110, -10, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_dm.jpg");
	CreateTextureSP("�}�ݶ�", 10100, -10, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_dm.jpg");
	Zoom("�}�ݶ���", 0, 1200, 1200, null, false);
	SetBlur("�}�ݶ�", true, 2, 500, 30, false);
	Move("�}�ݶ�*", 300, -256, @0, Dxl2, false);
	Zoom("�}�ݶ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݶ���", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݶ���", 300, true);

//����������С��
	CreateSE("SE03","se���L_��_����ӥƥ��֥饹��С_�k��");
	MusicStart("SE03",0,1000,0,1000,null,false);

//���ܤ�
	CreateSE("SE03a","se���L_����_��ͻ�M02");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}������", 10210, -490, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_em.jpg");
	CreateTextureSP("�}����", 10200, -490, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_em.jpg");
	Zoom("�}������", 0, 1200, 1200, null, false);
	SetBlur("�}����", true, 2, 500, 30, false);
	Move("�}����*", 300, -256, @0, Dxl2, false);
	Zoom("�}������", 200, 1000, 1000, Dxl2, false);
	Shake("�}������", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}������", 300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/md05/016vs0320a00">
�������ȳ��ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����ô������Σ�Ҳ�޷�̤������빥���ķ�Χ��
��������һ����ֻ�ܵȴ����������޵ĵ�����
������������

��һ�����£���Ҫ�ٴΰں�ս����̬��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0330a01">
���˽⡪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	DrawDelete("�ϱ���", 150, 100, "zoom_01_00_1", true);

	Cockpit_AllFade2();

	MyLife_Count(0,620);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,720,null,false);

	CP_SpeedChange(0,612,null,false);
	MyTr_Count(0,504);

	CP_HighChange(0,2749,null,false);
	CP_AziChange(0,92,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("�}�ݺ��ձ���", 510, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateSurfaceEX("�}��������", 500,1000,"@�}�ݺ��ձ���");
	Fade("�}��������", 0, 1000, null, true);

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	MoveFFP1("@�}�ݺ��ձ���",10000);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	DrawDelete("�}��ܞ", 150, 100, "zoom_01_00_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0340a01">
������ʹ������

//��������
<voice name="����" class="��������" src="voice/md05/016vs0350a01">
�����У�
���󷽡���������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0360a00">
��������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g�֤�
	CreateSE("SE01","se����_������_���g����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXsub("�}��д��", 2110);
	CreatePlainEXsub("�}��д", 2100);
	Fade("�}��д*", 0, 700, null, false);
	DrawTransition("�}��д", 300, 0, 600, 100, DxlAuto, "cg/data/circle_02_00_0.png", false);
	DrawTransition("�}��д��", 300, 0, 600, 100, DxlAuto, "cg/data/circle_02_00_0.png", false);
	Zoom("�}��д*", 300, 1500, 1500, Dxl2, false);
	Wait(200);
	DrawEffect("�}��д", 1000, "SuperWave", 300, 300, Dxl2);
	FadeDelete("�}��д��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���ռ�Ť����
��
���������ǵģ�<RUBY text="��������">�˱�֮��</RUBY>��

��żȻ��?!
������˵��������ˣ�

���������壬�յ�����������?!
���Ǹ����񡱡���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x��
	MoveFFP1stop();

	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 3000, 500, null, false);

	SetVolume("SEL*", 1000, 0, null);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_AltChange(5000,45,null,false);
	Move("�}�ݺ��ձ���", 5000, @-200, @0, null, false);

	CP_SpeedChange(300,633,null,false);
	MyTr_Count(300,542);
	Zoom("�}��������", 300, 2000, 2000, Dxl2, false);

	CP_AziChange(6000,0,null,false);
	CP_RollBarMove2(1500,60,null,false);
	Rotate("�}��������", 1500, @0, @0, @-45, null,true);

//������ը��
	CreateSE("SE02","se���L_�Ɖ�_����02");
	CreateSE("SE02a","se���L_�n��_���Ľ��e02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,500,null,false);
	CreateColorSPadd("�}ɫ��", 19900, "#FFFFFF");
	Delete("�}��*");
	Delete("�}����*");
	Delete("�}�ݺ��ձ���*");

	Cockpit_AllFade0();
	CloudZoomDelete(0,false);
	MoveFFP1stop();

	CreateTextureSP("�}�ݱ���", 100, Center, -30, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Shake("�}�ݱ���", 4000, 0, 30, 0, 0, 1000, null, false);

	Wait(100);

	FadeDelete("�}ɫ��", 3000, false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/md05/016vs0370a00">
���С�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��Σ�ա�
���Һ�ֻ���ҽ�װ����΢���˵ĳ̶ȡ�<k>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01L","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SE01L",1000,750,0,500,null,false);
	CreateTextureEX("�}�ݽ���", 10000, Center, -120, "cg/ev/ev242_���񼤤����k��_a.jpg");
	Move("�}�ݽ���", 6000, @0, -30, DxlAuto, false);
	Fade("�}�ݽ���", 1000, 1000, null, true);

	Wait(2000);

//����������С���ʂ�
	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",0,1000,0,1500,null,true);
	CreateTextureSPadd("�}����", 10010, Center, -30, "cg/ev/ev242_���񼤤����k��_b.jpg");
	CreateTextureSP("�}��", 10000, Center, -30, "cg/ev/ev242_���񼤤����k��_b.jpg");
	SetVertex("�}��*", center, 220);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 2000, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 2000, false);
	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��������������һ��!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0380a01">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0390a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}��", 50000, 2000, 2000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�����������ޡ�
���޷��رܡ�

��������������յ�һ�ǡ�

����һ�����ģ�
���ս���������Ƚ���

�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 600, 0, null);

//�����������ͥ륮�`���ϕN
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�}��");
	Delete("�}�ݽ���");

	CreateColorEXadd("�}ɫ늴�҆��", 2000, "#333399");
	CreateColorEXadd("�}ɫ늴�҆�ݶ�", 2010, "#FFFFFF");

	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	CreateTextureEXadd("�}�����߸�", 1010, Center, Middle, "cg/st/3d������K_�T��_ͨ��b.png");
	CreateTextureSP("�}������", 1000, Center, Middle, "cg/st/3d������K_�T��_ͨ��b.png");
	Rotate("�}����*", 0, @0, @0, @10, null,true);
	Zoom("�}�ݱ���", 0, 2000, 2000, null, true);
	SetBlur("�}�ݱ���", true, 2, 500, 60, false);
	SetBlur("�}����*", true, 2, 500, 60, false);

	Request("�}�ݱ���", Smoothing);
	Request("�}����*", Smoothing);

	CreateSE("SE01","se���L_����_�ռ�����01");
	MusicStart("SE01",0,1000,0,500,null,false);
	DrawDelete("�}ɫ�\", 150, 1000, "slide_01_03_0", true);

	Wait(300);

	Fade("�}�����߸�", 2000, 500, null, false);
	Zoom("�}�ݱ���", 30000, 1000, 1000, Dxl2, false);
	Zoom("�}����*", 30000, 500, 500, Dxl2, false);

	Wait(2000);

	CreateSE("SE01a","se����_늓�_���02");
	MusicStart("SE01a",0,1000,0,750,null,false);
	CreateSE("SE01b","se����_������_�����Ϥ�������");
	MusicStart("SE01b",0,1000,0,1500,null,false);
	CreateSEEX("SE01L","se���L_����_���ͥ륮�`�]���Ϥ�01_L");
	MusicStart("SE01L",0,1000,0,500,null,true);

	Fade("�}ɫ늴�҆��", 0, 1000, null, true);
	Fade("�}ɫ늴�҆�ݶ�", 0, 300, null, true);
	DrawTransition("�}ɫ늴�҆�ݶ�", 300, 0, 200, 600, null, "cg/data/circle_02_00_0.png", false);
	DrawTransition("�}ɫ늴�҆��", 300, 0, 400, 600, Dxl2, "cg/data/circle_01_00_0.png", false);
	Zoom("�}�ݱ���", 300, 1000, 1000, Dxl2, false);
	Zoom("�}����*", 300, 100, 100, Dxl2, true);

	CreatePlainEX("�}��д", 18000);
	Zoom("�}��д", 0, 1100, 1100, null, true);
	Fade("�}��д", 0, 500, null, true);
	MoveFFP1("@�}��д",1000);

	SetFwL("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/md05/016vs0400a00">
����!!��

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������С���k��
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE01",0,1000,0,1700,null,false);
	CreateTextureSPadd("�}����", 20010, Center, -30, "cg/ev/ev242_���񼤤����k��_c.jpg");
	CreateTextureSP("�}��", 20000, Center, -30, "cg/ev/ev242_���񼤤����k��_c.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Delete("�}ɫ*");
	Delete("�}�ݱ���*");
	Delete("�}����*");
	Delete("�}��*");

//������������
	CreateSE("SE02","se���L_����_���������ؓ�");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateSE("SE02a","se���L_����_���������ؓ�");
	MusicStart("SE02a",0,1000,0,500,null,false);
	CreateTextureSPadd("�}�ݴ���", 21010, Center, Middle, "cg/ev/ev929_��������������.jpg");
	CreateTextureEX("�}�ݴ�", 21000, Center, Middle, "cg/ev/ev929_��������������.jpg");
	Fade("�}�ݴ�", 0, 500, null, true);
	Zoom("�}�ݴ���", 0, 1200, 1200, null, false);
	Zoom("�}�ݴ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݴ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݴ���", 200, true);

	Wait(300);

//������
	CreateSE("SE03","se����_��x_����ӥƥ���������ʂ�");
	MusicStart("SE03",0,1000,0,800,null,false);
	SetVolume("SE03", 3000, 0, null);

	CreateSE("SE03a","se���L_�Ɖ�_�z02");
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreatePlainSP("�}��д", 30000);

	CreateColorSPadd("�}ɫ��", 22000, "#FFFFFF");
	CreateTextureSP("�}������", 20000, Center, Middle, "cg/ef/ef039_�r�g�Ƅ�.jpg");
	CreateTextureSPadd("�}��������", 20010, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSPadd("�}��������", 20020, Center, Middle, "cg/ef/ef045_���ѩ`��.jpg");

	CreatePlainSPadd("�}������������", 21110);
	CreatePlainSP("�}����������", 21100);

	Delete("�}������");
	Delete("�}��������");
	Delete("�}��������");

	Delete("�}��");
	Delete("�}�ݴ�");
	Delete("�}�ݴ���");
	Delete("�}��д");

	Cockpit_AllFade2();

	MyLife_Count(0,481);
	CP_IHPChange(0,8,null,false);
	CP_PowerChange(0,660,null,false);

	CP_SpeedChange(0,468,null,false);
	MyTr_Count(0,408);

	CP_HighChange(0,2717,null,false);
	CP_AziChange(0,350,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateSurfaceEX("�}��������", 100,1000,"@�}�ݺ��ձ���");
	Fade("�}��������", 0, 1000, null, true);

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",5000,750,0,1000,null,true);
	MusicStart("SEL01b",5000,750,0,1500,null,true);

	MoveFFP1("@�}�ݺ��ձ���",10000);

	FadeDelete("�}ɫ��", 300, false);
	Zoom("�}������������", 2000, 2000, 2000, Dxl2, false);
	FadeDelete("�}������������", 1000, false);
	Wait(500);
	FadeDelete("�}����������", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���������һ�֣������Ǳ����������˾�ˣ��һ��
�˳ɹ���
��ʩչ������������Ұ̫������һ�����ӿ�ӿ��ǰ����
������������

������֮���ᱯ���˿գ������ಢδ���֡�
  ������ûʱ�侫ȷ��׼�����ò�˵���漣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0410a01">
����������Ҫ�������ڽ�һ�������顣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0420a00">
��֮����˵����Ҫ����������֧���㡣
��������֮ǰ������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0430a00">
��������ô���£���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0440a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��û��Ԥ���е�Ѹ�ٻش�
�������������ܵġ���Ҳͬ����ֱ�治�������̬��
�ƿ�����Ҳ��������Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL01*", 1000, 0, null);

//������
	CreateSE("SE01","se����_������_��Υ��`��");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SE01L","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SE01L",2000,750,0,500,null,true);
	CreateTextureEX("�}��", 19000, Center, Middle, "cg/ev/ev237_�դ˕N�ä�����_a.jpg");
	Fade("�}��", 1000, 1000, null, true);

	CloudZoomDelete(0,false);
	Cockpit_AllFade0();
	MoveFFP1stop();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����������ƺ�û�б仯��

���Ǹ����񡱵��ж����͵�����ν���ǻ������Զ��
  ��Ū��ߵĺ��ӣ������������Ҳ�޷���

�����ǡ�
�����ڣ���������ȡ���ж�����

�����ƻ�������������������ۼ����ӵ��������Ҫ
һ�����������䡣<K>
�����ҳ��ˣ��˱ܴ���ᷢ���ռ�Ť����<K>
�����ң������ܱ�ɱ��һ����������

��˵��żȻ��Ҳ̫������˼�顣

������ս���Ե��ж���
��������λ�ζ�����ȥ����䷢��֮�£�
Ҳ�޷�˵��������<RUBY text="����">����</RUBY>һ����˼����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/md05/016vs0450a00">
��Ϊ�Σ�ͻȻ�仯�ˡ�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0460a01">
��������ʣ���ֻ�뵽һ�����ʵĻش���Ҫ
���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0470a00">
����Ȼ��΢��Ĳ���Ԥ�У�˵�ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0480a01">
����Ϊ���񡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0490a00">
��������⵫���ǽ���취����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0500a01">
���ǰ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 19900, "#000000");
	Fade("�}ɫ�\", 1500, 1000, null, true);

	CreateSE("SE01","se����_������_�����01");
	MusicStart("SE01",0,1000,0,500,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�������ߡ�
����û�������µ����Ű�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureSP("�}��", 10000, Center, -30, "cg/ev/ev242_���񼤤����k��_a.jpg");
	FadeDelete("�}ɫ�\", 1500, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0510a01">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0520a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/016vs0530a01">
���ղţ�������ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0540a00">
������������ʲô��
���Ǹо����ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
������֮����
���ղŵġ�����˼�룿

���ɽ��񴫴�����ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 19900, "#000000");
	Fade("�}ɫ�\", 1500, 1000, null, true);

	CreateSE("SE01","se����_������_�����01");
	MusicStart("SE01",0,1000,0,500,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����������ܣ�������˼�飬���ƺ�������</RUBY>
<RUBY text="������������">�޷�˳����չ</RUBY>�����ɾ�����Ϊ�Լ��ĵ��ܡ�
��Ѱ�����油���������ã��������ҵ�
<RUBY text="��">Ư����</RUBY>���������������ʡ���

�����䴵����Ϣ��ʹ֮���Ի���
������ʹ����ع��Ȫ��ռ����ͷ�ԣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("�}ɫ�\", 1500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/md05/016vs0550a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
���Ҽǵá�
����ס��ɫ���ε�˼ά������֣�
����ʵ�ϣ�����ʶ�Ĳ����ڴ̼����ҵļ��䡣

��������֪����
����֪��˼������ˡ�������������

���ںδ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01L", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

//�����롤�ڶ�Ԓ�δ�
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/bg/bg023_��Դ̫�μ�_03a.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 19900, "#000000");
	Fade("�}ɫ�\", 1500, 1000, null, true);

	CreateSE("SE01","se����_������_�����01");
	MusicStart("SE01",0,1000,0,500,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
���С���
����������̬����������Ҳ����ɢ��������

���任���ƿ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����񡢰k��
//�������
	CreateSE("SE01","se����_������_��Υ��`��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 19990, "#FFFFFF");
	Fade("�}ɫ��", 1000, 1000, Axl2, true);

	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Delete("�}ɫ�\");
	Delete("�}��");

	Wait(500);

	CreateSE("SE01a","se����_������_������");
	CreateSE("SE01b","se����_������_�������g�仯01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,500,null,false);

	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
��������������һ��ŷ�������Ȼ�����������
���񡱵����巢���仯��
����ͬˮ��֮ɭ������Σ�������ȫ��ͬ�Ĺ����ݱ䡣

����ͷ��
�����֡�
���нš�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="��������" src="voice/md05/016vs0560a01">
�����ࣿ��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/016vs0570a00">
���������ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����װ�ס�
��������װ�ס�
�����嵶��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/md05/016vs0580a00">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
������λ���ߡ�

��ȷʵ��ӡ���е���̬��

����<RUBY text="��������">�Ǹ�����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�L���Ҿ�
	EfRecoIn1(18000,600);
	CreateTextureSP("�}�������}", 16100, Center, InBottom, "cg/ev/ev958_�L���R�\��.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

//������

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/md05/016vs0590a00">
�������Ҿ�!!��

{	NwC("cg/fw/nw������.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/md05/016vs0600b45">
�����������㷢�����𡭡�
��ȾѪ�ĳ�С��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
//���޴�ʰ˰�ʽ�o�T�����L���˘���
//����L�����ˤ��룿�����ļӹ��ǡ�
	CreateTextureEX("�}�ţ�", 19900, Center, InBottom, "cg/ev/ev245_�L����������_a.jpg");
	Fade("�}�ţ�", 1500, 1000, null, false);
	Move("�}�ţ�", 3750, @0, -310, DxlAuto, true);

	Wait(1000);

	CreateSE("SE01","se����_냇��_�z�ǈ���02");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreatePlainEXadd("�}��д", 19990);
	SetVertex("�}��д", center, bottom);
	Fade("�}��д", 0, 500, null, true);
	Zoom("�}��д", 1000, 1100, 1100, Dxl3, false);

	Wait(800);

	FadeDelete("�}��д", 300, true);
	WaitPlay("SE01", null);

//��������һ�إ��`���Фäƣ£ǣ͉䤨�뤫��

	ClearWaitAll(1000, 3000);

}

..//������ָ��
//�Υե����롡"md05_017vs.nss"