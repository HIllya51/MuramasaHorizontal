//<continuation number="2570">

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

scene ma04_016vs.nss_MAIN
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

	#bg073_��a_03=true;

//	#ev996_�������åȥ���=true;
	#ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��=true;
	#ev270_������ޥ󥿩`�����_a=true;
	#ev270_������ޥ󥿩`�����_b=true;
	#ev947_�����ؓĚ���=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	CP_AllDelete();

	$PreGameName = $GameName;

	$GameName = "ma04_017.nss";

}

scene ma04_016vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("����");}

	PrintBG("�ϱ���", 30000);

	LoadImage("���إ���`����", "cg/bg/bg204_�����ر���_03.jpg");
	SetAlias("���إ���`����", "���إ���`����");
	LoadImage("���إ���`����", "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	SetAlias("���إ���`����", "���إ���`����");
	LoadImage("���إ���`����", "cg/bg/bg203_�����ݳ�������a_03.jpg");
	SetAlias("���إ���`����", "���إ���`����");

	CreateTextureSP("������", 100, 0, -100, "cg/bg/bg001_��a_03.jpg");
	Zoom("������", 0, 1500, 1500, Dxl2, true);
	CreateTextureEX("������", 10, 0, 0, "���إ���`����");

	MoveFFP1("@������",5000);//�̶���������

//������󡸣ãУ����礤ǰ�Υե�����Ǥ�ʹ�ä��Ƥ�ΤǤ����Ǥ��⤷�Ƥ����衹
	//�������ԥåȣ����x��
	//CP_AllSet("���٥�");
	//�������ԥåȣ�˲�g��ʾ��
	Cockpit_AllFade2();
	//�������ԥåȣ��ԙC�����ӣ�
	FrameShake();

	//�������ԥåȣ��ԙC�����ӣ�
	FrameShake();
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(0,0,null,true);
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(0,450,null,true);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange(0,1500,null,true);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(0,0,null,true);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(0,432);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(0,366);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(0,500,null,false);
		//�������ԥåȣ��ԙC�������ȣУ�
		CP_IHPChange(0,5,null,false);

	//�������
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	CreateSE("������ɣ�","se���L_����_������01_L");
	SoundPlay("������ɣ�",500,1000,true);

	FadeDelete("�ϱ���", 500, true);

..//������ָ��
//ǰ�ե����롡"ma04_015vs.nss"

//�񣱣�
	SoundPlay("@mbgm08",0,1000,true);

//�������֣�ѩ܇�
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0010a01">
�����<RUBY text="���������²���">��һ�ũ������·�</RUBY>����
����ת���򣡡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0020a00">
�����ס�
����������Ҫ����׹���չ����
�����Ȼ��ǿ��֮ĩ��
Ϊ���ȶ���ֻ�����������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0030a01">
�������˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("������", 0, 1000, null, false);

	//�������O��
	CreateSurfaceEX("�}Suf",99,2000,"������");
	Fade("�}Suf", 0, 1000, null, true);

	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(3000,550,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(3000,1300,AxlDxl,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(3000,-25,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(3000,-30,AxlDxl,false);

	//�������ԥåȣ��ԙC��󣺳�����
	MyTr_Count(1500,433);

	OnSE("se���L_����_��ͻ�M08",1000);
	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",2000,700,true);

	MoveSSP1("@������",100000,0,2,0,2,300,"null");//��������
	Move("������", 3000, @0, @-100, Dxl1, false);
	Fade("������", 3000, 0, null, 1500);

	//�����ȥ
	CloudZoomFade(500,false);

//���½���ܞ
//�����漤ͻ���߶ȃ��ݤϴ�����
//������������Ҥ졣ؓ����Ӱ�
	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		CreateTextureEX("���ե����ȣ�", 20000, 0, -288, "cg/ef/ef008_��������܉��.jpg");
		Zoom("���ե����ȣ�", 0, 5000, 2000, Dxl2, true);
	
		CreateTextureSP("���ե����ȣ�", 20000, 0, 0, "cg/ef/ef014_���ú�܉��.jpg");
		CreateSurfaceEX("�}Suf2",20000,2000,"���ե����ȣ�");
		Zoom("���ե����ȣ�", 0, 10000, 0, Dxl2, true);
		SetVertex("�}Suf2", 512, 188);
	
		CreateColorEX("ɫ��", 20000, "#FFFFFF");
	
		CreateTextureSP("���C��", 100, -1000, -200, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");//��ۤ��жΤ�kע
		SetVertex("���C��", 800, middle);
		Zoom("���C��", 0, 50, 50, Dxl2, true);

		CreateSE("�ӣţ�","se���L_����_��ꪏ���03");
		CreateSE("�ӣţ�","se���L_����_���nͻ01");

	OnSE("se���L_����_��ͻ�M06",1000);

	CloudZoomStart(200,400,400,200,400);
	CloudZoomVertex(3000,@0,@200,Dxl1,false);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	//CP_RollBarMoveA();
	//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
	CP_RollBar_ADelete();

	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(4000,650,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(4000,1000,AxlDxl,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(4000,-55,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(4000,-70,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(4000,-80,null,false);

	//�������ԥåȣ��ԙC��󣺳�����
	//MyTr_Count(3000,433);

	//�����ջ�ܞ
	Rotate("�}Suf", 7000, @0, @0, 180, DxlAuto, false);
	Move("������", 3500, @0, @-3000, AxlAuto, false);
	Wait(2500);

	Move("���C��", 1000, @1000, @0, Dxl3, false);
	Zoom("���C��", 1000, 1500, 1500, Axl3, false);
	Wait(950);

	Fade("���ե����ȣ�", 50, 1000, null, false);
	Zoom("���ե����ȣ�", 400, 2000, 2000, Dxl3, false);
	Move("���ե����ȣ�", 400, @0, @576, null, false);
	Wait(200);

//	OnSE("se���L_����_��ꪏ���03",1000);
	SoundPlay("�ӣţ�",0,1000,false);

	Fade("�}Suf2", 100, 1000, null, false);
	Rotate("�}Suf2", 400, @0, @0, 720, DxlAxl, false);
	Zoom("���ե����ȣ�", 400, 10000, 10000, Axl1, false);

	Fade("ɫ��", 0, 200, null, true);
	Fade("ɫ��", 100, 0, null, false);
	Wait(80);
	Fade("ɫ��", 0, 400, null, true);
	Fade("ɫ��", 100, 0, null, false);
	Wait(80);

//	OnSE("se���L_����_���nͻ01",1000);
	SoundPlay("�ӣţ�",0,1000,false);
	Fade("ɫ��", 100, 1000, null, true);

	MoveFFPstop();
	Delete("���C*");
	Delete("�}Suf2");
	Delete("���ե�����*");

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	//CP_RollBarMoveA();
	//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
	//CP_RollBar_ADelete();
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(2000,420,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(2000,1300,AxlDxl,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(2000,15,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(2000,-70,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(2000,0,null,false);

	SetVolume("������ɣ�", 2000, 0, NULL);

	CloudZoomVertex(2000,@0,@-400,Dxl1,false);
	Move("������", 2000, @0, @-2000, Dxl2, false);
	Fade("ɫ��", 300, 0, null, true);

	//����Ƅ�
	CloudZoomVertex(1000,@0,@-200,Dxl1,false);
	Fade("������", 1000, 1000, null, false);

//�������϶�
//��ѩ܇��ж�
//��̫���򡣤��������`�äȡ�
//���Ф��`����˫������������
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0050a01">
�������㿪��?!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0060a00">
����Ȼ<RUBY text="������������������">��ס���������ƹ���</RUBY>��
��������Ϊ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MoveSSP1stop();

		CreateTextureEX("������", 100, 0, -288, "cg/bg/bg001_��c_03.jpg");
		Zoom("������", 0, 2000, 2000, Dxl1, true);
		CreateColorEX("ɫ��", 18000, "#000000");

		CreateSE("�ӣţ�","se���L_����_��ͻ�M08");

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	//CP_RollBarMoveA();
	//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
	//CP_RollBar_ADelete();
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(2000,520,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(2000,1500,AxlDxl,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(2000,45,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(2000,0,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(2000,50,null,false);

//	OnSE("se���L_����_��ͻ�M08",1000);
	SoundPlay("�ӣţ�",0,1000,false);

	Move("������", 2000, @-512, @576, Axl1, false);
	Fade("������", 1000, 1000, null, true);
	Fade("ɫ��", 700, 1000, null, true);

	SoundPlay("������ɣ�",1000,1,true);

	MoveFFP1stop();
	Delete("�}Suf");
	Fade("������", 0, 0, null, true);
	Fade("������", 0, 0, null, true);
	Fade("������", 0, 0, null, true);
	//�����ȥ
	CloudZoomFade(0,true);

	CreateColorSP("ɫ��", 19999, "#000000");

	CreateTextureEX("������", 19100, -5000, 3200, "���إ���`����");
	CreateTextureEX("������", 19100, -5000, 3200, "���إ���`����");
	Zoom("������", 0, 2000, 2000, null, true);
	Rotate("������", 0, @0, @0, @-45, null, true);
	Zoom("������", 0, 2000, 2000, null, true);
	Rotate("������", 0, @0, @0, @-45, null, true);

	//�������
	CloudZoomSet2("�ޥ�",19900,0,0,1024,600);

	CreateTextureSP("�ԙC��", 19500, -329, -332, "cg/st/3d�����˜�_�T��_���Lb.png");
	Zoom("�ԙC��", 0, 700, 700, Dxl2, true);

	CreateWindow("������ɥ���", 19500, 512, 0, 512, 600, false);
	SetAlias("������ɥ���", "������ɥ���");
	CreateColorSP("������ɥ���/ɫ��", 19500, "#000000");
	CreateTextureSP("������ɥ���/���C��", 19500, 62, -355, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Lc.png");
	Zoom("������ɥ���/���C��", 0, 700, 700, Dxl2, true);

	Fade("ɫ��", 500, 500, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������֮��Ľ�������˫������ͨ����Ҫ����
����Ҫ����������
���������ܡ�������ʡ��������ܡ���ת�������ĵ㡣

���������ܵ���Ҫ�����ǲ��Զ�����
����ս����ʼʱ���߶����Ƶ�ȷ����ȡ��������������


����������ҽ���󣬿��ı��ǻ�ת�����ˡ�
��Խ���ܿ��ٻ�ת�������Խ������ȡ�ø߶ȵ����ơ�

��������ʣ�����˵���ڽ���ʱ����Ҫ�ĳ��ν����У�
�������ľ��������ء�
����������ȡʤ����ζ���ܹ��ȵз�����ذε���ն��
��ʹ���ȵз���ǿ����һ����

�����������ܣ��������ŵڶ��غ�֮������ʡ�
���ָ�����ҽ�������������ʣ����ı��Ǵ������ܡ�

����ȫ�߱����������������������壬�ǲ����ڵġ�

����Ϊ��Ҫ׷��һ�������������벻����������������
����

����������ף�������ӻ�ת�Զ�ɥʧ�����ԡ�
����������ʹ��Ӻ�������������ʶ���������
���ܡ�

��һ����ԣ��κ����嶼�޷�������������ԡ�
�������ĸ�����ʦ���������������ԣ����ɸ�Ϊ��խ
�Ŀ���У�����������׷����߾��硣

���������������еĶԾ��У����ܽ�˿�������
ʦˮ׼�ĸߵͣ������벢�Ǿ��ԡ��ۺ����۽ϲ�Ľ�
�У�Ҳ������Ҫ���е�ĳһ��ʤ���Է���������һ�㣬
��Ȼ�п��ܿ��ٳ�����Ϊʤ�ĵ�·��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	//CP_RollBarMoveA();
	//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
	//CP_RollBar_ADelete();
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(2000,650,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(2000,1000,AxlDxl,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(2000,-45,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(2000,180,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(2000,0,null,false);

	SoundPlay("������ɣ�",2000,1000,true);

		CreateTextureSP("���C��", 19500, -1400, 900, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Lc.png");
		Rotate("���C��", 0, @0, @0, -40, null, true);
		SetBlur("���C��", true, 1, 500, 30, true);

		CreateSE("������ɣ�","se���L_����_��ͻ�M05");

	SoundPlay("������ɣ�",2000,700,true);

	Move("������ɥ���", 500, @512, @0, null, false);
	Fade("�ԙC��", 500, 1000, null, false);

	CloudZoomStart2(700,1000,1000,500,1000);
	CloudZoomVertex2(0,@-500,@0,Dxl1,true);

	CreateSCR1("@������","@������",2000,1200,-3100);

	//���S��������S����
	MoveFTP1("@�ԙC��",20000,3,5);

	SetBlur("�ԙC��", true, 2, 500, 200, false);
	Fade("�ԙC��", 500, 1000, null, false);
	Fade("ɫ��", 500, 0, null, true);

	Delete("������ɥ���/*");
	Delete("������ɥ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041]
������ൽ���޷�����Ϊʤ�ĵز����Ǳ������������
����֮ʱ�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("ɫ��", 20000, "#FFFFFF");
	CreateColorEX("ɫ��", 19900, "#000000");
	CreateSurfaceEX("�}Suf",99,2000,"������");

	CreateTextureEX("���ե����ȣ�", 19900, 300, 1200, "cg/ef/ef011_����б��܉��.jpg");
	SetVertex("���ե����ȣ�", 300, 288);
	Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);

	CreateTextureEX("���ե����ȣ�", 19900, -5224, 1500, "cg/ef/ef014_���ú�܉��.jpg");
	SetVertex("���ե����ȣ�", 512, 300);
	Zoom("���ե����ȣ�", 0, 10000, 10000, Dxl2, true);
	Rotate("���ե����ȣ�", 0, @0, @0, @-20, Axl2, true);
	Request("���ե����ȣ�", AddRender);

//���½���ܞ
//��������
//�������¶Σ֣�ѩ܇��ж�
//�����󤭩`�󡣻��ǡ�

		CreateSE("�ӣţ�","se���L_����_��ͻ�M01");
		CreateSE("�ӣţ�","se���L_�n��_���Ľ��e01");

	MoveFTP1stop();
	SetBlur("�ԙC��", true, 1, 500, 30, true);

	SetVolume("������ɣ�", 1000, 1000, NULL);
	OnSE("se���L_����_���ϕN01",1000);

	Zoom("�ԙC��", 1200, 1000, 1000, Dxl1, false);
	Move("�ԙC��", 700, @50, @150, DxlAuto, true);
	Move("�ԙC��", 500, @1000, @-700, Axl2, false);
	Wait(200);

	//OnSE("se���L_����_��ͻ�M01",1000);
	SoundPlay("�ӣţ�",0,1000,false);

	Fade("���C��", 0, 1000, null, false);
	Move("���C��", 400, 750, -1100, null, true);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);

//	OnSE("se���L_�n��_���Ľ��e01",1000);
	SoundPlay("�ӣţ�",0,1000,false);

	Rotate("���ե����ȣ�", 600, @0, @0, 55, null, false);
	Zoom("���ե����ȣ�", 600, 5000, 5000, Dxl1, false);
	Move("���ե����ȣ�", 600, -400, -2000, null, 200);

	Move("���ե����ȣ�", 400, 1500, -100, Dxl1, false);
	Rotate("���ե����ȣ�", 400, @0, @0, 2, null, false);
	Zoom("���ե����ȣ�", 400, 5000, 5000, Dxl1, false);
	Fade("ɫ��", 400, 1000, Axl2, true);

	OnSE("se���L_����_��ꪏ���03",1000);
	OnSE("se���L_����_�z_���03",1000);

		//�����ȥ
		CloudZoomDelete2(0,true);
		//����`��ֹͣ
		SCR1stop();
		//����_ʼ
		CloudZoomStart(400,800,800,300,800);
	
		MoveFFP1("@������",5000);//�̶���������

		Move("������", 0, 0, -2500, Axl1, false);
		Fade("ɫ��", 0, 0, Axl2, false);
		Rotate("�}Suf", 0, @0, @0, @240, Dxl1, false);
		Fade("�}Suf", 0, 1000, null, true);
		Delete("�ԙC��");
		Delete("���C��");
		Delete("������");
		Delete("������");
		Delete("���ե�����*");

		SetVolume("������ɣ�", 4000, 0, NULL);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	//CP_RollBarMoveA();
	//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
	//CP_RollBar_ADelete();
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(2000,450,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(2000,1300,AxlDxl,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(2000,25,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(2000,50,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(2000,0,null,false);

	Fade("ɫ��", 500, 0, null, false);
	Fade("������", 500, 1000, null, false);
	Move("������", 2000, @0, @-3000, Dxl1, false);
	Rotate("�}Suf", 2000, @0, @0, @-60, null, false);
	Wait(700);

	CloudZoomVertex(1500,@0,@200,Dxl1,false);

	Move("������", 1000, 0, -100, Dxl1, false);
	Fade("������", 1000, 1000, Axl1, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0070a01">
���������������ˣ�
�������裡��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0080a01">
������������״̬������ɽկ����ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0090a00">
���𼤶���
�������轹�ꡣ���������ڣ�
�������Ҳ�ȵ�����Խ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0100a00">
�����ң�����ѩ���һ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ʒζ����ǰ���Ǽ����ɲ�Ĳ�����
����Ӧ�ض���׹��һ������ʹ������<RUBY text="������">������</RUBY>�ĸд���

��ѩ���һ��ʮ�����͡�
����Ȼ���Լ��Ľ�������������ܵ����㡣


��������˵ľũ�ʽ��������������ʷ�������
�����������������У�����ʮ��ǰ�ľ�ʽ���塣
�����۴��ĸ�������˵����������Ĳ�඼��֪����
�����������࣬���̵���Ĳ��ܡ�

���͹����������޷�ͻ��ӹ�����Ƶ�����ȣ�������
��<RUBY text="����">����</RUBY>�ǲ�ͬ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0110a01">
������û���ˣ�����Ťת����
�����˰ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0120a00">
�����������ء�
��ֵ�û��ɰ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0130a00">
��������Σ����ֽ��״���£���ֻ������
��Զ���ͽе�ɥ��֮Ȯ���ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0140a01">
���ţ���˵���ǡ�
����ô��һ��ȥ���Ұɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0150a00">
����Ҳ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ת��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ
		CreateTextureSP("������", 100, -512, -780, "���إ���`����");
		CreateSurfaceEX("�}Suf2",200,2000,"������");
		Rotate("�}Suf2", 0, @0, @0, 90, null, true);
		CreateTextureSP("������", 100, -4000, 0, "���إ���`����");
		CreateSurfaceEX("�}Suf",200,2000,"������");

		CreateSE("�ӣţ�","se���L_����_��ͻ�M04");

		CreateSE("������ɣ�","se���L_����_��ͻ�M05");
		SoundPlay("@������ɣ�",2000,600,true);

	OnSE("se���L_����_��ͻ�M08",1000);


	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(5000,180,AxlDxl,false);

	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(4000,640,Dxl1,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(4000,1400,Dxl1,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(4000,0,Dxl1,false);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(2000,-40,Dxl1,false);

	Move("������", 4000, 0, 0, AxlDxl, false);
	Rotate("�}Suf", 4000, @0, @0, -90, AxlDxl, false);
	Fade("�}Suf", 1000, 1000, null, false);

	//���̶��������ֹࣺͣ
	MoveFFP1stop();
	//���̶���������
	MoveFFP2("@�}Suf2",10000);

	Wait(2000);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();

	Fade("�}Suf2", 0, 1000, null, false);

	SetVolume("������ɣ�", 2000, 200, NULL);
	//se���L_����_��ͻ�M04.ogg
	SoundPlay("�ӣţ�",0,1000,false);

	Rotate("�}Suf2", 2000, @0, @0, 30, Dxl1, false);
	Move("������", 2000, -100, -780, Dxl2, false);
	Fade("�}Suf", 1000, 0, null, false);

	//Wait(2000);
	//Move("������", 20000, -50, -780, null, false);

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0160a00">
�����ٱ���һ��֮��ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0170a01">
��һ�����㹻���𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��Ϊ��ʹ�Լ��������������ƽ����Ӧ�����Ӫ������
Ц�Ǳ�Ҫ�ġ�
����ʶ��ÿһ˲�䣬������ҪƮ����ͬ�ĵط�һ����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("ɫ��", 17000, "#000000");
	CreateTextureEX("���٥�ȣ�", 17000, 0, 0, "cg/ev/ev909_��҆��.jpg");
	SetTone("���٥�ȣ�", Monochrome);

	SetVolume("������ɣ�", 1000, 1, NULL);
	SetVolume("������ɣ�", 1000, 1, NULL);

	Fade("ɫ��", 500, 1000, null, true);
	Fade("���٥�ȣ�", 1000, 500, null, true);

		CreateTextureEX("������", 18000, 0, -1000, "���إ���`����");
		CreateTextureEXover("���ե����ȣ�", 19000, 0, 0, "cg/ef/ef042_���ô��.jpg");
		CreateColorEXadd("ɫ��", 18000, "#FFFFFF");
		CreateColorEXadd("ɫ��", 19999, "#FFFFFF");

		CreateTextureEX("���C��", 19000, -272, -373, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Lb.png");
		Rotate("���C��", 0, @0, @0, -40, null, true);
		CreateTextureSP("���C��", 1000, -1000, -600, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Zoom("���C��", 0, 100, 100, Dxl2, true);

		CreateTextureEX("������", 18000, -256, -200, "cg/bg/resize/bg002_��a_03l.jpg");

		CreateTextureSP("�ԙC��", 19000, 0, -1100, "cg/st/3d�����˜�_�Tͻ_���L.png");
		Zoom("�ԙC��", 0, 100, 100, Dxl2, true);
		CreateTextureSP("���C��", 19000, 0, 1000, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		Zoom("���C��", 2000, 1500, 1500, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101]
�������Ǽܾ޴����塣
������һ��Ҫ������������С�

������ô���ϵ��˷�ʱ�䡭��
��������������ǻᡭ��

�����汻��ס���ң������׵������Թ���
�����ǻᡭ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0180a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("������", 0, -200, -880, Dxl2, true);

//��ѩ܇��C�|���䡣�٤�����
		CreateSE("�ӣţ�","se���L_�|��_�C�v�|����02");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M01");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M07");
		CreateSE("�ӣţ�","se���L_�|��_����04");

		CreateSE("�ӣţ�","se���L_����_��ͻ�M03");

	SoundPlay("�ӣţ�",0,1000,false);
	Wait(300);
	SetVolume("������ɣ�", 0, 600, NULL);
	SoundPlay("������ɣ�",0,1000,true);

	Fade("ɫ��", 0, 0, null, false);
	Fade("���٥�ȣ�", 0, 0, null, false);

	Fade("���ե����ȣ�", 0, 1000, null, false);
	Fade("ɫ��", 0, 500, null, false);
	Fade("������", 0, 1000, null, true);
	Fade("���C��", 0, 1000, null, true);


	Fade("���ե����ȣ�", 2000, 0, null, false);
	Fade("ɫ��", 2000, 0, null, false);
	Move("������", 2000, @-100, @200, null, false);
	Move("���C��", 2000, @100, @-100, null, false);
	Shake("���C��", 2000, 0, 10, 0, 0, 700, Dxl1, false);
	Shake("���ե����ȣ�", 2000, 10, 10, 0, 0, 700, Dxl1, 1500);

	SoundPlay("�ӣţ�",0,1000,false);
	Move("���C��", 300, @1000, @-1000, Axl1, 200);

	SoundPlay("�ӣţ�",0,1000,false);

	Fade("ɫ��", 100, 1000, null, true);
		Rotate("���ե����ȣ�", 0, @180, @180, @0, null, false);
		Fade("���ե����ȣ�", 0, 1000, null, false);
		Fade("ɫ��", 0, 500, null, false);
		Fade("������", 0, 0, null, true);
		Move("������", 0, -250, -1380, Dxl2, true);

	SetVolume("�ӣţ�", 2000, 0, NULL);
	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);

	Zoom("���C��", 1000, 1000, 1000, Axl3, false);
	BezierMove("���C��", 1000, (@0,@0){@600,@0}{@800,@0}(@800,@600), Dxl1, false);

	Fade("ɫ��", 300, 0, null, false);
	Fade("ɫ��", 600, 0, null, false);
	Fade("���ե����ȣ�", 600, 0, null, false);
	Shake("���ե����ȣ�", 600, 10, 10, 0, 0, 700, Dxl1, false);
	Shake("������", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("������", 1000, -300, -1180, Dxl1, false);
	Wait(1000);

	SetVolume("������ɣ�", 2000, 1, NULL);
	SetVolume("������ɣ�", 2000, 1, NULL);

	Fade("������", 0, 1000, null, false);
	Move("������", 1000, @0, @200, Dxl1, false);
	Zoom("�ԙC��", 1000, 300, 300, Dxl2, false);
	Move("�ԙC��", 1000, @0, @700, Dxl1, false);
	Zoom("���C��", 1000, 1000, 1000, Dxl2, false);
	Move("���C��", 1000, @0, @-1000, Dxl1, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������������
���㵽�·�ȥ�ˣ�

���ҷ��������ǳ���ľٵ�������
������λ�ù�ϵ��ʹն��ʧ�ܡ�

����Եģ��з�Ҳ�Ծٵ�������
��������ת����ʽ���

����Ҫ�������ƾͻ���һ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0190a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("���C��", 18500, 0, 0, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
	Zoom("���C��", 600, 800, 800, Axl2, false);
	CreateTextureEXadd("���ե����ȣ�", 19998, 0, 0, "cg/ef/ef040_�����nͻ.jpg");
	SetBlur("���ե����ȣ�", true, 2, 500, 500, false);
	Rotate("���ե����ȣ�", 0, @0, @180, @0, null, true);

	CreateSE("�ӣţ�","se���L_����_��ͻ�M02");
	CreateSE("�ӣţ�","se���L_����_��ͻ�M04");

	CreateSE("�ӣţ�","se���L_����_��ͻ�M03");

//���������ȥ�`�롣���·�ܞ
//��������ܞ�϶�
	SetVertex("���C��", 700, 300);

	OnSE("se���L_����_��ͻ�M06",1000);
	OnSE("se���L_����_��ͻ�M08",1000);

	Zoom("������", 300, 1200, 1200, Axl2, false);
	Rotate("�ԙC��", 400, @0, @0, -180, null, false);
	Zoom("�ԙC��", 300, 700, 700, Axl2, false);
	Zoom("���C��", 300, 800, 800, Axl2, false);
	Fade("�ԙC��", 300, 0, null, false);
	Fade("���C��", 300, 0, null, false);
	Fade("������", 300, 0, null, false);

	Rotate("���C��", 600, @0, @0, 180, null, false);
	Rotate("�}Suf2", 600, @0, @0, 180, null, 550);
	Fade("ɫ��", 50, 1000, null, true);

		OnSE("se���L_����_��ꪏ���03",1000);
		OnSE("se���L_����_���nͻ01",1000);

//��̫���򡣥����`��
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Zoom("���ե����ȣ�", 800, 1500, 1500, Dxl1, false);
//	Fade("ɫ��", 100, 0, null, true);
//	Fade("ɫ��", 100, 1000, null, true);

	Fade("���ե����ȣ�", 700, 0, null, false);
	Fade("�ԙC��", 0, 1000, null, false);
	Fade("���C��", 0, 1000, null, false);
	Fade("������", 0, 1000, null, true);
	Fade("ɫ��", 300, 0, null, false);

//������
	SoundPlay("�ӣţ�",0,1000,false);
	SetVolume("������ɣ�", 1000, 1000, NULL);
	SetVolume("������ɣ�", 2000, 500, NULL);

	Shake("���C��", 500, 0, 5, 0, 0, 700, Dxl1, false);
	Shake("�ԙC��", 500, 0, 10, 0, 0, 700, Dxl1, false);

	Zoom("������", 1000, 1400, 1400, Dxl2, false);
	Zoom("�ԙC��", 1000, 1000, 1000, Dxl1, false);
	Zoom("���C��", 1000, 300, 300, Dxl1, 500);

	SoundPlay("�ӣţ�",0,1000,false);

	Move("���C��", 500, @100, @500, Axl1, false);
	Move("�ԙC��", 500, @-100, @-1000, Axl1, true);


//б���ݳ�
	CreateTextureSP("������", 20000, 0, 0, SCREEN);
		Delete("�ԙC*");
		Delete("���C*");
		Fade("�}Suf2", 0, 0, null, true);
		Fade("������", 0, 0, null, true);
	
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//���̶��������ֹࣺͣ
		MoveFFP2stop();

		CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��a_03.jpg");
		Zoom("������", 0, 1100, 1100, Dxl2, true);

		//���̶���������
		MoveFFP1("@������",10000);

		SetVolume("������ɣ�", 2000, 0, NULL);
		SoundPlay("�ӣţ�",0,1000,false);

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(500,120,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(500,450,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange2(500,1400,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(500,10,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(500,0,Dxl1,false);

	FadeDelete("������", 500, true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0200a12">
���������٣�
��û�뵽����������ϵظ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����Ц�Ľ��д����������ߡ�
�������������˾��ã��������䳰�ȷ����������壬
��˵��ͨ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		CreateWindow("������ɥ���", 150, -300, -432, 2000, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		Rotate("������ɥ���", 0, @0, @0, -29, null, true);
		CreateTextureEX("������ɥ���/������", 17000, 0, 0, "cg/bg/bg002_��a_03.jpg");
		CreateTextureEX("������ɥ���/�ԙC��", 17000, -160, -304, "cg/st/3d�����˜�_�T��_���Le.png");

		CreateWindow("������ɥ���", 150, -100, 110, 2000, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		Rotate("������ɥ���", 1000, @0, @0, -29, null, true);
		CreateTextureEX("������ɥ���/������", 17000, 0, -2000, "���إ���`����");
		CreateTextureEX("������ɥ���/���C��", 17000, -14, -392, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");


		Fade("������ɥ���/*", 0, 1000, null, false);
		Move("������ɥ���/�ԙC��", 0, @-100, @-100, Dxl1, true);

	Wait(400);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0210a00">
����Ұ������һ�У�ϼ��������������ʲô
ֵ�ÿ��޵�������
�����Ƶļ�����Ҳ��ɡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0220a00">
��һ������ѩ���һ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


		Fade("������ɥ���/*", 0, 1000, null, false);
		Move("������ɥ���/���C��", 0, @100, @100, Dxl1, true);

		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);
		//�����ȥ
		CloudZoomFade(0,true);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();

	Wait(400);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0161]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0230a12">
���ٺ١���
���۹�Ҳʮ�ֶ���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0240a00">
��֮ǰ�Ĺ����У������ܿ���һ���е�����
  �ټ��ϣ��ǿ���������͵���������

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0250a12">
����ʤ�̿֡���
������������������ְ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0260a00">
��ʲô����

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0270a12">
���ղ��ǵ������<RUBY text="��������">һն����</RUBY>������
��ʤ����
�����������ھ�һͷ׹�뺣���ˡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0280a00">
��������

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0290a12">
��Ϊʲô����û����ô����
������С�硭����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


.//��С���
..//��һ���Τ������`�ȤΈ���

if($Kanae_Dead == true){

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0300a00">
����������ǡ�
���ղŵĶ����Ƿ������𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0310a12">
���ţ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0320a00">
����������
����һ˲�䣬��ֹ��������ġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0330a00">
��ѩ���һ�ء����������𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0340a12">
��������
������˵ʲô�ء�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0350a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ȼ������𡭡���
������������ζ��޷����ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0360a00">
�����Ƚ�����·���һ�ߣ������Ҹղŵ��°ɡ�
��Ϊʲô��Ҫ�������ӽ��ֵ�ʱ�䣿��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}else{

..//��I������or����֦�Τ������`�ȤΈ���

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0370a00">
������ǡ�
��ΪʲôҪ�������ӽ��ֵ�ʱ�䣿��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

.//������

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0380a00">
�������εĽ��档
������ն��Ļ����ѵ�һ�ζ�
û���𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0390a12">
���١��١��١���
�����ǵģ�ʲôѽ����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ���
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0400a12">
��<RUBY text="������">��ȷ��</RUBY>һ�¡�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0410a00">
��ȷ��ʲô����

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0420a12">
��������������������������
���١��ٺٺٺٺٺٺٺٺٺٺٺٺ�!!��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0430a00">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0440a00">
��˵���ף���Ϊ�������
��Ϊ��ҪϮ���ҡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0450a00">
����Ӧ�ò�δ�������޵����ù�Ա��ת��Ϊ
�о����ľ������Ӱɡ���
��ǰ����ı����𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0460a12">
��<RUBY text="����">����</RUBY>����������Ҳ����ν����
���ٺ٣�С������������ֻ��������ֻ�����
�Ŀ̰�����𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0470a00">
��������ô��
������Ϊ����ǣȣѹ����𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0480a12">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0490a00">
����Ϊ�ҷ������ǣȣѵ�<RUBY text="��������">ͳ������</RUBY>�ˡ���
������������ҵ��𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0500a12">
������
������˵ʲô�ء�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0510a00">
���崨�����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0520a12">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0530a00">
����ħС̫�ɡ�
�������ò���Ļ���߹ٵ�����Я������У�
����Ϊ�Σ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0540a00">
���ѵ����������Լ���˫�֣��ӽ�פ���Ĳֿ�
���ó����н������ǵ���
��ѩ���һ�ء���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0550a12">
�������ٺ١�
���ܸ����˰���С̫��үү���ƺ�������ǰ
˵�˺ܶ����Ļ��ء�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0560a00">
������Ϊ�Σǣȣ�������������Ϊ��
��ֻ��һ�ֿ��ܣ��Ǿ�������ж���������
�ǣȣѵ�Ŀ�����ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ǣȣѵ�Ŀ�ġ���
����ȫռ���͡�

���Ǹ�����ѩ������ˣ�������էһ���޷����ĸ�
���м�Ϊ�ο���
�����������𳤵ó���һ�����ۡ�

����ͬ��ס��ζһ��������⣬���˵�������Ʋ⡣
�������������׳�������Ʋ⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0570a00">
��<RUBY text="����������������������">�ô�����߼Ӻ��������</RUBY>��
���ô�ͽ��ܣǣȣ����֧���ߣ�
Ϊ�˶����¸�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0580a00">
�������𡭡�
������������

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0590a12">
��������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���⼸����Ц����
�����ڿ϶��ҷ�����˵�Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	CreateColorEX("ɫ��", 19999, "#000000");

	SetVolume("������ɣ�", 2000, 1, NULL);
	SetVolume("@mbgm*", 2000, 500, NULL);
//	OnSE("se�M��_����_�ե�å���Хå�01",1000);

	Fade("ɫ��", 500, 1000, null, true);
		CreateTextureSP("������", 18000, 0, 0, "cg/bg/bg018_���L�̄���_01.jpg");
		SetTone("������", Sepia);
		StL(18000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
		SetTone("@StL*", Sepia);
		FadeStL(0,true);
	Fade("ɫ��", 500, 0, null, true);

	SetFwC("cg/fw/fw���L_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/016vs0600a11">
����פ��������һ���Ա�֮����
���ҹ����»��ػ���
����Ϊ�Զ���˹�۹�ս�Ե�һ������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/016vs0610a11">
��Ϊ�ˣ�����Ҫ���������ڡ�
��������������Ѫͳ�Σ�������ʹ��Թ
��������ֿ��˶��ͻ��Ϊ���֣��Զ�
��ǣ�Ƹ����޴�̸�𡣡�

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/016vs0620a11">
��������ˣ����ǲ�Ĭ�������޵�ר��ͳ�Ρ�
���Ա�Ű��֧���ߣ��Ӵ�͵Ĺ���������ı��
���ȵĺ���������פ������Ӧ������վ������
��������ľ籾������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/016vs0630a11">
��������������˻�������
������ɿ���������޵����񣬴������������
���Ĵ��������������Ĵ�����ߣ�������ռ
�������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/016vs0640a11">
��Ϊ�˰�������ܶ�ɱ��ҡ�����Ҫ���н�
�����ԣ�����Ļ������������ߡ���
���������⽫��Щ�����ṩ��Σ���������
�Ƿ������аɣ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/016vs0650a11">
��Ϊ�˽���͹���Դ�����ߵ���������
����ȫ�أ�Ĩɱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("ɫ��", 500, 1000, null, true);
		Delete("������");
		DeleteStL(0,true);

	SetVolume("������ɣ�", 1000, 1000, NULL);
	SetVolume("@mbgm08", 1000, 1000, NULL);
	Fade("ɫ��", 500, 0, null, true);
	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0660a00">
�����һ����Ϯ���ҵ�����Ҳ��ȫ���ˡ�
��������ͼı��ʲô���ӽ����������
���ƻ��ǣȣ���ı������Ϊ������Ҳ��
������Ȼ�ġ�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0670a12">
�����ֻ��նɱ��Щ�˵Ļ�Ҳ�����ˡ�
������ж���Ϊ���Ŷ�ɢ�������䣬
��ɲ�̫�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0680a12">
��������ΪӢ�۵Ļ��������ˡ�
��Ӣ��ֻҪ�н�פ���͹��ˡ���������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ
//���٤����椫��`��
		CreateTextureSP("������", 100, 0, 0, "���إ���`����");
		SetSurface("������","�}Suf2");
		Rotate("�}Suf2", 0, @0, @0, 0, null, false);
		Fade("�}Suf2", 0, 0, null, true);

		CreateWindow("������ɥ���", 150, 0, 0, 513, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		CreateTextureEX("������ɥ���/������", 16100, 0, 0, "cg/bg/bg001_��a_03.jpg");
		CreateTextureEX("������ɥ���/�ԙC��", 16100, -457, -273, "cg/st/3d�����˜�_�Tͻ_���L.png");

		CreateWindow("������ɥ���", 150, 512, 0, 1024, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		CreateTextureEX("������ɥ���/������", 16100, 0, -1252, "���إ���`����");
		CreateTextureEX("������ɥ���/���C��", 16100, 28, -221, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");

	//�������
	CloudZoomStart(700,1000,1000,500,1000);

	//�������ԥåȣ�˲�g��ʾ��
	Cockpit_AllFade2();
	//�������ԥåȣ��ԙC�����ӣ�
	FrameShake();

	Move("������ɥ���", 1000, @0, @1000, Axl1, false);
	Move("������ɥ���/*", 1000, @0, @1000, Axl1, 500);
	Move("������ɥ���", 1000, @0, @-1000, Axl1, false);
	Move("������ɥ���/*", 1000, @0, @-1000, Axl1, true);

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",2000,600,true);
	OnSE("se���L_����_��ͻ�M08",1000);

	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(4000,0,AxlDxl,false);
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(4000,650,Dxl1,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(4000,1200,Dxl1,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(4000,-30,Dxl1,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(4000,70,null,false);

	//����Ƅ�
	CloudZoomVertex(4000,@500,@200,null,false);
	Fade("�}Suf2", 1000, 1000, null, false);
	Move("������", 4000, @-4000, @0, null, false);
	Rotate("�}Suf2", 4000, @0, @0, 90, null, 3500);

	SetVolume("������ɣ�", 2000, 0, NULL);

	Move("������ɥ���/�ԙC��", 500, @0, @50, Dxl1, false);
	Move("������ɥ���/���C��", 500, @0, @-50, Dxl1, false);
	Move("������ɥ���/������", 500, @0, @30, Dxl1, false);
	Fade("������ɥ���/*", 500, 1000, null, false);
	Fade("������ɥ���/*", 500, 1000, null, true);

	Delete("������ɥ���");
	Delete("������ɥ���");

		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);
		//�����ȥ
		CloudZoomFade(0,true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0690a12">
������<RUBY text="����">���</RUBY>�Ź���������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0700a00">
��ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����������֮����������ʮ�����⡣
������ȥ�����ƺ���������Ϊ��������Ϯ���ҡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0710a12">
�����ǵġ���
���ҿ�û����ʲô�˲���Ĺ���Ŷ����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0720a12">
��ֻ�ǽ�Ļ���ڴ˴��о��������鱨
�Լ�����й¶��<RUBY text="����">�Ǳ�</RUBY>���ѡ�
��ǿ����ɫ֮��Ļ�������Ӧ�û�
�Ϲ��ɡ���������Ȼ�������ϡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0730a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�������������ħС̫���й��������ˣ�
֪����׷�����Ǻ�Ҳ����ʲô����˼��֮�¡�

�������������������𡭡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0740a00">
���õ��ϵľ�����������ɱ���ͺ��ˡ�
���������ƻ��������޵ı����о���
Ҳ�Ǽ���ϲ�ɺ�֮�¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0750a00">
�����۽����Σ������Թ۵ģǣȣ�
���᲻�Ͷ���׬��������������
�������ִ����𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0760a12">
���١��١�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0770a00">
��������ô����Ϊ��Ҫ������
��ѩ���һ�ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0780a00">
��ֱ��������ֻ����ֳ�ʤ��֮ǰ��
Ϊ�β�һֱ�����Թۣ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0790a12">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��˵����Щ���ҷ����ˡ�
������Ҳ����˵��Ŀǰ�д潻�����أ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0800a00">
����ô���������Ǳ߲Ÿ�Ϊ�����ɡ�
���������ÿ���ѩ���һ�أ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0810a12">
��ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0820a00">
�������ӱܡ�
��������Լ���������ֻ����֮��
��������Ķ��֡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0830a00">
����ȻҲ�����ұ���ֻ����
�����ܡ���
����������ˣ���Ҳ�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����ڣ�һ��Ҫ���ٽ����ֻ�޴������
����Ȼ�޷������Ҫ�������Ϊ�ǣȣ��߹�����������
�˽ᣬ��������Ӻ���ɡ�

������������һ�¡�
������������ս�����ȣ����۶��һ���ѩ�����Ӧ
�������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0840a12">
���١���Ȼ����������������
����������˵��������ͬ�ҽ���
Ҳ��û�й�ϵ�İɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0850a00">
������
����ֻ������Լ����̥�ڵ�����
��Ϊȼ�϶����еġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0860a00">
������Ҫ���콫���Ǿȳ�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0870a12">
���١��١��١���
������һ���˲��������֮ʿ��ģ���ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0880a00">
������������ô��⡣��

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0890a12">
���������ǡ���
����ֻ�����������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇��ж�

	CreateTextureEX("���C��", 18000, -222, -350, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���Lb.png");
	SetBlur("���C��", true, 1, 500, 50, false);

	CreateColorEX("ɫ��", 19000, "#000000");
	CreateTextureEX("���ե����ȣ�", 19000, 0, 0, "cg/ef/ef013_����б��܉��.jpg");
	Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
	SetVertex("���ե����ȣ�", 650, 288);

		CreateSE("�ӣţ�","se���L_����_������01");

		CreateSE("������ɣ�","se���L_����_��ͻ�M07");
		SoundPlay("������ɣ�",2000,500,true);

		OnSE("se���L_����_��ͻ�M03",1000);
		SoundPlay("�ӣţ�",0,1000,false);

	Move("������ɥ���/������", 500, -50, @0, Dxl1, false);
	Move("������ɥ���/���C��", 500, -222, -350, Dxl1, false);
	Move("������ɥ���", 500, @-512, @0, Dxl1, false);

	Fade("������ɥ���/���C��", 500, 0, null, false);
	Fade("���C��", 500, 1000, null, true);

	//�����S��������S����
	MoveFTP1("@���C��",10000,3,10);
	//����ȫ������
	MoveFRP1("@������ɥ���/������",20000,5,5);

	//�������
	CloudZoomSet2("�ޥ�",18000,0,0,1024,576);
	//����_ʼ
	CloudZoomStart2B(700,1000,1000);

	SetFwR("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0900a12">
�������Ļ�����
���Ҿ��ǻ��˵ı����ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؓ�
//�􏎤�
//������
		CreateSE("�ӣţ�","se���L_����_��ͻ�M06");

		CreateSE("�ӣţ�","se���L_����_��ꪏ���03");
		CreateSE("�ӣţ�","se���L_����_�z_���03");
		CreateSE("�ӣţ�","se���L_����_���nͻ02");

		CreateSE("�ӣţ�","se���L_����_��ꪏ���01");

		CreateSE("�ӣţ�","se���L_����_���ϕN01");


	OnSE("se���L_����_��ͻ�M02",1000);

	Zoom("���C��", 500, 2000, 2000, Dxl1, 450);
	Fade("ɫ��", 50, 1000, null, true);

		//OnSE("se���L_����_��ꪏ���03",1000);
		//OnSE("se���L_����_�z_���03",1000);
		//OnSE("se���L_����_���nͻ02",1000);
		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);

		Fade("ɫ��", 0, 1000, null, true);
		Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 200, 0, null, false);
	Move("���ե����ȣ�", 500, @0, @200, Dxl1, false);
	Rotate("���ե����ȣ�", 500, @0, @0, 400, Dxl1, false);
	Zoom("���ե����ȣ�", 500, 10000, 10000, Axl2, 300);
	Fade("ɫ��", 200, 1000, null, true);

		//OnSE("se���L_����_��ꪏ���01",1000);
		SoundPlay("�ӣţ�",0,1000,false);

		//�����ȥ
		CloudZoomFade2(0,false);

		//����ȫ�����ֹࣺͣ
		MoveFRP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		Delete("������ɥ���");
		Delete("������ɥ���");
		Delete("���C*");
		Delete("���ե�����*");
		Delete("ɫ��");

		//OnSE("se���L_����_��ͻ�M04",1000);
		SoundPlay("�ӣţ�",0,1000,false);

		CreateTextureSP("������", 100, 0, -2000, "���إ���`����");
		SetSurface("������","�}Suf2");
		Rotate("�}Suf2", 0, @0, @0, 0, null, false);
		Fade("�}Suf2", 0, 1000, null, true);

		CreateTextureEX("������", 100, Center, -288, "cg/bg/resize/bg001_��a_03.jpg");
		//CreateTextureEX("������", 100, 0, 0, "cg/bg/bg001_��a_03.jpg");
		Zoom("������", 0, 2000, 2000, Dxl2, true);

		CreateTextureEX("������", 100, 0, -5000, "���إ���`����");
		SetSurface("������","�}Suf2");

		//���̶���������
		MoveFFP1("@������",20000);

		//����_ʼ
		CloudZoomStart(700,1000,1000,500,1000);
		//����Ƅ�
		CloudZoomVertex(0,@-500,@-200,Dxl2,true);

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();
		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();

		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,0,Dxl1,true);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();

	SoundPlay("�ӣţ�",0,1000,false);

	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(2000,-30,AxlDxl,false);
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(2000,450,Dxl1,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(2000,1500,Dxl1,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(2000,30,Dxl1,false);

	Move("������", 2000, @0, @1800, Dxl2, false);
	Fade("ɫ��", 500, 0, null, true);
	Fade("������", 1500, 1000, Axl3, false);

	SetVolume("������ɣ�", 2000, 0, NULL);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma04/016vs0910a00">
��ѩ���������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0920a12">
���ٺٺ٣�
����ȥ���˵Ļ�����������һ��
�ɲ��У���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0930a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��Ϊʲô��
��������ˣ�����ʲô��

���ѵ�˵�ⲻ������ϵ��������
��Ϯ�����ǡ���

��������Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="��������" src="voice/ma04/016vs0940a01">
��̸�����ѣ�
������������£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0950a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
���ҵ�ת���档
����Ȼ���ź��������������˵��

����Ȼ��ֻ��ն��ͻ����һ��·�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0960a12">
���١��ٺ١���
��С�磬����ɱ�����𡭡���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0970a00">
�����ˡ���
����ն����

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs0980a12">
��С�硭��
���ң��ղ���˵<RUBY text="������������">����ɱ������</RUBY>����
��仰������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs0990a00">
������ʲô����

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1000a12">
�����ڡ���
��С��ĵ��棬������һ˿ɱ��
��û�а���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
������������ˡ�

����ȷ���Һ���ɱ��ѩ�����Ը��
���������ǳ��С��ѡ��ļ����塣

����û�з�ɱ�����ɵ����ɡ�
��������һ�㣬���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1010a00">
���������õ�ɱ��Ӧ����ֹ��
������������Ȼ�ķ��򡣡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1020a12">
�������𡭡�
�����ǣ������Ҳ˵������仰
�˰ɣ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1030a12">
������ɱ�⣬��ͻ�һֱ
����������Ŷ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1040a00">
��������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1050a12">
���ܽ��ҡ���
��ɱ���𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1060a00">
�����û�������취�Ļ�����
���򲻵���֮ʱ���ӵ�ɱ�ˣ���·ǰ�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����˵���޷��������¡�
����ʵ�ϣ����۱���״����Σ������ò����������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1070a12">
���١��٣�
������ǡ�Ӣ�ۡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("������");

//����ܞ
	CreateTextureSP("���C��", 500, -300, 710, "cg/st/3d�˰�ʽָ�]��_�Tͻ_���L.png");
	Zoom("���C��", 0, 50, 50, Dxl2, true);

		CreateSE("�ӣţ�","se���L_����_��ͻ�M07");

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",2000,600,true);
	OnSE("se���L_����_��ͻ�M08",1000);
	OnSE("se���L_����_�ռ�����01",1000);

	//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
	CP_RollBar_ADelete();

	//�������ԥåȣ���å������O�ã�
	//CockPit_LockSet(@0,@0);

	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(4000,30,AxlDxl,false);
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(4000,650,Dxl1,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange2(4000,1100,Dxl1,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(4000,-30,Dxl1,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(4000,360,Dxl1,false);

	//����Ƅ�
	CloudZoomVertex(1000,@0,@-300,Axl2,false);

	Fade("������", 500, 1000, null, false);

	Move("������", 4000, @0, -50, AxlDxl, false);
	Rotate("�}Suf2", 4000, @0, @0, 180, AxlDxl, 3000);

		SoundPlay("�ӣţ�",0,1000,false);
		SetVolume("������ɣ�", 2000, 0, NULL);

	Move("���C��", 1000, @0, @-1000, Dxl2, false);

	//����Ƅ�
	CloudZoomVertex(1000,@0,@300,Dxl2,true);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();
	//�����S��������S����
	MoveFTP1("@���C��",10000,1,3);
	//�������ԥåȣ���å������Ԅ�׷β��
	//CP_LockOnGet("���C��",500,20,20,Dxl1,false);
	//�������ԥåȣ���å��������棩
	//CP_LockOnFade(500,"on",false);

	Delete("������");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
��ѩ���٩��˵�ţ��ı��˷���
���ҷ�Ҳ��Ӧ��תͷ�������Ŵ�������ĵ�Ӱ��

���������ڵ�ʶ���˵Ķ��֣�������ʱ��
������Ϊ�档
��һ��Ҫ�����˽ᡭ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 1000, 0, NULL);
	SoundPlay("@mbgm13",0,1000,true);
	SetVolume("������ɣ�", 2000, 1, NULL);


//���ӽ�
//�������ж�
//��ѩ܇��϶�
	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M04",1000);
	OnSE("se���L_����_��ͻ�M06",1000);

	Zoom("���C��", 500, 1000, 1000, Axl2, false);
	Zoom("�}Suf2", 500, 2500, 2500, Axl2, false);
	Fade("ɫ��", 500, 1000, null, true);

		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//�����ȥ
		CloudZoomFade(0,false);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();
		//����ȫ�����ֹࣺͣ
		MoveFRP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		//�������ԥåȣ���å�����������
		CP_LockOnDelete();

		Delete("����*");
		Delete("�}Suf2");
		CreateTextureSP("������", 100, Center, Middle, "cg/bg/resize/bg073_��a_03l.jpg");
		Rotate("������", 0, @0, @0, @40, null, true);

		Zoom("�ԙC��", 0, 500, 500, Dxl2, true);
		CreateTextureSP("�ԙC��", 100, 129, -345, "cg/st/3d�����˜�_�T��_���Ld.png");
		Zoom("�ԙC��", 0, 100, 100, Dxl2, true);
		CreateTextureEX("�ԙC��", 100, 250, -513, "cg/st/3d�����˜�_�T��_���Le.png");
		CreateTextureSP("���C��", 100, -434, -404, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
		Zoom("���C��", 0, 100, 100, Dxl2, true);
	Fade("ɫ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
����̫��������࣬�ﺽ�жε�λ�á�
��ѩ�����ٹ�ͷ���������Ϸ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("ɫ��", 1000, 1000, null, true);

	Move("�ԙC��", 0, @0, @50, Axl1, true);
	Move("���C��", 0, @0, @-50, Axl1, true);

	Zoom("������", 0, 1200, 1200, Dxl2, true);
	Zoom("�ԙC��", 0, 300, 300, Dxl2, true);
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	Fade("ɫ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0471]
��ѩ�����Ҫ�ε����²࿳ȥ�����ȷ����˵�
�㵽���·��Է��������ж���<k>
{
	Fade("ɫ��", 1000, 1000, null, true);

	Move("�ԙC��", 0, @0, @-50, Axl1, true);
	Move("���C��", 0, @0, @50, Axl1, true);

	Zoom("������", 0, 1400, 1400, Dxl2, true);
	Zoom("�ԙC��", 0, 500, 500, Dxl2, true);
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	Fade("ɫ��", 1000, 0, null, true);
}
������������������<k><?>
{
	Fade("ɫ��", 1000, 1000, null, true);

	Move("�ԙC��", 0, @0, @-100, Axl1, true);
	Move("���C��", 0, -443, -243, Axl1, true);

	Zoom("������", 0, 1600, 1600, Dxl2, true);
	Zoom("�ԙC��", 0, 1000, 1000, Dxl2, true);
	Zoom("���C��", 0, 1000, 1000, Dxl2, true);
	Fade("�ԙC��", 0, 0, null, true);
	Fade("�ԙC��", 0, 1000, null, true);
	Fade("ɫ��", 1000, 0, null, true);
}
����ʧ�ܡ�

��������ȡ��λ���·��ĵ�������
���������ˡ������Ǹ�˲�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W
	CreateTextureEX("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef012_����б��܉��.jpg");

	//Fade("ɫ��", 500, 1000, null, true);
	Fade("���ե����ȣ�", 1000, 500, null, true);
	//Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
���ҽ�̫����ƽ��תΪ���£���������ʻ��
���԰�Ū�����ļ������һ��ƭ�����֣���ֻ������
Ϊ�˽�����������������Ļ�����ѡ�

{	Fade("���ե����ȣ�", 500, 1000, null, false);}
���������ʺϵĽǶ���̫�����·�����նȥ��ӭ��ѩ��
������ҷ��¿��Ĺ�����
���ҵ�ȷ�ȵз���̫����ΪѸ�١�ȷʵ���ȷ����ˣ���
��ؿ����ڣ���ȡ�Է���ս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("���ե����ȣ�", null);

//	SoundPlay("������ɣ�",1000,1,true);
	SetVolume("@mbgm*", 1000, 0, NULL);

	Fade("ɫ��", 500, 1000, null, false);
	Zoom("���ե����ȣ�", 500, 2000, 2000, Axl2, true);
	Delete("���ե����ȣ�");
	Fade("ɫ��", 500, 1000, null, true);
	Fade("ɫ��", 0, 0, null, true);
	
		Wait(2000);

	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1080a12">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
��Ŀ�ꡪ��
�����⡪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEXover("���ե����ȣ�", 19000, 0, 0, "cg/ef/ef002_�����Ƅ�.jpg");

	Fade("������", 0, 0, null, true);
	Move("�ԙC��", 0, -167, -487, Axl1, true);
	Move("���C��", 0, -500, -322, Axl1, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0501]
��<RUBY text="������">������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1090a00">
������ʲ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����ô��������
��ѩ���΢΢Ť��������������¶���Ƚ��ĵ����¡�


������ͨ�������ƣ�����Ӧ����ͷ���ı���֮�¡�
�����������������⽫������¶�����Ļ�����װ�ױ��
ͬ�ڿ����������������赲̫���Ľ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("���ե����ȣ�", 99, 0, 0, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Rotate("���ե����ȣ�", 0, @180, @180, @0, null, true);
	Fade("���ե����ȣ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0521]
��<RUBY text="����">ȥ��</RUBY>��
��<RUBY text="����">ɱ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("���ե����ȣ�", 19000, 0, 0, "cg/ef/ef002_�����Ƅ�.jpg");
	Fade("���ե����ȣ�", 300, 1000, null, true);

	SetFwC("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1100a12">
������������������������!!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1110a00">
����ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��I�T����

	SL_leftup2(19000,@0,@0,1000);

	OnSE("se���L_����_�z_���01",1000);
	SL_leftupfade2(0);

	Fade("ɫ��", 300, 1000, null, true);

		Delete("���C��");
		Delete("�ԙC*");
		Delete("���ե�����*");

		CreateTextureEX("���ե����ȣ�", 19001, 286, -103, "cg/ef/efRec_�a01.png");
		Zoom("���ե����ȣ�", 0, 100, 100, Dxl2, true);
		CreateTextureEX("���ե����ȣ�", 19001, 0, -70, "cg/ef/efRec_�a02.png");
		Zoom("���ե����ȣ�", 0, 100, 100, Dxl2, true);
		CreateTextureEX("���ե����ȣ�", 19001, -55, 3, "cg/ef/efRec_�a03.png");
		Zoom("���ե����ȣ�", 0, 100, 100, Dxl2, true);
		CreateTextureEX("���ե����ȣ�", 19001, -105, 3, "cg/ef/efRec_�a04.png");
		Zoom("���ե����ȣ�", 0, 100, 100, Dxl2, true);

		//����_ʼ
		CloudZoomStart2(700,1000,1000,500,1000);
		//����Ƅ�
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		CreateTextureSP("������", 100, -4000, 0, "���إ���`����");
		CreateTextureSP("������", 100, -4000, 0, "���إ���`����");

		CreateSCR1("@������","@������",1000,0,@0);
		CreateTextureSP("�ԙC��", 100, -73, -286, "cg/st/3d�����˜�_�T��_���Le.png");

		//�����S��������S����
		MoveFTP1("@�ԙC��",10000,5,10);

		OnSE("se���L_����_���ϕN01",1000);

	Wait(3000);

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",2000,300,true);
	SoundPlay("������ɣ�",2000,1000,true);

	Fade("ɫ��", 2000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
��������ǿ�����ˡ�
��������ѩ����ӵĴ����ɹ�ת���ӹ�Ƥ������
����ա�

��ǿ��ת������Ķ���������ͬ�����ļ�ʹֱ�����衣

��������ʹ�����Ҽ���һ��ʹ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1120a00">
�����ڣ���ʲô?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

			CreateTextureEX("������", 19000, Center, Middle, "cg/bg/resize/bg001_��c_03l.jpg");
			CreateTextureEX("���C��", 19000, -500, -300, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
			Zoom("������", 0, 1200, 1200, Dxl2, false);
			Move("������", 0, @100, @0, Dxl1, false);
			Rotate("������", 0, @0, @0, 60, Dxl1, false);
			Rotate("���C��", 0, @0, @0, 60, Dxl1, false);
			Zoom("���C��", 0, 2000, 2000, Dxl2, true);

	SoundPlay("@������ɣ�",2000,1,true);
	SoundPlay("������ɣ�",2000,1,true);

	Fade("������", 1000, 1000, null, false);

	SetFwC("cg/fw/fwѩ܇�_��Ц.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0551]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1130a12">
�����а���������!!
��ɱ������ɱ������ɱ�����ҡ�����������!!��
{
	WaitAction("������", null);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("���C��", 0, 1000, null, false);
	Zoom("���C��", 1000, 0, 0, Dxl1, false);
	Move("���C��", 1000, @1000, @0, Axl1, false);
	Move("������", 1000, @-100, @0, Dxl1, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 180, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 1000, 1000, Dxl3, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(150);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 120, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 1000, 1000, Dxl3, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(150);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 90, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 800, 800, Dxl3, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(150);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 60, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 500, 500, Dxl3, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(150);
	Fade("���ե����ȣ�", 1000, 0, null, false);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�����衢��Ц����Ū�ĺ�������ҹ�ա�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitFade("���ե�����*", null);

	Move("���ե����ȣ�", 0, 246, -164, null, false);
	Rotate("���ե����ȣ�", 0, @0, @0, 0, null, false);
	Zoom("���ե����ȣ�", 0, 100, 100, null, false);
	Move("���ե����ȣ�", 0, 180, -100, null, false);
	Rotate("���ե����ȣ�", 0, @0, @0, 0, null, false);
	Zoom("���ե����ȣ�", 0, 100, 100, null, false);
	Move("���ե����ȣ�", 0, 254, 64, null, false);
	Rotate("���ե����ȣ�", 0, @0, @0, 0, null, false);
	Zoom("���ե����ȣ�", 0, 100, 100, null, false);
	Move("���ե����ȣ�", 0, 355, 186, null, false);
	Rotate("���ե����ȣ�", 0, @0, @0, 0, null, false);
	Zoom("���ե����ȣ�", 0, 100, 100, null, false);
	Move("���ե�����*", 0, @-200, @0, Axl1, true);

	CreateTextureSP("������", 19900, 0, 0, SCREEN);
		CreateTextureSP("������", 19000, 0, 0, "cg/bg/resize/bg002_��a_03l.jpg");
		CreateTextureSP("�ԙC��", 19000, -520, -400, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
		CreateTextureSP("���C��", 19001, -300, -600, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Zoom("�ԙC��", 0, 50, 50, Dxl2, false);
		Zoom("���C��", 0, 0, 0, Dxl2, true);

	SetFwC("cg/fw/fwѩ܇�_��Ц.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1140a12">
���ٺ٣����١��ٺٺٺٺ٣�
�����Ȼ���ǵ�Ӣ�۵��ϰ���
�����򲻹��������У����а�����
{
	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M04",1000);

	FadeDelete("������", 300, false);
	Move("�ԙC��", 1000, @-100, @0, null, false);
	Zoom("�ԙC��", 1000, 0, 0, null, false);
	Zoom("���C��", 1000, 2000, 2000, Dxl1, false);
	Move("���C��", 1000, @700, @2000, Axl1, false);
	Move("������", 1000, @-200, @0, Dxl1, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 60, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 500, 500, Dxl3, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(150);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 90, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 800, 800, Dxl3, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(150);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 120, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 1000, 1000, Dxl3, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(150);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 180, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 1000, 1000, Dxl3, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(150);
	Fade("���ե����ȣ�", 1000, 0, null, false);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("������ɣ�",2000,300,true);
	SoundPlay("������ɣ�",2000,1000,true);

	FadeDelete("���ե�����*", 500, false);
	FadeDelete("������", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
��ѩ���һ�߳�Ц���ң�һ�߽��������ʻԶ��
��������������̳��������ڳ�Цһ��������С�

������Ϊʲô��
��Ϊʲô�Ǹ����ˣ���ô�а��ա�

���Ҳ���Ϊ���Ƕ������д��֮�ˣ������ܹ�
Ϊ�˺�������Ķľַ���������
���Ǹ�����ʮ��ȷ�š�����

�����ǲ����������ɱ������¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 19900, 0, 0, SCREEN);

		//�����ȥ
		CloudZoomFade2(0,false);
		SCR1stop();
		//���̶��������ֹࣺͣ
		MoveFTP1stop();

//		CreateTextureSP("������", 100, Center, Middle, "cg/bg/resize/bg001_��a_03.jpg");
		CreateTextureSP("������", 100, 0, -800, "���إ���`����");
		CreateSurfaceEX("�}Suf",200,2000,"������");
		Fade("�}Suf", 0, 1000, null, true);
		Rotate("�}Suf", 0, @0, @0, @-40, null, true);

		//�������
		CloudZoomStart(700,1000,1000,500,1000);
		//����Ƅ�
		CloudZoomVertex(0,@700,@0,Dxl2,true);

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();
		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,0,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(0,500,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange2(0,1400,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(0,25,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,20,null,true);

		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();

		//���̶���������
		MoveFFP1("@�}Suf",10000);

		CreateTextureSP("���C��", 200, -500, -200, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
		Rotate("���C��", 0, @0, @0, -45, null, true);
		Zoom("���C��", 0, 0, 0, Dxl2, true);

	SoundPlay("������ɣ�",1000,0,true);

	Zoom("���C��", 30000, 200, 200, Dxl1, false);
	Move("���C��", 30000, 500, -500, null, false);
	Move("������", 30000, @-450, @0, null, false);
	FadeDelete("������", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1150a00">
���������ţ���˵����
��ȷ��һ�¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1160a00">
������Ҫ����ȷ��ʲô��
��ѩ���һ�ء���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1170a12">
�����ǵģ�ȷ��ʲô����
����Ȼ�ǣ�����һ�����ĵķ���
�����ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���T����ܞ��
//����

	CreateTextureEX("������", 17000, -100, -1500, "���إ���`����");
	CreateTextureEX("���C��", 18000, -48, -342, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");

	//�����S��������S����
	MoveFTP1("@���C��",10000,3,10);
	//���̶���������
	MoveFFP2("@������",10000);

	//�����ȥ
	CloudZoomFade(500,false);

	Fade("������", 1000, 1000, null, false);
	Fade("���C��", 1000, 1000, null, false);
	Wait(1000);

	//����_ʼ
	CloudZoomStart2B(700,1000,1000);
	//����Ƅ�
	CloudZoomVertex2(0,@1000,@-200,Dxl2,true);

	//�����S��������S���ȣ�ֹͣ
	MoveFFP1stop();

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1180a12">
����Ը��ɣ�
����Ը��ɱ���Ұɡ�������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1190a12">
����Ϊ������
��ɱ���ҵĻ����ֱ���Ҫ<RUBY text="��������">��ɱһ��</RUBY>
������˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	//�����S��������S���ȣ�ֹͣ
	MoveFTP1stop();

	SetBlur("���C��", true, 1, 500, 50, false);

	OnSE("se���L_����_��ͻ�M01",1000);

	Fade("ɫ��", 300, 1000, null, false);
	Zoom("���C��", 300, 2000, 2000, Axl1, false);
	Move("���C��", 300, @100, @-300, Axl1, true);

	//���̶��������ֹࣺͣ
	MoveFFP2stop();

	CreateTextureSP("���C��", 17100, -408, -327, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
	Zoom("���C��", 0, 600, 600, Axl2, false);
	CreateTextureSP("�ԙC��", 17100, 4, -261, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	Move("������", 0, -400, -500, Axl1, true);

	//�����ȥ
	CloudZoomFade2(1000,false);

	OnSE("se���L_����_��ͻ�M07",1000);
	Fade("ɫ��", 500, 0, null, false);

	Move("�ԙC��", 500, @0, @50, Dxl1, false);
	Move("���C��", 500, @0, @-100, Dxl1, false);
	Move("������", 500, @0, @-200, Dxl1, true);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0601]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1200a12">
���ǰɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetBacklog("��!?��", "voice/ma04/016vs1210a00", ����);
	SetBacklog("��!?��", "voice/ma04/016vs1220a01", ��������);

	CreateVOICE("����","ma04/016vs1210a00");
	CreateVOICE("��������","ma04/016vs1220a01");
	SoundPlay("����",0,1000,false);
	SoundPlay("��������",0,1000,false);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0604]
//����������������
��!?��
��!?��

</PRE>
	SetTextEXC();
	Request("@text0604", NoLog);
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
//������һ�r�˱�
//��ͬ�r
{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1210a00">
��?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs1220a01">
��?!��
*/

//��ѩ܇�ͻ�M
//�􄇓ġ������`��

	CreateTextureEX("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef045_���ѩ`��.jpg");
	SetBlur("���ե����ȣ�", true, 2, 500, 50, false);
	Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);



	OnSE("se���L_����_��ͻ�M07",1000);

	Zoom("�ԙC��", 300, 900, 900, Axl2, false);
	Zoom("���C��", 300, 700, 700, Axl2, false);
	Fade("ɫ��", 300, 1000, null, true);

	OnSE("se���L_����_��ꪏ���01",1000);
	OnSE("se���L_����_��ꪏ���02",1000);

	Fade("���ե����ȣ�", 0, 1000, null, true);

	Shake("���ե����ȣ�", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Zoom("���ե����ȣ�", 1000, 1200, 1200, Dxl1, false);
	Fade("ɫ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
�������Եس��̫�����£�̫�������������Ľ���
��Ȼ����������ĳ�������������ܵ��ĳ����ȣ�
��ȫ��ֵһ�ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}Suf*");
	Delete("����*");
	Delete("���C*");
	Delete("�ԙC*");

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",2000,600,true);

		CreateTextureSP("������", 100, Center, -2000, "���إ���`����");
		//CreateSurfaceEX("�}Suf",200,2000,"������");
		//Fade("�}Suf", 0, 1000, null, true);
		//Rotate("�}Suf", 0, @0, @0, @-40, null, true);

		CreateTextureEX("������", 300, Center, -288, "cg/bg/resize/bg001_��a_03.jpg");

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,0,AxlDxl,true);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(0,650,Dxl1,true);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange2(0,1000,Dxl1,true);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(0,-25,Dxl1,true);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,0,null,true);

	FadeDelete("���ե����ȣ�", 500, false);
	Shake("������", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Zoom("������", 1500, 1500, 1500, Dxl1, false);
	Move("������", 1500, @-200, @0, Dxl1, false);

	SetFwC("cg/fw/fw����_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1230a00">
��Ϊ����Ϊʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("������", null);

		CreateSE("�ӣţ�","se���L_����_��ͻ�M03");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M04");

	OnSE("se���L_����_��ͻ�M08",1000);
	OnSE("se���L_����_���ϕN01",1000);

		//�������
		CloudZoomStart(700,1000,1000,500,1000);
		//����Ƅ�
		CloudZoomVertex(0,@-600,@-100,Dxl2,true);

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,0,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(3000,500,AxlDxl,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange2(3000,1600,AxlDxl,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(3000,25,AxlDxl,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(3000,0,null,false);

	Zoom("������", 2000, 1000, 1000, Axl1, false);
	Move("������", 2000, @0, @2000, Axl1, 1500);

	SoundPlay("�ӣţ�",0,1000,false);
	SetVolume("������ɣ�", 1000, 0, NULL);
	SoundPlay("�ӣţ�",0,1000,false);

	Fade("������", 500, 1000, Axl2, false);
	Move("������", 500, @0, @100, Dxl1, true);


	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0621]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1240a00">
��Ϊʲô�����֪��<RUBY text="����">���</RUBY>����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1250a12">
���ҿ�����Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1260a12">
���Ǹ�ҹ��
���Ǹ���ׯ��
��������ɽ�Ķ������С���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1270a12">
��������޺���ɱ������
Ϻ�ĵ�С��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������Ú���

	OnSE("se�M��_����_�ե�å���Хå�01",1000);

	Fade("ɫ��", 0, 1000, null, true);

		CreateTextureSP("������", 18000, 0, 0, "cg/bg/bg023_��Դ̫�μ�_03a.jpg");
		SetTone("������", Monochrome);
		CreateTextureSP("�����}��", 18000, 622, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
		SetTone("�����}��", Monochrome);
		CreateTextureSP("�����}��", 18000, 531, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
		SetTone("�����}��", Monochrome);
	Fade("ɫ��", 1000, 0, null, true);

	OnSE("se�M��_����_�ե�å���Хå�01",1000);

	Fade("ɫ��", 0, 1000, null, true);
		Delete("������");
		Delete("�����}*");
		CreateTextureSP("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef007_����Ѫ���֤�.jpg");
		SetTone("���ե����ȣ�", Monochrome);
	Fade("ɫ��", 1000, 0, null, true);

	Fade("ɫ��", 0, 1000, null, true);
			Delete("���ե����ȣ�");
	Fade("ɫ��", 300, 0, null, true);

	SetFwC("cg/fw/fw����_ƣ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1280a00">
������!!��

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1290a12">
��Ϊʲô���������ļһ�������������أ�
����ȫ����⡭��
�����Ե�����һ�¡�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1300a12">
��������������Ľ��С�
����ʶ�����Ǳ��������ռ�������
���С�����������һ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs1310a01">
��������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1320a12">
������Ψһһ�����������
��˵����
�������š���<RUBY text="����">����</RUBY>�ɣ��������
�����ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����g�Ҥα��
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	Fade("ɫ��", 0, 1000, null, true);
		CreateTextureSP("���ե����ȣ�", 18000, 0, 0, "cg/bg/bg054_�����Ҽ���a_01a.jpg");
		SetTone("���ե����ȣ�", Monochrome);
	Fade("ɫ��", 1000, 0, null, true);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
��
��������������������������

��
������������������ն��

��
���������������߱��

��
�����������������������

��
������������������������

��
��������������������������

��
��������������������а���

��
����������������������һ������Ҳ

��
��������������ͬ����Լ��
�����������������Ṳ���׵�֮����

��
������������������������ɢ

��
��������������������
������������������������֮����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("ɫ��", 500, 1000, null, true);
			Delete("���ե����ȣ�");
	Fade("ɫ��", 500, 0, null, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1330a00">
����������������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1340a12">
����˵�ϱ���ʱ���Ķ�������������Ԩ��
����Ϊ�������������<RUBY text="����">��ɢ</RUBY>��
��ϵ����
���١��٣��������˲��𰡡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����y�ǺŤ˛AȾ���줿�ˡ���
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	Fade("ɫ��", 0, 1000, null, true);
		CreateTextureSP("���ե����ȣ�", 18000, 0, 0, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
		SetTone("���ե����ȣ�", Monochrome);
	Fade("ɫ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
��
����������������Ⱦ������ӡ�����Թ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("ɫ��", 500, 1000, null, true);
			Delete("���ե����ȣ�");
	Fade("ɫ��", 500, 0, null, true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1350a12">
��������˵���㰡��
��Ϊʲô�����ӵ��ĸ���ɽ������ȥ�ء���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1360a12">
��������鷳�����䡭��
��Ϊ�λ�Ҫ�����ϵ����ǻ��أ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1370a00">
������������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1380a12">
��������������
���������ű�����Ľ��У�ȴ����
�Ͱ컵�˵��¡���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1390a12">
���Ͱ�а��ĵط���Ա��
����ȥɱ���ɰ��Ĵ�á���

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1400a12">
������������������
���㾿��������ʲô�أ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1410a00">
���������졭��
���쵰����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1420a12">
��Ϊ���뻵����������������ζ�
��Ҫǿ��Ľ�����
�������Ϊ�����ȶ����˵Ļ���������
����������Ҳ�޿��κΡ������𣿡�

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1430a12">
����ð�������������Ӣ�ۡ�
������Ӣ�۵Ļ�������ø���
����������а�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1440a00">
������쵰����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1450a12">
������˵��ֻ��ϲ��ɱ�ˣ�
����ð����������ν�Ķ����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1460a12">
���������Ļ�������ø���
���˵�ɱ�˲��а�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1470a00">
��˵�˱��죡��

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1480a12">
������������������������!!
�������ı߰������ǰ���ӵķ��������
����ӵķ��ﰡ����

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1490a12">
���桪����Ȥ������!!
����ѽ��ѽ��ѽ��ѽ��ѽ��ѽ��ѽ��ѽ��ѽ!!��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1500a00">
���Ҷ�˵�˱���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M
		CreateTextureSP("������", 100, 0, 0, "���إ���`����");
		CreateSurfaceEX("�}Suf",200,2000,"������");
		Rotate("�}Suf", 0, @0, @0, -30, null, false);
		Fade("�}Suf", 0, 1000, null, true);

		CreateTextureEX("������", 17000, 0, -5000, "���إ���`����");
		CreateTextureEX("�ԙC��", 18000, -100, -250, "cg/st/3d�����˜�_�T��_���La2.png");
		SetBlur("�ԙC��", true, 1, 500, 50, false);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",2000,600,true);
	OnSE("se���L_����_��ͻ�M08",1000);


		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(4000,100,Dxl1,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(4000,650,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange2(4000,1200,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(4000,-25,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(4000,40,null,false);

		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(4000,471);


	Move("������", 500, @-200, @-476, Axl1, false);
	Fade("������", 500, 0, null, false);
	Rotate("�}Suf", 2000, @0, @0, -60, null, false);
	Move("������", 2000, @-3000, @0, Axl1, 1500);

	SetVolume("������ɣ�", 2000, 1, NULL);
	SetVolume("������ɣ�", 2000, 0, NULL);

	Fade("ɫ��", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
���쵰��
���쵰��
���쵰�쵰�쵰�쵰�쵰��������

��ʲô����֪���ļһ
��ƾʲô��˵�Ի��ز��ͽ���Ѫ�����ˡ�

��ʲô���������ɱ�ˣ�
��ʲô�˸߲��ҵ�ɱ�ˣ�

����������һ��Ļ����Ƿ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 1000, 1000, NULL);

	Fade("������", 0, 1000, null, false);
	Fade("�ԙC��", 0, 1000, null, false);
	Move("������", 120000, @-400, @5000, null, false);

	//�����S��������S����
	MoveFTP1("@�ԙC��",10000,3,10);

	//�����ȥ
	CloudZoomFade(0,true);

	//����_ʼ
	CloudZoomStart2(700,1000,1000);
	//����Ƅ�
	CloudZoomVertex2(0,@500,@100,Dxl2,true);

	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0701]
�����Լ��ı�׼���������˵��һ������Ϊ�ǵĻ���

�������뷨���ᶨ�İ���ӡ���
��һ��������������������Ϊ��

��һ������ס���䣬�����۾����ž�һ����Ϣ��������
��������������ɽ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("ɫ��", 0, 1000, null, true);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		Delete("�ԙC*");
		CreateTextureEX("������", 17000, 0, 0, "���إ���`����");
		Zoom("������", 0, 1500, 1500, Dxl2, true);
		CreateTextureEX("�ԙC��", 17000, -456, -1111, "cg/st/resize/3d������K_�T��_���L2_m.png");
		SetBlur("�ԙC��", true, 1, 500, 50, false);

	//�����S��������S����
	MoveFTP2("@�ԙC��",10000,3,10);

	SetVolume("@mbgm*", 2000, 0, NULL);

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",2000,300,true);

	Move("������", 60000, @-400, @-4500, Axl1, false);
	Fade("������", 0, 1000, null, false);
	Fade("�ԙC��", 0, 1000, null, false);

	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0702]
�������쵰��
�����������<RUBY text="����������">������Ļ�</RUBY>��

�����Ƕ�ô���õ��°���
�����Ƕ�ô�Ҹ����°���

����һ�㡪��
���Ǹ����ˡ���
��ʲô�����˽⡪��

��ʲô�����˽⡪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 2000, 1, NULL);
	SetVolume("������ɣ�", 2000, 0, NULL);

	Fade("ɫ��", 0, 1000, null, true);

	//�����S��������S���ȣ�ֹͣ
	MoveFTP2stop();

	//�����ȥ
	CloudZoomDelete2(0,true);

	Delete("������");
	Delete("�ԙC��");

	CreateTextureSP("������", 17000, 0, 0, "cg/bg/bg001_��a_03.jpg");
	CreateTextureSP("�ԙC��", 17000, -1495, -1708, "cg/st/resize/3d������K_�T��_���L2_l.png");

	CreateColorSP("ɫ��", 19000, "#000000");
	CreateTextureSP("���٥�ȣ�", 19000, -1000, 0, "cg/ev/ev996_�������åȥ���.png");
	Rotate("���٥�ȣ�", 0, @0, @180, @0, null, true);

	//����������
	MoveSSP1("@�ԙC��",100000,0,1,0,1,500,null);

	SoundPlay("@mbgm10",0,1000,true);

	Move("���٥�ȣ�", 1000, @700, @0, Axl1, false);
	Fade("ɫ��", 1000, 0, null, false);

//	SetFwR("cg/fw/fw����_ŭ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1510a00">
��ѩ���һ�ء�����������!!��
{	WaitAction("���٥�ȣ�", null);
	Move("���٥�ȣ�", 10000, @200, @0, null, false);
	Fade("���٥�ȣ�", 1000, 500, null, false);
	Fade("ɫ��", 1000, 0, null, true);}<BR>

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("���C��", 18000, -171, -369, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
	Zoom("���C��", 0, 0, 0, Dxl2, true);
	SetBlur("���C��", true, 1, 500, 50, false);
	CreateTextureEXadd("���ե����ȣ�", 19000, 0, 0, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("���ե����ȣ�", 0, 2100, 2100, Dxl2, true);

		CreateSE("������ɣ�","se���L_����_��ͻ�M05");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M03");

	//������������ֹͣ
	MoveSSP1stop();

	//���̶���������
	MoveFFP1("@���C��",5000);

	OnSE("se���L_����_�ռ�����01",1000);
	OnSE("se���L_����_��ͻ�M01",1000);

	FadeDelete("���٥�ȣ�", 500, false);
	Fade("�ԙC��", 500, 0, null, false);
	Move("�ԙC��", 1000, @3000, @0, Axl1, 500);

		SoundPlay("@������ɣ�",1000,600,true);
		SoundPlay("�ӣţ�",0,1000,false);

	Fade("���ե����ȣ�", 500, 1000, null, false);
	Fade("���C��", 500, 1000, null, false);

	Rotate("���ե����ȣ�", 6000000, @0, @0, 3600000, null, false);
	Zoom("���C��", 500, 500, 500, Dxl2, true);

	SetFwR("cg/fw/fwѩ܇�_��Ц.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0711]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1520a12">
����ѽ����ѽ����ѽ��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓Ľ���
	OnSE("se���L_����_��ͻ�M03",1000);
	SoundPlay("@������ɣ�",1000,1000,true);

	Zoom("���C��", 300, 1000, 1000, Axl2, false);
	Fade("ɫ��", 300, 1000, null, true);

		Delete("���C��");
		Delete("���ե����ȣ�");
		Delete("����*");
		Delete("�}Suf");
		Delete("���٥�ȣ�");

		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();
		//����ȫ�����ֹࣺͣ
		MoveFRP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		//������������ֹͣ
		MoveSSP1stop();

		CreateTextureSP("������", 100, -4516, 220, "���إ���`����");
		CreateTextureEX("������", 100, -4516, 220, "���إ���`����");
		SetVertex("������", 5120, 864);
		SetVertex("������", 5120, 864);
		Rotate("������", 0, @0, @0, 40, null, true);
		Rotate("������", 0, @0, @0, 40, null, true);
		Zoom("������", 0, 2000, 2000, Dxl2, true);
		Zoom("������", 0, 2000, 2000, Dxl2, true);


		CreateTextureSP("�ԙC��", 100, 326, -419, "cg/st/3d�����˜�_�T��_���Le.png");
		Rotate("�ԙC��", 0, @0, @0, -40, null, true);

		CreateWindow("������ɥ���", 150, 512, 0, 512, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		CreateTextureSP("������ɥ���/������", 100, 0, 0, "cg/bg/bg001_��a_03.jpg");
		CreateTextureSP("������ɥ���/���C��", 100, -576, -478, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");
		Rotate("������ɥ���/���C��", 0, @0, @0, -40, null, true);
		CreateTextureSPadd("������ɥ���/���ե����ȣ�", 100, 0, 0, "cg/ef/ef042_���ô��.jpg");
		Zoom("������ɥ���/���ե����ȣ�", 0, 1200, 1200, Dxl2, true);

		CreateTextureSPadd("���ե����ȣ�", 20100, -300, 200, "cg/ef/ef008_��������܉��.jpg");
		SetVertex("���ե����ȣ�", 512, 576);
		Rotate("���ե����ȣ�", 0, @0, @0, @-90, Axl1, true);
	
		CreateTextureSPadd("���ե����ȣ�", 20100, 300, 200, "cg/ef/ef008_��������܉��.jpg");
		SetVertex("���ե����ȣ�", 512, 576);
		Rotate("���ե����ȣ�", 0, @0, @0, @90, Axl1, true);

		CreateSE("�ӣţ�","se���L_����_�z_���02");
		CreateSE("�ӣţ�","se���L_����_�z_���01");

		CreateSE("�ӣţ�","se���L_����_�z_�����w��01");
		CreateSE("�ӣţ�","se���L_����_��ꪏ���02");
		CreateSE("�ӣţ�","se���L_����_��ꪏ���03");
		CreateSE("�ӣţ�","se����_냇��_�k��03");

	SetVolume("������ɣ�", 1000, 1, NULL);

	Fade("ɫ��", 200, 1000, null, false);

	SoundPlay("�ӣţ�",0,1000,false);

	Move("���ե����ȣ�", 600, @1000, @0, Axl1, false);
	Rotate("���ե����ȣ�", 600, @0, @0, @180, Axl1, false);
	Zoom("���ե����ȣ�", 600, 5000, 5000, Dxl2, 200);

	SoundPlay("�ӣţ�",0,1000,false);

	Move("���ե����ȣ�", 600, @-1000, @0, Axl1, false);
	Rotate("���ե����ȣ�", 600, @0, @0, @-180, Axl1, false);
	Zoom("���ե����ȣ�", 600, 5000, 5000, Dxl2, 500);

	SoundPlay("�ӣţ�",0,1000,false);

	Fade("ɫ��", 100, 0, null, true);

	Delete("���ե����ȣ�");
	Delete("���ե����ȣ�");

	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);

	Shake("������ɥ���/���ե����ȣ�", 500, 0, 30, 0, 0, 700, Dxl1, false);
	Fade("������ɥ���/���ե����ȣ�", 1000, 0, null, false);

	Shake("������ɥ���/���C��", 800, 0, 50, 0, 0, 700, Dxl1, false);
	Move("������ɥ���/���C��", 1000, @600, @100, Dxl2, false);
	Move("�ԙC��", 1000, @-600, @100, Dxl1, false);

	Fade("ɫ��", 500, 0, null, true);

	Wait(200);

		CreateSE("�ӣţ�","se���L_����_��ͻ�M03");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M07");

		SoundPlay("�ӣţ�",0,1000,false);

	Move("�ԙC��", 500, @-500, @1000, Axl1, false);
	Move("������ɥ���/���C��", 800, @500, @-500, Axl1, 300);
	Move("������ɥ���", 500, @513, @0, Axl1, true);

		CreateTextureSP("�ԙC��", 100, 300, 1000, "cg/st/3d�����˜�_�T��_���Le.png");
		Rotate("�ԙC��", 0, @0, @0, 40, null, true);

	CreateSCR1("@������","@������",1000,0,4000);

		SetVolume("������ɣ�", 2000, 400, NULL);
		SoundPlay("�ӣţ�",0,1000,false);

	Move("�ԙC��", 1500, -259, -324, Dxl1, true);

	//�����S��������S����
	MoveFTP1("@�ԙC��",10000,3,5);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
����ѩ���̫���񿪣��������ļ�ڡ�
����ǳ������ȷʵ�شӵ����ϸо�����

��ԭ����������ܱ㲻ͬ�����������ϸ�ʤһ�����
�������Ÿ߶ȵ����ơ�
������ֻ��ʹ��һֻ�֣�����������ƴ������
���ް���������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		CreateWindow("������ɥ���", 150, 1024, -850, 512, 2276, false);
		SetAlias("������ɥ���", "������ɥ���");
		Zoom("������ɥ���", 0, 0, 1000, Dxl2, true);
		CreateTextureSP("������ɥ���/������", 100, 0, 0, "cg/bg/bg001_��a_03.jpg");
		CreateTextureSP("������ɥ���/���C��", 100, -300, -282, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		CreateTextureEX("������ɥ���/������", 300, 0, -5000, "���إ���`����");
		//CreateSurfaceEX("������ɥ���/�}Suf2",300,2000,"������ɥ���/������");
		CreateTextureEX("������ɥ���/���C��", 300, 167, 506, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");

		CreateTextureSP("������", 100, 0, -5000, "���إ���`����");
		CreateSurfaceEX("�}Suf1",200,2000,"������");
		CreateTextureEX("�ԙC��", 200, -2236, -931, "cg/st/3d�����˜�_�T��_ͨ��3a.png");

		CreateSE("�ӣţ�","se���L_����_��ͻ�M02");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M07");
		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);

	Zoom("������ɥ���", 1000, 600, 1000, Dxl1, false);
	Rotate("������ɥ���", 1000, @0, @0, 225, Dxl1, false);
	Move("������ɥ���", 1000, @-480, @0, Dxl1, false);
	Move("������ɥ���/���C��", 1000, @300, @0, Dxl1, true);

	//�����S��������S����
	MoveFTP2("@������ɥ���/���C��",20000,2,10);

	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1530a12">
���١��١��٣�
������һ�����˽�����������
�ᵱ�涯ŭ�ء���

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1540a12">
������Ҳ��΢�������һ�����أ�
������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
����һ��
�������ੲ�����?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1550a00">
�����ұ��졭����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs1560a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ
//�������϶�
//��ѩ܇��¶�

		CreateSE("�ӣţ�","se���L_����_��ͻ�M01");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M06");

		CreateSE("�ӣţ�","se���L_����_��ͻ�M02");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M07");

		CreateSE("�ӣţ�","se���L_����_���ϕN01");
		CreateSE("�ӣţ�","se���L_����_���ϕN01");
		CreateSE("�ӣţ�","se���L_����_�ռ�����01");
		CreateSE("�ӣţ�","se���L_����_�ռ�����01");

		CreateSE("�ӣ£�","se���L_����_��ͻ�M03");
		CreateSE("�ӣ£�","se���L_����_��ͻ�M07");


	//�����S��������S���ȣ�ֹͣ
	MoveFTP1stop();


		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);

	Move("�ԙC��", 1000, @100, @2000, Axl1, false);
	Zoom("�ԙC��", 1000, 2000, 2000, Dxl1, true);

	//�����S��������S���ȣ�ֹͣ
	MoveFTP2stop();

		SetVolume("������ɣ�", 1000, 600, NULL);
		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);
		MusicStart("�ӣţ�",0,1000,0,1000,null,false);

	Move("�ԙC��", 500, @0, @500, Dxl1, false);
	Fade("�ԙC��", 500, 1000, null, false);

	Fade("�}Suf1", 1000, 1000, null, false);
	Move("������", 4000, @0, 0, AxlDxl, false);
	Rotate("�}Suf1", 4000, @0, @0, 180, null, false);

	Rotate("������ɥ���/���C��", 1000, @0, @0, 360, null, false);
	Move("������ɥ���/���C��", 1000, @1000, @-300, null, 500);

		MusicStart("�ӣţ�",0,1000,0,1000,null,false);

	Move("�ԙC��", 4000, @0, @400, null, false);

	Move("������ɥ���/���C��", 500, @0, @-500, Dxl1, false);
	Fade("������ɥ���/���C��", 500, 1000, null, false);

	Zoom("������ɥ���", 1000, 1000, 1000, Dxl1, false);
	Rotate("������ɥ���", 1000, @0, @0, 0, null, false);
	Move("������ɥ���", 1000, 512, -750, Dxl1, false);

	//Fade("������ɥ���/�}Suf2", 1000, 1000, null, false);
	//Rotate("������ɥ���/�}Suf2", 4000, @0, @0, 180, null, false);
	Fade("������ɥ���/������", 500, 1000, null, false);
	Move("������ɥ���/������", 4000, @0, -400, AxlDxl, 500);

		MusicStart("�ӣţ�",0,1000,0,500,null,false);
		MusicStart("�ӣţ�",0,1000,0,500,null,false);

	Move("������ɥ���/���C��", 4000, @0, @-400, null, 2500);

		SoundPlay("�ӣ£�",0,1000,false);
		SoundPlay("�ӣ£�",0,1000,false);

	Move("�ԙC��", 500, @0, @1500, Axl1, 200);
	Move("������ɥ���/���C��", 500, @-0, @-1500, Axl1, true);

	SCR1stop();
	Delete("������");
	Delete("������");

	WaitAction("������ɥ���/������", null);

	CreateTextureSP("�ϱ���", 19100, 0, 0, SCREEN);

		Delete("������ɥ���/*");
		Delete("������ɥ���");
		Delete("����*");
		Delete("�}*");
		Delete("�ԙC*");

		//�������
		CloudZoomSet3("�ޥɣ�",10000,0,288,1024,576);
		//����_ʼ
		CloudZoomStart3(700,1000,1000);
		//����Ƅ�
		CloudZoomVertex3(0,@500,@0,Dxl2,true);

		//�������
		CloudZoomSet2("�ޥ�",18000,0,0,1024,576);
		//����_ʼ
		CloudZoomStart2(700,1000,1000);
		//����Ƅ�
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		Move("�ޥ�", 0, @0, @-288, Axl1, true);

		CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��a_03.jpg");
		CreateTextureSP("���C��", 100, -1047, -242, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");
		CreateTextureSP("�ޥ�/������", 1000, 0, 0, "cg/bg/bg001_��a_03.jpg");
		CreateTextureSP("�ޥ�/�ԙC��", 1000, 768, -455, "cg/st/3d�����˜�_�T��_���La.png");

	SetVolume("�ӣţ�", 1000, 0, NULL);
	SetVolume("�ӣţ�", 1000, 0, NULL);

	OnSE("se���L_����_��ͻ�M03",1000);
	OnSE("se���L_����_��ͻ�M08",1000);

		SetVolume("������ɣ�", 1000, 400, NULL);

	Move("���C��", 300, @1000, @0, Dxl1, false);
	Move("�ޥ�/�ԙC��", 300, @-1000, @0, Dxl1, false);
	FadeDelete("�ϱ���", 300, true);

	//�����S��������S����
	MoveFTP1("@�ޥ�/�ԙC��",20000,3,10);
	//�����S��������S����
	MoveFTP2("@���C��",10000,3,5);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
������������һ��Ľ��д����������ţ��ҽ�̫������
�Ҽ磬��ת����ٵ�������
����Եģ��з�����Ӱ��ڳ��������µļ��ơ�

��������������ʲ�����
���Ҵ����·�����λ���Ϸ�����һ��������顣


��һ����������������ٶ��������Ѿ��ҵ������ֵ�Ŀ
�ꡣ

����������һ����������֮һ
��
���������������������������䡱

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1570a00">
����������������𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓Ľ���

	//�����S��������S���ȣ�ֹͣ
	MoveFTP1stop();
	MoveFTP2stop();

		CreateSE("�ӣţ�","se���L_����_�z_���04");
		CreateSE("�ӣţ�","se���L_�n��_���Ľ��e01");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M07");
		CreateSE("�ӣţ�","se���L_�Ɖ�_����");
		CreateSE("�ӣţ�","se���L_����_��ꪏ���02");

		CreateSE("�ӣ£�","se���L_����_��ͻ�M03");
		CreateSE("�ӣ£�","se���L_����_��ͻ�M08");

		OnSE("se���L_����_��ͻ�M01",1000);
		OnSE("se���L_����_��ͻ�M02",1000);
		OnSE("se���L_����_��ͻ�M08",1000);

	//�����ȥ
	CloudZoomDelete(500,false);

	Move("���C��", 500, @1000, @0, Axl1, false);
	Move("�ޥ�/�ԙC��", 500, @-1000, @0, Axl1, 200);

	DrawTransition("������", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", false);
	DrawTransition("�ޥ�/������", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("������", 19000, 0, 0, SCREEN);
		Delete("���C��");
		Delete("�ޥ�/*");

		//kopipe
		CreateTextureSP("������", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
		Rotate("������", 0, @0, @0, 40, null, true);

		CreateTextureSP("���C��", 200, -1398, -543, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");
		SetBlur("���C��", true, 1, 500, 50, false);
		CreateTextureSP("�ԙC��", 200, 1078, -163, "cg/st/3d�����˜�_�T��_���La.png");
		SetBlur("�ԙC��", true, 1, 500, 50, false);

		CreateTextureEXadd("���ե����ȣ�", 300, 0, 0, "cg/ef/ef040_�����nͻ.jpg");

	MusicStart("�ӣ£�",0,1000,0,1500,null,false);
	MusicStart("�ӣ£�",0,1000,0,1500,null,false);

	FadeDelete("������", 300, false);

	Move("���C��", 500, @1000, @0, Axl1, false);
	Move("�ԙC��", 500, @-1000, @0, Axl1, 450);

		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);

	Shake("�ԙC��", 500, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("���C��", 500, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("���ե����ȣ�", 50, 1000, null, true);

	MusicStart("�ӣţ�",0,1000,0,1500,null,false);

	Move("���C��", 1000, @100, @0, null, false);
	Move("�ԙC��", 1000, @-100, @0, null, false);
	Fade("ɫ��", 300, 1000, null, true);

		CreateTextureSP("���C��", 200, -398, -543, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
		SetBlur("���C��", true, 1, 500, 50, false);
		CreateTextureSP("�ԙC��", 200, 078, -163, "cg/st/3d�����˜�_�T��_���Le.png");
		SetBlur("�ԙC��", true, 1, 500, 50, false);

		SetVolume("������ɣ�", 1000, 1, NULL);
		SetVolume("������ɣ�", 1000, 1, NULL);

		SoundPlay("�ӣţ�",0,1000,false);

	Rotate("���C��", 1000, @0, @0, 90, Dxl1, false);

	Move("���C��", 1000, 167, -499, Dxl1, false);
	Move("�ԙC��", 1000, -306, -236, Dxl1, false);

	Fade("ɫ��", 500, 0, null, true);
	Fade("���ե����ȣ�", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
����ʤһ�
��������Խ������������У��ҵĵ��⽫�з��ĵ���
�񿪣�ֱָ���Ǹ�����������������졣

���ƺ�������һ���ͷ��
�����Ͻ��������Ĵ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		OnSE("se���L_����_��ͻ�M06",1000);
		OnSE("se���L_����_��ͻ�M02",1000);
		OnSE("se���L_����_���ϕN01",1000);

		SetVolume("������ɣ�", 1000, 1000, NULL);
		SetVolume("������ɣ�", 1000, 200, NULL);


	Rotate("���C��", 300, @0, @0, 180, Dxl1, false);
	Move("���C��", 300, @1000, @0, Dxl1, false);
	Move("�ԙC��", 300, @-1000, @0, Dxl1, true);

		Delete("�ԙC��");
		Delete("���C��");

		CreateTextureEX("������", 17000, Center, -512, "cg/bg/resize/bg001_��c_03l.jpg");
		CreateTextureEX("���C��", 17000, 0, 0, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");


		OnSE("se���L_����_��ͻ�M01",1000);
		OnSE("se���L_����_��ͻ�M08",1000);


	Zoom("���C��", 1000, 500, 500, Dxl1, false);
	Move("���C��", 1000, @300, @-1000, Axl1, false);
	Fade("���C��", 1000, 1000, null, false);

	Move("������", 1000, @0, @200, Dxl1, false);
	Fade("������", 1000, 1000, null, false);

	SetVolume("������ɣ�", 2000, 1, NULL);
	SetVolume("������ɣ�", 2000, 0, NULL);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1580a12">
������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		CreateTextureSP("������", 100, -300, -4000, "cg/bg/bg203_�����ݳ�������_03.jpg");
		CreateSurfaceEX("�}Suf",100,2000,"������");
		Rotate("�}Suf", 0, @0, @0, 180, null, true);

		CreateTextureEX("������", 100, -512, -576, "cg/bg/resize/bg001_��c_03l.jpg");
		Request("������", Smoothing);
		CreateTextureSP("���C��", 100, -190, -500, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		Zoom("���C��", 0, 50, 50, Dxl2, true);

		CreateTextureSP("������", 17100, -300, -1000, "���إ���`����");
		CreateSurfaceEX("�}Suf2",17100,2000,"������");
		Rotate("������", 0, @0, @180, @0, null, true);
		Rotate("�}Suf2", 0, @0, @0, 40, AxlDxl, true);
		CreateTextureEX("���C��", 17100, 66, -440, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
		Rotate("���C��", 0, @0, @0, -40, null, true);

		//�������
		CloudZoomSet(1000);
		//����Ƅ�
		//CloudZoomVertex(1000,@500,@200,Dxl2,true);

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();
		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,0,AxlDxl,false);
	
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(0,680,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange(0,1200,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(0,-25,Dxl1,false);
	
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,0,Dxl1,false);

		//����_ʼ
		CloudZoomStart(700,1000,1000,500,1000);
		//����Ƅ�
		CloudZoomVertex(0,@0,@-300,Axl1,false);

		//���̶���������
		MoveFFP1("@�}Suf",5000);

		SetVolume("������ɣ�", 1000, 1000, NULL);

	Fade("�}Suf", 0, 1000, null, true);
	FadeDelete("������", 1000, false);

	SetFwC("cg/fw/fw����_ŭ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0791]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1590a00">
���о������𡪡�ѩ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
��һ�����ġ����䡱����������ڵз��Ĺ�����ȫ�Գ�
��һ����ӭ��ն�϶Է��Ĺ�����������ն�ϵ��������
��ʽ��

����˫��������ͬĿ�Ľ���֮ʱ���Խ����������뾫ȷ
��ռ�ŵ�һ����ʤ��
���ղŵ��Ǵν��棬����ռ�Ϸ硣

������Է����˺����ǲ�ǳ��
������һ��һ����Ťת���棡

�����´εĽ����о�ʤ�ɡ�
��
��������������˵�ʤ��������Ϊֹ�ˡ�

����Ȼ����ɱ����������һ��Ҫ�������޷�������Ȼ
��ȥӭս��ֻ���
���ǵġ��������߹��������治�ǰ����������ֵ�ʱ
��

��ƽ���޹ʵ��˷���ʱ�䡭����
��������ȥ����ɺޣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//��������
<voice name="����" class="��������" src="voice/ma04/016vs1600a01">
������������
�������δ��ͷ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1610a00">
��ʲô?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ
//�{��
	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",2000,600,true);

	OnSE("se���L_����_��ͻ�M08",1000);

	CreateSE("�ӣţ�","se���L_����_��ͻ�M03");

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,180,AxlDxl,false);
	
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(5000,440,AxlDxl,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange(5000,1400,AxlDxl,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(5000,25,AxlDxl,false);
	
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(5000,360,Dxl1,false);

		//����Ƅ�
		CloudZoomVertex(3000,@0,@300,Axl1,false);

	Rotate("�}Suf", 4000, @0, @0, 0, AxlDxl, false);
	Move("������", 4000, @0, @4000, AxlDxl, 3000);

	SoundPlay("�ӣţ�",0,1000,false);

	//�����ȥ
	CloudZoomFade(2000,false);

	Move("���C��", 2000, @0, @100, Dxl1, false);
	Fade("������", 1000, 1000, null, false);
	Move("������", 2000, @0, @288, Dxl1, true);

	//���̶��������ֹࣺͣ
	MoveFFP1stop();
	Delete("������");
	Delete("�}Suf");

	CreateTextureSP("������", 17000, 0, 0, SCREEN);
		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

	//�������
	CloudZoomSet2("�ޥ�",18000,0,0,1024,576);
	//����_ʼ
	CloudZoomStart2B(700,1000,1000);
	//����Ƅ�
	CloudZoomVertex2(0,@-500,@0,Dxl2,true);

	//���̶���������
	MoveFFP1("@�}Suf2",20000);
	//�����S��������S����
	MoveFTP2("@���C��",20000,3,5);

	SetVolume("������ɣ�", 1000, 1, NULL);

	Move("������", 120000, @0, @1000, null, false);
	Fade("���C��", 1000, 1000, null, false);
	Fade("�}Suf2", 1000, 1000, null, true);
	FadeDelete("������", 0, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
���໥���У����������ѩ����������Ͽշ�������
��ͣ�����Ϸɡ�
����Ҫ��ѭ�ﺽս�Ķ��ɣ��Ǳ�һ��ҪΧ��ͷ�����ͷ�
�У�Ϊ��һ�εĽ�������ٶȲ��С�

������������
������������Ҫ����ս����Χ�����·������Դ����ٶ�
���Ƕ���

���Ǿ���Ϊ��ȡ�߶����ƶ����������ˡ�������ɡ�
�������ַ���ռ���Ϸ�λ�ú������塣̫�ķ�ʱ���ˡ�
����ȡ�ø߶ȡ�ת����Ҫ����ͻ������ʱ�з�������
��һ��׼��������ǰ�˰ɡ�

����������˵��
�����ҿ�����׼�����ߵ���̬���������ϸ��������Ǳ�
ʱ��������

������һ�����ͻ���׼���½�ʱ��©�������Ͽչ�����
�������⣬�п��ܡ�������Ǹ����˵Ļ����ͻ����
�׾ٵ�ˣ�����ֶΰɡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ŭ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1620a00">
���Ҳ����ϵ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Mͻ
		CreateSE("�ӣţ�","se���L_����_��ͻ�M01");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M06");

	//�������ԥåȣ�˲�g��ʾ��
	Cockpit_AllFade2();
	//�������ԥåȣ��ԙC�����ӣ�
	FrameShake();

	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(120000,200,DxlAuto,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange(120000,2500,DxlAuto,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(120000,60,DxlAuto,false);

	//�����ȥ
	CloudZoomDelete2(500,false);

	//����_ʼ
	CloudZoomStart(700,1000,1000,500,1000);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();

	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);

	SetVolume("������ɣ�", 1000, 400, NULL);

	Zoom("���C��", 120000, 100, 100, DxlAuto, false);
	Move("������", 1000, @0, -30, Dxl1, false);
	Move("���C��", 1000, @0, -245, Dxl1, false);

	FadeDelete("���C��", 1000, false);
	Fade("�}Suf2", 1000, 0, null, true);

	//����ȫ������
	MoveFRP1("@������",20000,15,15);
	//�����S��������S����
	MoveFTP1("@���C��",10000,2,2);

	//���̶��������ֹࣺͣ
	MoveFFP1stop();
	MoveFTP2stop();
	Delete("������");
	Delete("�}Suf");
	
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
����׷����ѩ�����������Ӱ��
�����̾����������������Υ���������еĵ�������
�Ѵ���½���

����Ȼ��ˣ�������������
�����ң����ʻ������ӡ�

�������ʾ���һ�еĿ���ս�л�������Ĵ��ۣ������
̰ͼ�Ÿ߶ȡ�
��û���޶ȡ�û��ֹ����û�����㡣

�����Ų�񷡣
�������޷������İ�ɫʥ��ΪĿ�ꡣ

{	SetVolume("@mbgm*", 3000, 0, NULL);}
��ѩ�������ʲô��
����ʹ��β��Ҳ���ı䷽�룬ֻ����Ϊһ������������
��

������������ߣ��ٶ�Ҳ������ʼ�����ˡ�
��Ȼ�����ȷ�����ƺ���ת�������Ĵ������뽻����
һֱ��������������������Ĳ����Ȼ�����ֹۡ�
������������̣����ӻ���ʮ����ȷ��

����׽����ֻ����Ҫһ��ʱ�䡣
����ʹѩ���ת��ӭ����������������̬֮ǰ���ұ���
����ն����

����Ӧ���Ѿ���ʶ���Լ�����һ���˰ɡ�
��Ȼ������δֹͣ���衣

���Ǳ���ҹ�ķ�����ƻ󣬽�ս���������𡪡�
���������뵽�������¡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 19100, 0, 0, SCREEN);

		//���̶��������ֹࣺͣ
		MoveFRP1stop();
		MoveFTP1stop();

		//�����ȥ
		CloudZoomDelete(0,true);

		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		CreateTextureSP("������", 17000, 0, 0, "cg/bg/bg001_��a_03.jpg");
		CreateTextureSP("���ե����ȣ�", 17000, -400, 10, "cg/ef/resize/efRec_�_ex.png");
		SetVertex("���ե����ȣ�", 0, 576);
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, false);
		CreateTextureSP("���ե����ȣ�", 18100, 0, 10, "cg/ef/resize/efRec_�_ex.png");
		SetVertex("���ե����ȣ�", 0, 576);
		Zoom("���ե����ȣ�", 0, 1500, 1500, Dxl2, false);

		CreateTextureSP("���C��", 17100, -1000, 1000, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
		Rotate("���C��", 0, @0, @0, -60, null, true);
		CreateTextureSP("�ԙC��", 17100, -1000, 1000, "cg/st/3d�����˜�_�T��_���La2.png");
		Rotate("�ԙC��", 0, @0, @0, -60, null, true);

		CreateSE("�ӣţ�","se���L_����_��ͻ�M01");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M03");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M01");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M03");

	SetVolume("������ɣ�", 2000, 0, NULL);

	FadeDelete("������", 500, false);

	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);

	Move("���C��", 300, @1500, @-2300, null, 200);
	Fade("���ե�����*", 300, 600, null, false);
	Shake("���ե�����*", 300, 0, 10, 0, 0, 700, Dxl1, false);
	Zoom("���ե����ȣ�", 300, 2200, 2200, Dxl1, false);
	Zoom("���ե����ȣ�", 300, 1700, 1700, Dxl1, false);

	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);

	Move("�ԙC��", 300, @1500, @-2000, null, 200);
	Fade("���ե�����*", 1000, 0, null, false);
	Shake("���ե�����*", 300, 0, 20, 0, 0, 700, Dxl1, false);
	Zoom("���ե����ȣ�", 300, 2400, 2400, Dxl1, false);
	Zoom("���ե����ȣ�", 300, 1900, 1900, Dxl1, true);

	Wait(1000);

		CreateTextureEX("������", 17100, 0, -576, "cg/bg/resize/bg001_��a_03.jpg");

		CreateTextureEX("�ԙC��", 17100, -337, -189, "cg/st/3d�����˜�_�T��_���La2.png");
		Rotate("�ԙC��", 0, @0, @0, -40, null, true);
		Zoom("�ԙC��", 0, 100, 100, Dxl2, true);
		CreateTextureEX("���C��", 17100, 100, -561, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
		Rotate("���C��", 0, @0, @0, -40, null, true);
		Zoom("���C��", 0, 100, 100, Dxl2, true);

	//�����S��������S����
	MoveFTP1("@���C��",20000,2,2);
	//�����S��������S����
	MoveFTP2("@�ԙC��",25000,2,2);

	Move("������", 120000, @-1024, @576, null, false);
	Fade("������", 1000, 1000, null, false);
	Fade("���C��", 1000, 1000, null, false);
	Fade("�ԙC��", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0841]
�������˸е�ս���������Ե��������������
��һ����ô���Ļ��ٶȻἱ���½���������Ӧ�����Ѿ�
���ٵ��˻ᵼ�¼����½���Σ��ֵ�������ÿ�������
���������ؼ��������塣

���������ھ����ϲ����˺����������������������
���ϣ����˽�����������������֮�⣬Ҳû����������
�˰ɡ�
���ųư�����������ޣ����м��������������һ���ء�

����������ζ�����Ϊ���Ǿũ�ʽ������׵����ܡ�
����ֻ����ѩ���һ�ص������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 19999, 0, 0, SCREEN);

		Delete("������");

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP2stop();

		CreateTextureSP("������", 17000, 0, -2000, "���إ���`����");
		CreateTextureSP("���ե����ȣ�", 17000, 0, 0, "cg/ef/resize/efRec_�_ex.png");
		SetVertex("���ե����ȣ�", 0, 576);
		CreateTextureSP("���ե����ȣ�", 17000, 0, -577, "cg/ef/resize/efRec_�_ex.png");
		SetVertex("���ե����ȣ�", 1024, 576);
		Rotate("���ե����ȣ�", 0, @180, @0, @0, null, true);

		CreateTextureSP("�ԙC��", 17100, -350, -300, "cg/st/3d�����˜�_�Tͻ_���L.png");
//		Zoom("�ԙC��", 0, 500, 500, Dxl2, true);
		CreateTextureSP("���C��", 17100, 286, -271, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Zoom("���C��", 0, 3000, 3000, Dxl2, true);
		SetShade("���C��", MEDIUM);
		Request("���C��", Smoothing);

		Zoom("���ե�����*", 120000, 10000, 10000, DxlAuto, false);

		//�����S��������S����
		MoveFTP1("@���C��",20000,10,10);
		//�����S��������S����
		MoveFTP2("@�ԙC��",25000,5,5);

	FadeDelete("������", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0842]
���ƽ���β��
���ҷ��������Ѿ�����Σ��ֵ����ʹ���������ڷ���
���Ǹ�˲�䣬��Ҳ��ӿ���ˤ�䵽���ϰɡ�


�����㲻����������Ҳ���ܱ�¶���Ǳ���һ�档
����ʹ�����ٶȵĲ�����������㿿��������������
Ȼȷʵ�ش��ڡ�����������ɸ�Ϊ�Ͽ�ķ��У����ڴ�
֮ǰ���ȵ��µĻ�������

������һ����
������һ�����ܿ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 19999, 0, 0, SCREEN);

		//�����S��������S����
		MoveFTP1("@���C��",20000,2,2);
		//�����S��������S����
		MoveFTP2("@�ԙC��",25000,2,2);

		Delete("������");
		Delete("���ե�����*");

			//�������ԥåȣ�˲�g��ʾ��
			Cockpit_AllFade2();
			//�������ԥåȣ��ԙC�����ӣ�
			FrameShake();
	
			//�������ԥåȣ��ԙC����ٶȣ�
			CP_SpeedChange(0,165,DxlAuto,false);
			//�������ԥåȣ��ԙC��󣺸߶ȣ�
			CP_HighChange(0,2800,DxlAuto,false);
			//�������ԥåȣ��ԙC������ǣ�
			CP_AltChange2(0,85,DxlAuto,false);
	
			//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
			CP_RollBarMoveA();

		Fade("�ԙC��", 0, 0, null, true);
		Fade("���C��", 0, 0, null, true);

		Request("������", Smoothing);
		Zoom("������", 0, 1500, 1500, Dxl2, true);
		Move("������", 0, @0, 120, Axl1, true);

		CreateTextureSP("���C��", 200, -170, -234, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		Zoom("���C��", 0, 500, 500, Dxl2, true);

		//����ȫ������
		MoveFRP1("@������",20000,15,15);
		//�����S��������S����
		MoveFTP1("@���C��",10000,2,2);

	FadeDelete("������", 500, true);

	CreateTextureEX("������", 19998, 0, 0, SCREEN);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0843]
������˫������ķ��й���Ѿ��ӽ���ֱ������
�������ķ�����Ȼά�ֲ��˼����ˡ�

������������ļ��ޡ�

{	SetVolume("������ɣ�", 2000, 1, NULL);
	SetVolume("������ɣ�", 2000, 1, NULL);}
��ѩ���������<k>
{	Fade("������", 2000, 1000, null, true);}<?>
��ͣ�����ˡ�

�����ڣ���ȫʧȥ���ٶȡ�
��<RUBY text="����">����</RUBY>��

����������
��׹�䡪��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



		//���̶��������ֹࣺͣ
		MoveFFP1stop();
		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//����ȫ�����ֹࣺͣ
		MoveFRP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		MoveFTP2stop();
		//������������ֹͣ
		MoveSSP1stop();

		CreateTextureEX("���٥�ȣ�", 100, -437, -249, "cg/ev/resize/evex003_ѩ܇�_��Ц.png");

	Fade("������", 1000, 0, null, false);
	Fade("���٥�ȣ�", 1000, 500, null, false);

//	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1630a12">
������������������������������������
����������������������������������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("������", 1000, 1000, null, true);

//	CreateTextureSP("������", 19999, 0, 0, SCREEN);

		CreateTextureSP("���C��", 200, -170, -184, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		//SetVertex("���C��", 650, 650);

		CreateTextureEX("���C��", 200, -199, -519, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Zoom("���C��", 0, 800, 800, Dxl2, false);
		Rotate("���C��", 0, @0, @0, 180, null, true);
		//SetBlur("���C��", true, 1, 500, 100, true);

		Move("������", 0, -512, 288, Axl1, true);
		Zoom("������", 0, 2000, 2000, Dxl2, true);
	
		Delete("���٥�ȣ�");

//	FadeDelete("������", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
��׹��<k>
{	SoundPlay("@mbgm12",0,1000,true);
	FadeDelete("������", 500, true);
}
������������������<RUBY text="������">��û��</RUBY>��

��ѩ���һ�ز�δ׹�䡣
��������������ʱ��Ťת�˷���档

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		CreateTextureEX("������", 200, 0, 0, "cg/bg/bg001_��a_03.jpg");
		CreateTextureEX("���C��", 200, 100, -350, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");
		Rotate("���C��", 0, @0, @0, -60, Dxl1, true);

		CreateTextureEX("������", 17000, 0, -2000, "���إ���`����");
		CreateTextureEX("���ե����ȣ�", 17000, 0, 0, "cg/ef/resize/efRec_�_ex.png");
		SetVertex("���ե����ȣ�", 0, 576);
		CreateTextureEX("���ե����ȣ�", 17000, 0, -577, "cg/ef/resize/efRec_�_ex.png");
		SetVertex("���ե����ȣ�", 1024, 576);
		Rotate("���ե����ȣ�", 0, @180, @0, @0, null, true);

		CreateTextureEX("�ԙC��", 17100, -226, -173, "cg/st/3d�����˜�_�Tͻ_���L.png");
//		Zoom("�ԙC��", 0, 500, 500, Dxl2, true);
		CreateTextureEX("���C��", 17100, 286, -271, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Zoom("���C��", 0, 3000, 3000, Dxl2, true);
		SetShade("���C��", MEDIUM);
		Request("���C��", Smoothing);
		CreateTextureEX("���C��", 17100, -345, -1600, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		Zoom("���C��", 0, 3000, 3000, Dxl2, true);
		SetShade("���C��", MEDIUM);
		Request("���C��", Smoothing);

	OnSE("se����_냇��_�k��02",1000);
	OnSE("se����_냇��_�k��04",1000);

	Wait(1500);

	Fade("ɫ��", 400, 1000, null, false);
	Rotate("���C��", 400, @0, @0, 20, Axl1, false);
	Move("���C��", 400, @-20, @-10, Axl1, true);

		Rotate("���C��", 0, @0, @0, 0, Axl1, false);

		Fade("������", 0, 1000, null, false);
		Fade("���C��", 0, 1000, null, false);
		Fade("ɫ��", 0, 0, null, true);

	Fade("ɫ��", 400, 1000, null, false);
	Rotate("���C��", 400, @0, @0, @-30, Axl1, false);
	Move("���C��", 400, @-300, @0, Dxl1, true);

		Delete("������");
		Delete("���C��");

		Fade("���ե�����*", 0, 1000, null, false);
		Fade("������", 0, 1000, null, false);
		Fade("�ԙC��", 0, 1000, null, false);
		Fade("���C��", 0, 1000, null, false);
		Fade("ɫ��", 0, 0, null, true);

	Fade("ɫ��", 400, 1000, Axl2, false);
	Fade("���C��", 400, 0, Axl2, false);
	Move("���C��", 400, @200, @-1000, Axl1, false);
	Fade("���C��", 400, 1000, Dxl2, false);
	Move("���C��", 400, @0, @1000, Dxl1, true);

		Delete("������");
		Delete("���C��");
		Delete("���C��");
		Delete("�ԙC��");
		Delete("���ե�����*");

		Fade("���ե�����*", 0, 1000, null, false);
		Fade("������", 0, 1000, null, false);
		Fade("�ԙC��", 0, 1000, null, false);
		Fade("���C��", 0, 1000, null, false);
		//Fade("ɫ��", 0, 0, null, true);

	CreatePlainSP("�}��д", 100);
	Request("�}��д", AddRender);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("ɫ��", 0, 0, null, true);
	Fade("ɫ��", 1000, 0, null, false);

	Zoom("�}��д", 2000, 1500, 1500, Dxl1, false);
	Fade("�}��д", 2000, 0, null, false);

	Rotate("���C��", 1000, @0, @0, 80, Axl1, false);
	Move("���C��", 1000, @0, @-50, Axl1, false);
	Zoom("���C��", 1000, 800, 800, Axl2, false);
	Fade("���C��", 1000, 0, null, 500);

	Fade("���C��", 500, 1000, null, false);
	Rotate("���C��", 1000, @0, @0, 0, Dxl1, false);
	Move("���C��", 1000, @0, @200, Dxl2, false);
	Zoom("���C��", 1000, 1000, 1000, Dxl1, true);

	WaitAction("�}��д", null);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0861]
����Ȼ��Ťת��
����ħ��һ������أ������ڲ���գ�۵�ʱ��������
���˸���

��ѩ���ͷ�������������ķ��򡪡�
��<RUBY text="����">����</RUBY>ֱ�������

����ֱ��ת��
������ס�������ٶ���ʧ��˲��������������������
������һ�㷽�Ŵ�ɵ���Ϊ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Request("���C��", Smoothing);

	CreateTextureEX("���٥�ȣ�", 100, -473, -210, "cg/ev/resize/evex003_ѩ܇�_��Ц.png");
	Fade("���٥�ȣ�", 1000, 500, null, true);

//	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1640a12">
��������������������������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1650a12">

����������������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateEffect("���ե����ȣ�", 1000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("���ե����ȣ�", "���ե����ȣ�");
	Fade("���ե����ȣ�", 0, 0, null, true);
	Fade("���ե����ȣ�", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
��ͻȻ���������ˡ�
������Ԥ�ס����޸��ݡ�

��ֻ�ǣ���������һ����������С�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("���ե����ȣ�", null);

	CreateWindow("������ɥ���", 150, 512, 0, 512, 576, false);
	SetAlias("������ɥ���", "������ɥ���");
	CreateTextureEX("������ɥ���/���٥�ȣ�", 3000, 324, -211, "cg/ev/resize/evex003_����_���L.png");
	Fade("������ɥ���/���٥�ȣ�", 500,1000, null, true);

	CreateWindow("������ɥ���", 150, 0, 0, 512, 576, false);
	SetAlias("������ɥ���", "������ɥ���");
	CreateTextureEX("������ɥ���/���٥�ȣ�", 3000, -473, -210, "cg/ev/resize/evex003_ѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0881]
��
�������ն������ĵ��˱���<k>
{	Fade("������ɥ���/���٥�ȣ�", 500, 1000, null, true);}
��������������������������ѩ���һ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",2000,300,true);

	SetVolume("������ɣ�", 1000, 1000, NULL);

	CreateTextureSP("������", 19999, 0, 0, SCREEN);
	Delete("���ե����ȣ�");
	Delete("������ɥ�*");
	Delete("���٥��*");
	FadeDelete("������", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0882]
��ʱ����������
����ν������������������

������ѩ��������ơ�
�������걸��

���ٶȲ�ࡪ����ת��
����Ϊ������������������ֱ�����������Ϊѩ���
�ṩ�˰�����

����ֱ�����������
�������������ӭ�ӵĵ��ˡ�

��ת˲֮�俪ʼ�漴�����ģ���������ת�硣
�����Թ��ߵ��ľ������뵽���Ǹ��Ѿ������ô���֪ʶ��

�������������ǡ�
����һ������ʼ�桤����һ��ի��ʦ�������������Ӿ�
��ի�����̳е�����ط�����

��һ���������հ��塣
�����������潣���������

�����ǡ�
�������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		CreateTextureSP("���C��", 200, -199, -319, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Request("���C��", Smoothing);

		CreateTextureEX("���٥�ȣ�", 3000, 117, -163, "cg/ev/resize/evex003_ѩ܇�_��Ц.png");
//		Zoom("���٥�ȣ�", 0, 3000, 3000, Dxl2, true);
		SetBlur("���٥�ȣ�", true, 2, 500, 100, false);

		CreateTextureEXadd("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef003_�����Ƅ�.jpg");
		Zoom("���ե����ȣ�", 0, 20000, 20000, Dxl2, true);

		CreateSE("�ӣţ�","se���L_����_��ͻ�M02");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M06");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M07");
		CreateSE("�ӣţ�","se���L_����_Ź��05");

		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);

	SetVolume("������ɣ�", 2000, 1, NULL);
	SetVolume("������ɣ�", 2000, 0, NULL);

	Fade("���ե����ȣ�", 300, 500, null, false);
	Zoom("���ե����ȣ�", 500, 1000, 1000, Dxl1, false);

	Move("������", 500, @200, @-200, Dxl1, false);

	Fade("���C��", 500, 500, null, false);
	Move("���C��", 500, -528, -247, Dxl1, false);
	Move("���C��", 500, -528, -247, Dxl1, false);
	Zoom("���C��", 500, 1800, 1800, Axl1, false);
	Zoom("���C��", 500, 1500, 1500, Axl1, false);

//	Zoom("���٥�ȣ�", 500, 1000, 1000, Dxl1, false);
	Fade("���٥�ȣ�", 500, 600, null, false);

//	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1660a12">
��
������������������������������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������B����
		CreateSE("�ӣţ�","se���L_����_�z_���02");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M03");
		CreateSE("�ӣţ�","se����_냇��_�k��03");
		CreateSE("�ӣţ�","se����_냇��_�z�ǈ���02");

	OnSE("se���L_����_��ͻ�M08",1000);

	Fade("ɫ��", 500, 1000, null, false);
	Zoom("���٥�ȣ�", 500, 3000, 3000, Axl1, false);
	Rotate("���ե����ȣ�", 500, @0, @0, 36000, null, false);

	Move("������", 500, @-200, @-200, Axl1, false);

	Fade("���C��", 500, 0, null, false);
	Move("���C��", 500, 0, -200, Dxl1, false);
	Move("���C��", 500, 0, -200, Dxl1, false);
	Zoom("���C��", 500, 2000, 2000, Axl1, false);
	Zoom("���C��", 500, 1800, 1800, Axl1, true);

		Delete("���ե�����*");
		Delete("���٥�ȣ�");
		Delete("���C*");
		Delete("�ԙC*");

		CreateTextureSP("���٥�ȣ�", 100, -1000, -576, "cg/ev/resize/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��_l.jpg");
		Zoom("���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
		SetBlur("���٥�ȣ�", true, 1, 500, 50, false);

		CreateTextureEX("���٥�ȣ�", 200, 0, 0, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");
		SetVertex("���٥�ȣ�", 628, 138);
		Zoom("���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
		SetBlur("���٥�ȣ�", true, 2, 500, 100, false);

	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);

	Fade("ɫ��", 500, 0, null, false);
	BezierMove("���٥�ȣ�", 1000, (@0,@0){1000,700}{0,700}(-1200,100), Dxl2, 500);
	Fade("ɫ��", 500, 1000, null, true);

	SoundPlay("�ӣţ�",0,1000,false);

		Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 500, 0, null, false);
	Zoom("���٥�ȣ�", 1000, 1000, 1000, Dxl2, false);

	Wait(500);

	SoundPlay("�ӣţ�",0,1000,false);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
��
�����������������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
	OnSE("se���L_����_��ͻ�M04",1000);

	Zoom("���٥�ȣ�", 1000, 3000, 3000, Axl1, false);
	Fade("ɫ��", 1000, 1000, null, true);

	CreateMovie("��`�ө`��", 17100, 0, 0, false, false, "dx/mv������ޥ�.ngs");
	SetAlias("��`�ө`��", "��`�ө`��");
	Request("��`�ө`��", Stop);

	Fade("ɫ��", 500, 0, null, false);
	OnSE("se����_mv��_������ޥ�",1000);
	Request("��`�ө`��", Play);
	WaitAction("��`�ө`��", null);

	Fade("ɫ��", 0, 1000, null, true);

		Delete("��`�ө`��");
		Delete("���٥�ȣ�");
		Delete("���٥�ȣ�");
		Delete("����*");
		Delete("�}Suf*");

	OnSE("se���L_����_�z_���02",1000);
	OnSE("se���L_����_�z��������03",1000);
	OnSE("se���L_�Ɖ�_���k01",1000);
	OnSE("se���L_�Ɖ�_�z02",1000);
	OnSE("se���L_����_��ͻ�M03",1000);
	OnSE("se���L_����_�z_�����w��02",1000);

	Wait(3000);
	Fade("ɫ��", 1000, 0, null, true);
	Wait(3000);

//������`������
	CreateTextureEX("���٥�ȣ�", 17000, 0, 0, "cg/ev/ev270_������ޥ󥿩`�����_a.jpg");
	CreateTextureEX("���٥�ȣ�", 17000, 0, 0, "cg/ev/ev270_������ޥ󥿩`�����_b.jpg");


	Fade("���٥�ȣ�", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
�����˼����������ξ��
����������һ��һ���������һ��һ�����ŷ��ս���У�
��һλ���������ױȣ�����Զ�����¹�֮���Ļ�׹����


������������û�С��֮һ�֣������Զ��׼��أ���
�����������������Ȼ����������ţ���������ʿ�׼�
����
����������еļ̳��ߡ�

���Ǹ�ʱ��������˵���������Ļ�׹���Ǹ�������
������һ�ũ���������ڣ��������婖��������ڣ���
���Ǹ���������Ҳ�Ÿտ����������õ�ʱ����ͬ��
������������������൱�͵�ˮ׼��

�����İ��︣�ˣţ�������ˡ�
����������֧�ŵĵ��������˵�������˵���������
�������壬���վ��޷��ֲ�ͬ��������ܼ�Ĳ�ࡣ


����ʱ��Ϊս������ɫ�ʵĸ�����׹������ԨԴ��ͳ��
������ʿ��ͬʱҲ����ǿ���еļ̳����ǡ���������һ
��������ٵ�������֮�䣬�������������һ���ϣ���
�ض���������֮��

��Ȼ�����������䵽�ķ�������ս�ߣ��з����������
��ʿ�������ԣ���������ʿ�����ǴӶԶ�ս���е���
�����������ϼ�������û�У�״��ίʵ�Ͽᵽ�˼��㡣


��ս�Ѷ�������һ���¼������С�������
���з������ڶ�ѵ�����ص�ǿ����ʿ��
����������˵���ս���ˣ������Ǵ���������Ǹ��൱
������⡣

�������������ͷ��ʹ��������Ϊ��׹���ģ���������
��ʱ�ڣ���һ��żȻ����������˵ľ�����

���´�ʱ�������Ļ֮�󣬴�ʹ��������ڱչ�������
ǰ������Ϊ�����������Ļ�����Ȼѧ�ö�ƴ���գ�����
���±���������³ʿ�����¹�Ч�µĵط��ǳ��ࡣ


����Ϊ��³ʿ������ȥ����ŷ�������ǿ��ľ��ӡ�

�������������ǲ���½�����ȥ��³ʿ��̰����������
����֪ʶ��

��Ȼ��һ��Զ�����¹������ӡ���
{	Wait(1000);
	Fade("���٥�ȣ�", 500, 1000, null, true);}
��СҰ��һ����ʮ�����ڼң��Gľ���ء�

������żȻ�Ļ�����ʶ������ʱ�ڵ�����������������
��һ���������Ž�����Ȼ����������������֣�����
���嶼���ڸ������������Ǹ�˵�����������أ�������
�ȿ����أ���֮�ƺ��Ǹ��е���ֵ��ˡ�

��Ȼ���������֮�󣬱�������������Ļ�����Ϊ����
���У��Դˣ��������µĻ�Ӧ������Щ���ɡ�
������ֻѧϰ�������ڵ��ˣ������ǻ۵ĵ�����������
�¾�ѧϰ����Ϊ�����ұ������λ���ꡣ

�����һ����������������һ�����İ��أ���һ������
���Խ������ĹGľ���ˣ���δ���ϵ����ܹ�������һ��
����

����˵һ��������ؼ��Ĵ��ڴ�δ��ϣ���������ʮ��
��ɬ�Ѷ���������ʼ����������δ�������������ã�ʹ
����ݰ��岢�ǳ�Ϊ���ɣ�������Ϊ��֪ʶ��
��ͬ���洫�ı���Ҳֻ�ǳ�Ϊ��һ����ʽ���ѡ�

��Ȼ�����ڷ�������ս�ߵļ���״���¡���
�����з����͵���ʿ��׷�ϵ����˼����������������
һ�ߵĿ�������֮�У����ڣ�ʹ�ؽ�֮һ���Ը��ա�


�������������
����ֱ���к�ת����Ĺ�����
�����˶����Լ���ѹ�������Ƶĵ��ˣ����������Ľ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("���٥�ȣ�", 0, 0, null, true);

	Fade("���٥�ȣ�", 1000, 0, null, true);
	Fade("���٥�ȣ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0911]
��֮����������ʱ��ʹ��������ɣ��������ʿ�ӿ�
�л�׹��ʹ����˫������̾���ѡ�
�������������ļ���������һͬϯ��ŷ�ޣ���Ϊ���ħ
��ʹ�˿ֻţ���ս�������η��Ĵ��ڡ�

��ֱ��һ��һ����ս��ʱ��һ���й���׹ʮ���
��ȫ���������𷨹�����ʿ��

�����ڣ�����������Ȼ���ϱ����̣����˲�����
����ǿ���޵С�ħ�����񼼡����Ѿ�ͬ��������һ����
�ţ�����ս���ϳ��ֵĻ�Ӱһ�㣬�����ľ����Լ���ʷ
�鶼������س����������֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("���٥�ȣ�", 500, 0, null, true);

	CreatePlainSP("�}��д", 18010);
	CreateTextureSP("���٥�ȣ�", 1000, -915, -168, "cg/ev/resize/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��_l.jpg");
	Request("���٥�ȣ�", Smoothing);
	Zoom("���٥�ȣ�", 0, 900, 900, Dxl2, true);
	CreateTextureSPadd("���٥�ȣ�", 17000, 400, 0, "cg/ev/ev270_������ޥ󥿩`�����_a.jpg");
	Fade("���٥�ȣ�", 0, 500, null, true);
	FadeDelete("�}��д", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0912]
��<RUBY text="���ԣ����">��ת</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���F�g�͎�
//����˥��`���य��硣¶�Ǥ˥�Х���

	SetVolume("@mbgm*", 3000, 0, NULL);

	Fade("ɫ��", 3000, 1000, null, true);

		Delete("���٥��*");

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();
		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();
	
		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,0,AxlDxl,false);
	
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(0,150,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange(0,2800,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(0,20,Dxl1,false);
	
		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(0,250);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(0,180);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(100,200,null,false);
		//�������ԥåȣ��ԙC�������ȣУ�
		CP_IHPChange(0,2,null,false);
		
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		//CP_RollBarMove2(0,0,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();
	
		//����_ʼ
		//CloudZoomStart(700,1000,1000,500,1000);
		//����Ƅ�
		//CloudZoomVertex(0,@0,@-300,Axl1,false);

		CreateTextureSP("������", 100, -700, 0, "cg/bg/resize/bg001_��c_03l.jpg");
		Request("������", Smoothing);
		Zoom("������", 0, 2000, 2000, Dxl1, true);

		//���̶���������
		MoveFFP1("@������",5000);

		CreateTextureSPover("�Υ�����", 10000, 0, 0, "cg/data/noize_01_00_0.png");
		Zoom("�Υ�����", 0, 1200, 1200, Dxl2, true);

		CreateColorSPmul("��ɫ��", 17000, "#772222");

		CreateColorSPmul("���ե����ȣ�", 19000, "#AA2222");
		CreateColorSPmul("���ե����ȣ�", 19000, "#AA2222");
		Request("���ե����ȣ�", Erase);
		//���R�귵��
		CreateAFB1("@���ե����ȣ�","@���ե����ȣ�",500,700,700,2);

	SetVolume("������ɣ�", 4000, 1000, NULL);

	Shake("�Υ�����", 4000, 0, 50, 0, 0, 700, null, false);
	Fade("�Υ�����", 4000, 0, null, false);
	Fade("ɫ��", 2000, 0, null, true);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//�������á������Ƥ���!?
//�����T�������ֱ���ƣ����Ӥ��ʤ���!?��
//���ȅ��h���늲�״�r�ΐ����o���äݤ��ӹ�����
//��������
<voice name="����" class="��������" src="voice/ma04/016vs1670a01">
��������������������?!
�����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
��������������ңԶ��
����Ұ�谵������졣

���������˶��ص����ء�
���·���˼������֮�µ���ʶ������״���������

��������

�������ž��㲻��˼���ˡ�
������˵������������������

�����������������
��û�뵽������������Ĺ������������


��������û�м̳��ߡ�
�����Ľ�����һ���˵ļ������������˱�ʧ���ˡ�

��<RUBY text="����������������������������">��������ʧ��״̬������������</RUBY>��
�������ļ���������֮��˭Ҳ����ӵ�й����������飬
����˵���ź�������˵��������Ȼ��

��Ȼ����
��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwѩ܇�_��Ц.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1680a12">
���١��١��١���
���١���ѽ��ѽ��ѽ��ѽ��ѽ��ѽ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
��ѩ���һ�ء�
����Ȼ���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ˲�֥�å�������
	CreatePlainEX("������", 19998);
	SetShade("������", MEDIUM);
	Fade("������", 300, 1000, null, true);

	SetVolume("������ɣ�", 300, 1, NULL);
	Fade("ɫ��", 300, 1000, null, true);

		CreatePlainEX("������", 18000);

	SetVolume("������ɣ�", 1000, 1000, NULL);

	Fade("ɫ��", 300, 0, null, false);
	FadeDelete("������", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
��ѣ�Ρ�
���ң����ڷ�����

���ң������Ǹ�˲��֮���𡭡�
������˵����ʵ���Ѿ����䣬ֻ�����Լ�û����ʶ��
�����ء���

��������Σ����޷��жϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 1000, 1, NULL);

	//���R�귵����ֹͣ
	AFB1stop();
	Fade("���ե�����*", 500, 0, null, true);

	Fade("������", 1000, 1000, null, true);

		Shake("�Υ�����", 0, 0, 50, 0, 0, 700, null, false);
		Fade("�Υ�����", 0, 0, null, true);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		MoveFFP1stop();

		//�������ԥåȣ��ԙC������ֹͣ��
		FrameShakeDelete();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange(0,20,null,true);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange2(0,150,null,true);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange2(0,2800,null,true);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0961]
���������ˡ�
����֪��һ���¡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",2000,200,true);

	CreatePlainSP("�}��д", 19999);
		FadeDelete("������", 0, false);
		SetShade("������", MEDIUM);
		CreateTextureSP("���C��", 1000, -200, -488, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		SetShade("���C��", MEDIUM);
		Zoom("���C��", 0, 50, 50, Dxl2, true);
	FadeDelete("�}��д", 500, true);
	CreatePlainSP("�}��д", 19999);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0962]
�����ˡ�
�����ڹ�����

{		SetVolume("������ɣ�", 2000, 400, NULL);
		SetShade("���C��", NULL);
		Zoom("���C��", 0, 300, 300, Dxl2, true);
	FadeDelete("�}��д", 500, true);}
���Ǹ����ˣ���������߶�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//�������ã����رܤ��ƣ����ǡ��ӹ�����
//��������
<voice name="����" class="��������" src="voice/ma04/016vs1690a01">
����������
���ء����ܡ�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇�һ��
//�������`�󡣤ޤ������`����
		OnSE("se���L_����_��ͻ�M02",800);

		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();

	Move("���C��", 300, @200, @2000, Axl1, false);
	Zoom("���C��", 300, 2000, 2000, Dxl3, false);
	Wait(250);
	Fade("ɫ��", 50, 1000, null, true);

		CreateSE("�ӣţ�","se�ճ�_�Cе_�Υ���01");

		OnSE("se���L_����_Ź��06",1000);
		OnSE("se���L_����_⟱ڴ����w�Ф�",1000);
		OnSE("se���L_�Ɖ�_�z03",800);

		SetVolume("������ɣ�", 2000, 0, NULL);
		SetVolume("������ɣ�", 2000, 1000, NULL);

		MusicStart("�ӣţ�",2000,300,0,500,null,true);
	//	SoundPlay("�ӣţ�",2000,500,true);

	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(1000,60,Dxl1,false);
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(1000,200,Dxl1,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange(1000,2500,Dxl1,false);
	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(1000,360,Dxl1,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(1000,-60,Dxl1,false);

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,180);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(1000,180);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(1000,100,null,false);
	
	Shake("������", 500, 0, 50, 0, 0, 700, null, false);
	Move("������", 500, @100, @100, null, false);
	Fade("ɫ��", 100, 0, null, false);
	Wait(100);
	Fade("ɫ��", 300, 1000, null, true);

		//�������
		CloudZoomSet2("�ޥ�",1000,0,0,1024,576);
		//����_ʼ
		CloudZoomStart2B(700,1000,1000);
	
		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,0,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(1000,200,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange(600000,1500,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(0,-60,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,180,Dxl1,true);
	
		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();
	
		CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��c_03.jpg");
		Rotate("������", 0, @180, @0, 0, null, true);
		Zoom("������", 0, 2000, 2000, Dxl1, true);

		CreateTextureEX("������", 100, Center, Middle, "���إ���`����");
		SetTone("������", Monochrome);
		CreateSurfaceEX("�}Suf",200,2000,"������");
		CreateTextureEX("������", 100, Center, -800, "���إ���`����");
		SetTone("������", Monochrome);
		SetSurface("������","�}Suf");
		CreateTextureEX("������", 100, Center, -5200, "���إ���`����");
		SetTone("������", Monochrome);
		SetSurface("������","�}Suf");

		//���̶���������
		MoveFFP1("@������",5000);
	
		//���R�귵��
		CreateAFB1("@���ե����ȣ�","@���ե����ȣ�",500,700,700,2);
	
		Fade("�Υ�����", 0, 500, null, true);
	
		//����������
		MoveSSP1("@�Υ�����",100000,0,3,0,3,1000,null);

	Zoom("������", 1000, 2000, 2000, Dxl2, false);
	Fade("ɫ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
���������ҡ�Ρ�
�������޷����Ҹе��Ƿ������Լ����ϵ��¡�

������Ϊû��ʹ����
������ĳ����Ӧ�ñ�������п��ˣ����񾭲�δ����
�źš�

���Ѿ����������
��Ӧ�������źŵĴ��������𡭡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����˥��`���\��

	//���å��O��
	LockVideo(true);
		CreateEffect("���ե����ȣ�", 19999, 0, 0, 1024, 576, "Monochrome");
		SetAlias("���ե����ȣ�", "���ե����ȣ�");
		Fade("���ե����ȣ�", 0, 0, null, true);
	//���å��O��
	LockVideo(false);

	CreateSE("�ӣţ�","se�M��_냇��_���؏�");
	MusicStart("�ӣţ�",0,500,0,500,null,false);

	SetVolume("�ӣţ�", 3000, 0, NULL);

	OnSE("se����_�Υ���01",700);
	Fade("���ե����ȣ�", 300, 1000, null, true);
	Fade("���ե����ȣ�", 300, 0, null, true);

	CreatePlainSP("�}��д", 19998);
	Draw();
	Fade("���ե����ȣ�", 2000, 1000, null, true);

		//���R�귵����ֹͣ
		AFB1stop();
	
		//������������ֹͣ
		MoveSSP1stop();

		Fade("�Υ�����", 0, 0, null, false);
		Fade("��ɫ��", 0, 0, null, false);
		Fade("���ե����ȣ�", 0, 0, null, false);
		Fade("���ե����ȣ�", 0, 0, null, true);
	
		Delete("��ɫ��");
		Delete("�Υ�����");
		Delete("���ե����ȣ�");
		Delete("���ե����ȣ�");

		SetTone("@������", Monochrome);
		SetTone("@CP*", Monochrome);

		CreateTextureEXadd("���ե����ȣ�", 15000, 0, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 1100, 1100, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, -40, null, true);
		CreateTextureEXadd("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef042_���ô��.jpg");
		Zoom("���ե����ȣ�", 0, 1100, 1100, Dxl2, true);
	
		SetTone("@���ե����ȣ�", Monochrome);
		SetTone("@���ե����ȣ�", Monochrome);
		
		CreateTextureSP("���C��", 200, -300, 1000, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Rotate("���C��", 0, @0, @0, 90, null, true);
		Zoom("���C��", 0, 0, 0, Axl2, true);
		SetTone("���C��", Monochrome);

		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(500,20,null,false);

//	OnSE("se����_냇��_�k��03",1000);

	FadeDelete("���ե����ȣ�", 500, false);
	FadeDelete("�}��д", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
��������ɫ��֢��
���������սʿ��������������

������������������ζ���������ѷ������������ľ���
�߱ƽ���
�����ڣ����ҵ������У�����������ѪҺһ�𣬼�����
ʧ�����˰ɡ�

����ҰһƬ���ʣ�������ȴ����������
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 4000, 700, NULL);

	Zoom("���C��", 4000, 100, 100, Dxl1, false);
	Move("���C��", 4000, @0, @-1300, Dxl1, false);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1700a12">
�����ۼ����Ҷ���˵����������
������Ǹ���Ȥ�İ���ӷ����
{
	WaitAction("���C��", null);
	SoundPlay("@mbgm31",0,1000,true);
	//�����S��������S����
	MoveFTP1("@���C��",10000,3,5);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1710a12">
��Ϊʲô����
���㲻��<RUBY text="������">����Ը</RUBY>�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1040]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1720a12">
�����Ǹ�����ɱ��С����ʱ��Ҳ�ǡ���
��ǰ���죬��������ɧ����ɱ�˵�ʱ��
Ҳ������������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1730a12">
���㰡��һ��������˵�ţ���Ҫ����Ҫ��
һ��ɱ�����ˡ�����

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1740a12">
���ǰ�?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ѩ܇����u
//���ɤ��`��


	Rotate("���C��", 500, @0, @0, @-90, null, false);
	Move("���C��", 500, @200, @0, Axl1, false);
	Zoom("���C��", 500, 2000, 2000, Axl2, false);
	Wait(400);
	Fade("���ե����ȣ�", 100, 1000, null, false);
	Fade("ɫ��", 100, 1000, null, true);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		//�����ȥ
		CloudZoomFade2(0,true);
		//����Ƅ�
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		Fade("���ե����ȣ�", 0, 0, null, false);

		Delete("���C��");
		Fade("������", 0, 0, null, false);
		Fade("������", 0, 1000, null, false);
		Fade("�}Suf", 0, 1000, null, false);
		Rotate("�}Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("�}Suf", 0, 4000, 4000, Dxl2, true);

		//���̶���������
		MoveFFP1("@�}Suf",10000);

		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,170);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(1000,160);

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,-40,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(2000,220,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		//CP_HighChange(600000,1500,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(2000,-70,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(2000,150,Dxl1,false);

	Zoom("�}Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("�}Suf", 2000, @0, @0, 40, Dxl1, false);
	Shake("������", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("ɫ��", 2000, 0, null, true);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1750a00">
���¡���������

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1760a12">
����ʵ��Ĳ������������顭��
�����ѿ�������������ô����ˡ���

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1770a12">
����������
���������Ļ������Ϳ����˰ɡ�����

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1780a12">
������<RUBY text="������������">ʹ������үү</RUBY>ɱ���Ļ���Ҳ����
��ȥɱ<RUBY text="������������">��ʵ����үү</RUBY>�˰ɣ�
���㰡��ֻҪʲô�������ͺ��˰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1790a00">
���㡭�����˽⡭����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1800a12">
����������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1810a00">
��ʲô����֪������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1820a00">
���ҡ������ò�����
���Ⲣ���ǡ����������Ͳ���������
����������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1830a00">
���ҡ�����ȥ���Ļ�������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1840a12">
�������١���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��
//��������������

	CreateTextureSP("���C��", 200, -1300, -500, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Lb.png");
	Rotate("���C��", 0, @0, @0, 40, null, true);
	SetTone("���C��", Monochrome);

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,165);

	Rotate("���ե����ȣ�", 0, @0, @180, @0, null, false);
	Fade("���ե����ȣ�", 0, 500, null, true);

	Fade("���ե����ȣ�", 1000, 0, null, false);
	Shake("���ե����ȣ�", 1000, 0, 50, 0, 0, 700, Dxl1, false);

	Fade("ɫ��", 0, 500, null, false);
	Shake("������", 2000, 0, 50, 0, 0, 700, Dxl1, 1500);
	Fade("ɫ��", 500, 0, null, false);


	Zoom("���C��", 500, 1500, 1500, null, false);
	Move("���C��", 500, @2500, @500, null, true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1080]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1850a12">
���������������ء�
�����������<RUBY text="������">�Ǽ���</RUBY>�Ļ���
�������ͻ�����𣿡�

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1860a12">
���ⲻ�Ǻܺ���
��ֻ���������ȣ��������ֲ�����ô
��������������Ļ�����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1870a12">
����֮���˰ɡ�
������Ц�ݣ���ô���ɡ���

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1880a00">
�������⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1090]
���������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1890a12">
�������ı߶��á�
�����ȣ��������������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1900a12">
�������ı߶���Ŷ����
�������֮����ȥ�����ðɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
��������⡣

���Ҳ����Ļ��������С�
�����Ǻ�Ҳ�á���������Ҳ�ա��������ô���������
ȥ��ֹ��������������

�����ԡ���ɱ¾��
���һᣬɱ¾��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120]
//��������
<voice name="����" class="����" src="voice/ma04/016vs1910a00">
���ҡ������ġ���

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1920a12">
����û�С�
����������Ļ���Ϊʲô����޺�����

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs1930a00">
��������û�пޡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1130]
��û���������¡�
�����������еġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1140]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1940a12">
������˰������ѿ�����
���������٣���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
���·������ͷ����������ĭһ�����������Ϊ�ź�
�������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1160]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1950a12">
�����ǣ����ǿ���������������������ġ�
���⵹Ҳ�ǡ���Ϊ������ʲô���ļһ����
<RUBY text="��������">�Լ�����</RUBY>��<RUBY text="������������">��Ķ����˽�</RUBY>������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1960a12">
�����˵�����ȫ�����ס�
���������Լ��������¡�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1970a12">
����������ģ�
�����������¡�
����Ҷ���������<RUBY text="������">�����</RUBY>���š���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1980a12">
�������������������Ȥ����
������������������������ѵ���̬������Ҳ
����������氡����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs1990a12">
�����Ҳ�ã�����Ҳ�ա���
��Ҷ���������²�δ���Ű���ӵ���̬��
�ܺá�
�����Ҳ���Ǹ�Ҳ�ã����ǿ��ֵļһﰡ������

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2000a12">
��ֻ���㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����u
//�����ɩ`��

	Rotate("���ե����ȣ�", 0, @0, @0, -45, null, true);

	CreateTextureSP("���C��", 200, 0, -1000, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
	Rotate("���C��", 0, @0, @0, 150, null, true);
	SetTone("���C��", Monochrome);

	Move("���C��", 300, @-500, @1200, null, false);
	Wait(200);
	Rotate("���ե����ȣ�", 100, @0, @0, -90, null, false);
	Fade("���ե����ȣ�", 100, 1000, null, false);
	Fade("ɫ��", 100, 1000, null, true);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		//�����ȥ
		//CloudZoomFade2(0,true);
		//����Ƅ�
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@1000,@0,Dxl2,true);

		CreateTextureSP("���C��", 200, 500, 500, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		Rotate("���C��", 0, @0, @0, @-30, null, true);
		SetTone("���C��", Monochrome);
		CreateTextureSP("���C��", 200, -500, -500, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Zoom("���C��", 0, 0, 0, Dxl1, false);
		Rotate("���C��", 0, @0, @0, @-70, null, false);
		SetTone("���C��", Monochrome);

		Fade("���ե����ȣ�", 0, 0, null, false);

		Fade("������", 0, 0, null, false);
		Fade("������", 0, 1000, null, false);
		Fade("�}Suf", 0, 1000, null, false);
		Rotate("�}Suf", 0, @0, @0, 180, Dxl1, false);
		Zoom("�}Suf", 0, 4000, 4000, Dxl2, true);

		//���̶���������
		MoveFFP1("@�}Suf",10000);

		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,155);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(1000,140);

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,40,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(2000,220,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		//CP_HighChange(600000,1500,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(2000,-70,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(2000,-150,Dxl1,false);

	Zoom("�}Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("�}Suf", 2000, @0, @0, -40, Dxl1, false);
	Shake("������", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("ɫ��", 2000, 0, null, 1000);

	Zoom("���C��", 2000, 0, 0, Dxl1, false);
	BezierMove("���C��", 2000, (@0,@0){@200,@-400}{@-200,@-600}(@-700,@-700), Dxl1, false);

	//�����S��������S����
	//MoveFTP1("@���C��",20000,3,5);

	SetFwC("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1170]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2010a12">
����һЩ���Լ������������飬
<RUBY text="��������">�����ɵ�</RUBY>�ļһ�ֻ����һ����
�����ź�Ϳ�����淽ʽ������
{
	WaitAction("���C��", null);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();
	Move("���C��", 20000, @100, @100, Axl1, false);
	Zoom("���C��", 20000, 100, 100, Dxl1, false);
}<BR>


{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2020a12">
��̫ɨ������
����Ȼ������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//�������`��

	Rotate("���C��", 600, @0, @0, @-180, null, false);
	Zoom("���C��", 600, 2000, 2000, Axl1, false);
	Wait(400);
	Rotate("���ե����ȣ�", 200, @0, @0, -160, Dxl1, false);
	Fade("���ե����ȣ�", 200, 1000, null, false);
	Fade("ɫ��", 200, 1000, null, true);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		//�����ȥ
		//CloudZoomFade2(0,true);
		//����Ƅ�
		CloudZoomStart2B(700,1000,1000);
		CloudZoomVertex2(0,@-400,@0,Dxl2,true);

		CreateTextureSP("���C��", 200, 500, 500, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		Rotate("���C��", 0, @0, @0, @-30, null, true);
		SetTone("���C��", Monochrome);
		CreateTextureSP("���C��", 200, -1000, 1000, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");
		Rotate("���C��", 0, @0, @0, @-30, null, false);
		SetTone("���C��", Monochrome);

//		CreateTextureEX("������", 100, 0, 0, "cg/bg/bg001_��a_03.jpg");
//		Zoom("������", 0, 2000, 2000, Dxl2, true);

		Fade("���ե����ȣ�", 0, 0, null, false);

		Fade("����*", 0, 0, null, false);
		Fade("������", 0, 1000, null, false);
		Fade("�}Suf", 0, 1000, null, false);
		Rotate("�}Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("�}Suf", 0, 4000, 4000, Dxl2, true);

		//���̶���������
		MoveFFP1("@�}Suf",10000);

		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,140);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(1000,130);

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,-40,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(2000,250,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		//CP_HighChange(600000,1500,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(2000,-30,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(2000,-210,Dxl1,false);

	Zoom("�}Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("�}Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("������", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("ɫ��", 2000, 0, null, true);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();

	SetFwC("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1180]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2030a12">
�����ԣ���������һ����������
Ҳ�Ͱ��ˡ�
������������ɡ���

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2040a12">
������Ȼ����ȴɱ�ˡ�����

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2050a12">
������Ը��ɱ�ˡ���

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2060a12">
����������С����
�����ǶԽ��ã�����Ը��ɱ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���B��
//�����󤬤󤬩`��

	Move("���C��", 500, @2000, @-2000, null, false);
	Wait(400);
	Rotate("���ե����ȣ�", 200, @0, @0, -290, Dxl1, false);
	Fade("���ե����ȣ�", 200, 1000, null, false);
	Fade("ɫ��", 100, 1000, null, true);

		Fade("���ե����ȣ�", 0, 0, null, false);
		Fade("ɫ��", 400, 0, null, false);

		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,145);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(1000,135);

		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(1000,20,Dxl1,false);
	
		Move("������", 1000, @0, 0, Dxl1, false);
		Shake("������", 1000, 0, 50, 0, 0, 700, Dxl1, false);
		Rotate("�}Suf", 1000, @0, @0, 150, Dxl1, true);

//	WaitKey();

	Rotate("���ե����ȣ�", 0, @0, @0, -45, Dxl1, false);
	Fade("���ե����ȣ�", 200, 1000, null, false);
	Fade("ɫ��", 200, 1000, null, true);

		Fade("���ե����ȣ�", 0, 0, null, false);
		Fade("ɫ��", 400, 0, null, false);

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,135);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(1000,125);

		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(1000,-120,Dxl1,false);
	
		Rotate("���C��", 1950, @0, @0, 360, Dxl1, false);
		Zoom("���C��", 950, 20, 20, null, false);
//		Move("���C��", 950, @-1000, @-600, Dxl3, false);
		BezierMove("���C��", 1950, (@0,@0){@-666,@-400}{@-666,@-400}(@-1000,@-600){@-666,@-700}{@-333,@-800}(@0,@-900), DxlAxl, false);

		Move("������", 1000, @0, -5200, Dxl1, false);
		Shake("������", 1000, 0, 50, 0, 0, 700, Dxl1, false);
		Rotate("�}Suf", 1000, @0, @0, 120, Dxl1, false);

		Wait(1000);
		Zoom("���C��", 1000, 0, 0, AxlAuto, false);
		Wait(1000);

		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		//CP_RollBarMoveA();

	WaitAction("���C��", null);

//	WaitKey();

	Rotate("���ե����ȣ�", 0, @0, @0, 0, Dxl1, false);
	Rotate("���C��", 0, @0, @0, 180, null, true);
	Move("���C��", 0, 1000, -1000, null, true);

	Move("���C��", 500, @-1500, @800, null, false);
	Wait(300);
	Fade("���ե����ȣ�", 200, 1000, null, false);
	Fade("ɫ��", 200, 1000, null, true);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		//�����ȥ
		CloudZoomFade2(0,true);
		//����Ƅ�
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@-100,@0,Dxl2,true);

		CreateTextureSP("���C��", 200, -300, -1000, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���Lb.png");
		Rotate("���C��", 0, @0, @0, 50, null, true);
		Zoom("���C��", 0, 50, 50, Dxl2, true);
		SetTone("���C��", Monochrome);
		Delete("���C��");

		Fade("���ե����ȣ�", 0, 0, null, false);

		Fade("����*", 0, 0, null, false);
		Fade("������", 0, 1000, null, false);
		Fade("�}Suf", 0, 1000, null, false);
		Rotate("�}Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("�}Suf", 0, 4000, 4000, Dxl2, true);

		//���̶���������
		MoveFFP1("@�}Suf",10000);

		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,125);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(1000,125);

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,-40,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(2000,250,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		//CP_HighChange(600000,1500,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(2000,-30,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(2000,-30,Dxl1,false);

	Move("������", 2000, @0, @-1000, Dxl1, false);

	Zoom("�}Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("�}Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("������", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("ɫ��", 2000, 0, null, true);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();


	SetFwC("cg/fw/fw����_��ʹ.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1190]
//��������
<voice name="����" class="����" src="voice/ma04/016vs2070a00">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("���C��", 2000, @0, @500, Dxl1, false);

	SetFwC("cg/fw/fwѩ܇�_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1191]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2080a12">
������Ц�ˡ�������������������!!��
{
	WaitAction("���C��", null);
	//�����S��������S����
	MoveFTP1("@���C��",10000,3,5);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􏊴�
//�����ɤ��`��
	Rotate("���ե����ȣ�", 0, @0, @0, 0, Dxl1, false);

	Rotate("���C��", 1000, @0, @0, -50, null, false);
	Zoom("���C��", 1000, 2000, 2000, Axl2, false);
	BezierMove("���C��", 1000, (@0,@0){@-100,@400}{@200,@400}(@400,@-800), Axl1, false);
	Wait(800);
	Rotate("���ե����ȣ�", 200, @0, @0, -50, Dxl1, false);
	Fade("���ե����ȣ�", 200, 1000, null, false);
	Fade("ɫ��", 200, 1000, null, true);

		//���̶��������ֹࣺͣ
		MoveFFP1stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		//�����ȥ
		CloudZoomFade2(0,true);
		//����Ƅ�
		CloudZoomStart2B(700,1000,1000);
		//CloudZoomVertex2(0,@-100,@0,Dxl2,true);

		CreateTextureSP("���C��", 200, -1000, -1000, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		Rotate("���C��", 0, @0, @0, @-30, null, true);
		SetTone("���C��", Monochrome);
		CreateTextureSP("���C��", 200, -200, -700, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		Rotate("���C��", 0, @0, @0, @-30, null, false);
		Zoom("���C��", 0, 0, 0, Dxl2, true);
		SetTone("���C��", Monochrome);

		CreateTextureEX("������", 200, 0, 0, "cg/bg/bg001_��a_03.jpg");
		Zoom("������", 0, 2000, 2000, Dxl2, true);
		SetSurface("������","�}Suf");
		SetTone("������", Monochrome);

		Fade("���ե����ȣ�", 0, 0, null, false);

		Fade("����*", 0, 0, null, false);
		Fade("������", 0, 1000, null, false);
		Fade("�}Suf", 0, 1000, null, false);
		Rotate("�}Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("�}Suf", 0, 4000, 4000, Dxl2, true);

		//���̶���������
		MoveFFP1("@�}Suf",10000);

		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(1000,95);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(1000,105);

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,40,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(2000,270,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		//CP_HighChange(600000,1500,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(2000,-60,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(2000,360,Dxl1,false);

//	Move("������", 2000, @0, @-1000, Dxl1, false);

	Zoom("�}Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("�}Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("������", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("ɫ��", 2000, 0, null, false);

	Wait(1000);

	Rotate("���C��", 1000, @0, @0, -360, Dxl1, false);
	Zoom("���C��", 1000, 0, 0, null, false);
	Move("���C��", 1000, @700, @600, Dxl3, false);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	//CP_RollBarMoveA();

	SetFwC("cg/fw/fwѩ܇�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1200]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2090a12">
��<RUBY text="������">�㵹��</RUBY>����һ�£���Щ��Ϊ
�����ǿ�������Լ����޷��Ͽɵ����ɶ���ɥ��
�㵶�µ��˰�!!
����������
{
	WaitAction("���C��", null);
	Rotate("���C��", 1000, @0, @0, -60, Dxl1, false);
	Zoom("���C��", 1000, 50, 50, Dxl2, false);
	Fade("���C��", 1000, 1000, null, false);
	Move("���C��", 2000, @300, @200, Dxl1, false);
	WaitAction("���C��", null);
	//�����S��������S����
	MoveFTP1("@���C��",10000,3,5);
}<BR>


{	FwC("cg/fw/fwѩ܇�_ŭ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2100a12">
��ʵ���ǻ������˼��㰡!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􏊴�
//���Ф��㤬�`��
//��һ�ȥ֥�å�������

	//���̶��������ֹࣺͣ
	MoveFFP1stop();

	Rotate("���ե����ȣ�", 0, @0, @0, -40, Axl1, true);

	Rotate("���C��", 1000, @0, @0, 45, Axl1, false);
	Zoom("���C��", 1000, 2000, 2000, Axl2, false);
	BezierMove("���C��", 1000, (@0,@0){@-300,@-350}{@-400,@-350}(@-300,@300), Axl1, false);
	Wait(800);
	Rotate("���ե����ȣ�", 200, @0, @0, -20, Dxl1, false);
	Fade("���ե����ȣ�", 200, 1000, null, false);
	Fade("ɫ��", 200, 1000, null, true);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		//�����ȥ
		//CloudZoomFade2(0,true);
		//����Ƅ�
		//CloudZoomStart2(700,1000,1000);
		//CloudZoomVertex2(0,@500,@0,Dxl2,true);

		//CreateTextureSP("���C��", 200, -1000, -1000, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		//Rotate("���C��", 0, @0, @0, @-30, null, true);
		//CreateTextureSP("���C��", 200, -100, -200, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		//Rotate("���C��", 0, @0, @0, @-30, null, false);
		//Zoom("���C��", 0, 0, 0, Dxl2, true);

		//CreateTextureEX("������", 200, 0, 0, "cg/bg/bg001_��a_03.jpg");
		//Zoom("������", 0, 2000, 2000, Dxl2, true);
		//SetSurface("������","�}Suf");
		//SetTone("������", Monochrome);

		Delete("���C*");

		Fade("���ե����ȣ�", 0, 0, null, false);
		Move("������", 0, -100, -100, null, false);

		Fade("����*", 0, 0, null, false);
		Fade("������", 0, 1000, null, false);
		Fade("�}Suf", 0, 1000, null, false);
		Rotate("�}Suf", 0, @0, @0, 0, Dxl1, false);
		Zoom("�}Suf", 0, 4000, 4000, Dxl2, true);

		//���̶���������
		//MoveFFP1("@�}Suf",10000);

		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(2000,65);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(2000,65);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(2000,10,null,false);
		//�������ԥåȣ��ԙC�������ȣУ�
		CP_IHPChange(2000,1,null,false);

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(5000,0,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(5000,300,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		//CP_HighChange(600000,1500,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(5000,-80,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(5000,-1800,Dxl1,false);

	Move("������", 5000, @-4000, @0, null, false);

	Zoom("�}Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("�}Suf", 5000, @0, @0, 1800, null, false);
	Shake("������", 5000, 0, 50, 0, 0, 700, null, false);
	Fade("ɫ��", 500, 0, null, false);
	Wait(3000);
	Fade("ɫ��", 500, 1000, null, true);

	SetVolume("������ɣ�", 3000, 1, NULL);
	Wait(2000);

//�Ȥ���
//������

		Delete("����*");
		Delete("�}Suf");
		Delete("���إ���`����");

		CreateTextureSP("������", 100, Center, 0, "cg/bg/resize/bg001_��c_03l.jpg");
		SetTone("������", Monochrome);
		CreateTextureSP("���C��", 100, -199, -355, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L.png");
		SetTone("���C��", Monochrome);
		Zoom("���C��", 0, 0, 0, Dxl2, true);

		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,0,AxlDxl,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(0,350,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange(0,1500,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(0,-80,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,-180,Dxl1,true);

		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange(600000,1000,Dxl1,false);

		//���̶���������
		MoveFFP1("@������",10000);
		//�����S��������S����
		MoveFTP1("@���C��",10000,3,3);

		CreateTextureEXover("�Υ�����", 10000, 0, 0, "cg/data/noize_01_00_0.png");
		Zoom("�Υ�����", 0, 1200, 1200, Dxl2, true);

		CreateColorEXmul("ɫ��", 19998, "#500000");
		CreateColorEXmul("��ɫ��", 17000, "#772222");

		CreateColorEXmul("���ե����ȣ�", 19000, "#AA2222");
		CreateColorEXmul("���ե����ȣ�", 19000, "#AA2222");
		Request("���ե����ȣ�", Erase);
		CreateTextureSPsub("���ե����ȣ�", 18000, 0, 0, "cg/data/noize_01_00_0.png");
		CreateTextureSPsub("���ե����ȣ�", 18000, 0, 0, "cg/data/noize_01_00_0.png");
		Rotate("���ե����ȣ�", 0, @180, @180, @0, null, true);

		//���R�귵��
		CreateAFB1("@���ե����ȣ�","@���ե����ȣ�",64,200,300,2);
		SetTone("@���ե����ȣ�", Monochrome);
		SetTone("@���ե����ȣ�", Monochrome);


	Fade("ɫ��", 2000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1210]
������ңԶ��
�������������綼��ʼԶȥ�ˡ�

�����е�������Ȼ�޷����
��Ȼ����Ϊ�εз��Ļ������Ȼ�������ء�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("���C��", 0, 10, 10, AxlAuto, false);
	Zoom("���C��", 600000, 500, 500, DxlAuto, false);

	SetFwR("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1220]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2110a12">
����������ʲô������
��Ӣ���𣿡�����𣿡������𣿡�

{	FwR("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2120a12">
������Ӣ�۰ɡ���
��Ӣ�۵Ļ���ɱ�˵�ʱ���ǹ�������İ�����
��Ҫ��Ҫ������ʱ���ɴ�أ�����أ�
���ŶԷ����۾�����նɱ�ɡ���

{	FwR("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2130a12">
������ȫ���������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1230]
�����������ǵġ�
���������ġ�

���Ҳ�����ʲôӢ�ۡ�
�����ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1240]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2140a12">
����ô������𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1250]
���������

���ԡ�
�����ǣ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1260]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2150a12">
�����ǰɡ�����
�����Ļ��Ų��᲻��Ը��ɱ���ء�
Ҫ���˵أ�����Ц��ɱ�ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1270]
�������������ǵġ�
�����ǣ������ġ�

���������飬û�й�ϵ��

��<RUBY text="��������">��Ϊ���</RUBY>�������������ġ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1280]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2160a12">
����ô����ʲô�ء���
�������𡭡�����

{	FwR("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2170a12">
���ǰ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1290]
�����ˡ���
����ͨ�ģ������ģ��ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1300]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2180a12">
�����Ǹ��������ˡ�
���Ӹ�ĸ���������ͳ�Ľ����������õ�
����Լ���Լ�����

{	FwR("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2190a12">
�����ԣ������ô����ɱ�˰ɡ�
�������𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1310]
����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1320]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2200a12">
���Ȳ���Ӣ��Ҳ���Ƕ�����������
���Ƕ��������ࡣ
��������ͨ���������о��еĻ�ɫ������

{	FwR("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2210a12">
��������˵������Ҳ����õİɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1330]
����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1340]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2220a12">
�������Ļ��ͺ��ˡ�
������û��Ҫ��ǿ�Լ�������

{	FwR("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2230a12">
�������������������Һ��ڵ�
���ӡ���
�������������ʲô���ã���

{	FwR("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2240a12">
���ѵ��㱻��������������Ϊ��������
�˰�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣹Ą�
	SetVolume("@mbgm*", 1000, 0, NULL);

	Wait(3000);

	OnSE("se����_��_��Ġ����02",1000);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1350]
��
�������������������������ǵ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҕ�礬�٤�����
	CreatePlainSP("�}��д��", 19997);
		//�������ԥåȣ��ԙC��󣺳�����
		//MyTr_Count(0,65);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(0,50,null,false);
		//�������ԥåȣ��ԙC�������ȣУ�
		CP_IHPChange(0,1,null,false);

		$FadeAFB1=100;
	Fade("�}��д��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1360]
���Ҹе�ѪҺ������ѭ����
���谵���ӽ�ֻ���Ծ����ã���ָ�������

���������������ġ�
�����������İ���ѩ���һ�ء�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣹Ą�
	CreatePlainSP("�}��д��", 19997);
		//���R�귵����ֹͣ
		//AFB1stop();

		//�������ԥåȣ��ԙC��󣺳�����
		//MyTr_Count(0,65);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(0,100,null,false);
		//�������ԥåȣ��ԙC�������ȣУ�
		CP_IHPChange(0,2,null,false);

		SetTone("@*", null);
		Fade("���ե�����*", 0, 0, null, false);
		Fade("��ɫ��", 0, 1000, null, false);

		//���R�귵��
		CreateAFB2("@���ե����ȣ�","@���ե����ȣ�",500,700,700,2);
		//Fade("�Υ�����", 0, 500, null, true);
		//����������
		//MoveSSP1("@�Υ�����",100000,0,3,0,3,1000,null);

	OnSE("se����_��_��Ġ����02",1000);

	FadeDelete("�}��д��", 500, true);

		CreateSE("�ӣţ�","se����_��_��Ġ����01_L");
		MusicStart("�ӣţ�",0,600,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1370]
�������ָ���
����ʲô������������ƣ�������࣬��������
���ͻ�����

��ʲô��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1380]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2250a12">
������һ����ͨ�ˡ���
��ƾʲô���ֻ���ɱ¾�����硣��

{	FwR("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2260a12">
�����������ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣹Ą�
	OnSE("se����_��_��Ġ����02",1000);
	SetVolume("�ӣţ�", 2000, 1000, NULL);

	CreatePlainSP("�}��д��", 19997);
	SetBlur("�}��д��", true, 1, 500, 100, false);

		//�������ԥåȣ��ԙC��󣺳�����
		//MyTr_Count(0,65);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(0,200,null,false);
		//�������ԥåȣ��ԙC�������ȣУ�
		CP_IHPChange(0,3,null,false);

		//���R�귵����ֹͣ
		AFB1stop();
		FadeDelete("���ե����ȣ�", 0, false);
		FadeDelete("���ե����ȣ�", 0, false);
		//$FadeAFB1=100;
		//Fade("�Υ�����", 0, 100, null, true);
	Zoom("�}��д��", 500, 2000, 2000, Axl2, false);
	FadeDelete("�}��д��", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1390]
��
�������������������������ǵġ�

����ͨ�ˡ�
�������ˡ�
�������ˡ�

���ң�
��������<RUBY text="����">����</RUBY>�ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1400]
//��������
<voice name="����" class="����" src="voice/ma04/016vs2270a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1410]
�����ֵ���Ĭ��
����˵����������Ҳ̫�����һ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1420]
//��������
<voice name="����" class="����" src="voice/ma04/016vs2280a00">
���׳ա���������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1430]
��ѩ���һ�ء�
��������˾����������Ͽ�����ʲô��

���й������ĸ�ĸ��
���ܹ������Ľ�����
��
����������Ϊֹ������ȷ�ġ�

�����ǽ���̫���֡�
����ֻ�ǵ����ļ��㡣

������ȷ�Ļ����У����������������ˡ���
����������������ַ���Ļ�����ô��������Ƕ�ô
��������ô�������氡��

���˲��õ����롣

���в���ĸ�ĸ����
�������õĽ�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("�ӣţ�","se����_��_��Ġ����02");
	CreateSE("�ӣţ�","se����_��_��Ġ����02");

	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);

	SetVolume("�ӣţ�", 0, 0, NULL);

	Fade("ɫ��", 0, 500, null, false);
	CreatePlainSP("�}��д��", 19998);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1431]
�������<RUBY text="��������������������������">�������ɱ�������ĸ�ĸ�Ļ�</RUBY>��
����Ҳ��˵�ܵ������õ��������ֻ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1440]
//��������
<voice name="����" class="����" src="voice/ma04/016vs2290a00">
������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("�ӣţ�","se���L_����_��ͻ�M08");
	MusicStart("�ӣţ�",0,1000,0,1500,null,false);

	OnSE("se����_��x_�k��03",1000);
	OnSE("se����_��x_�k��04",1000);

	SetVolume("������ɣ�", 2000, 1000, NULL);

	SoundPlay("@mbgm11",0,1000,true);

	CreatePlainEX("�}��д��", 19998);
		//���R�귵����ֹͣ
		AFB2stop();
		MoveSSP1stop();
		Delete("�Υ���*");
		Delete("���ե�����*");
		Delete("��*");

		//�������ԥåȣ��ԙC��󣺳�����
		//MyTr_Count(0,65);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(0,300,null,false);
		//�������ԥåȣ��ԙC�������ȣУ�
		CP_IHPChange(0,3,null,false);


		OnSE("se���L_����_������01",1000);


	Fade("ɫ��", 500, 0, null, false);

	Fade("�}��д��", 0, 500, null, true);
	Zoom("�}��д��", 500, 1300, 1300, Axl1, false);
	Fade("ɫ��", 500, 1000, null, true);
	Delete("�}��д*");
	Zoom("���C��", 0, 500, 500, Axl2, true);

	Fade("ɫ��", 2000, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1450]
�������޴���
�������޴���

�������޴�����ѩ���һ��!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇��ϕN
		Delete("ɫ��");
		Delete("ɫ��");
		Delete("ɫ��");

		CreateTextureEX("���C��", 1000, -199, -255, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
		Zoom("���C��", 0, 500, 500, Dxl2, true);
		Rotate("���C��", 0, @0, @0, 50, Axl1, true);

	//�����S��������S���ȣ�ֹͣ
	MoveFTP1stop();

	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M03",1000);
	OnSE("se���L_����_��ͻ�M07",1000);

	BezierMove("���C��", 1300, (@0,@0){@-100,@-100}{@-100,@-100}(@0,@0), AxlDxl, false);
	BezierMove("���C��", 1300, (@0,@0){@-100,@-100}{@-100,@-100}(@0,@0), AxlDxl, false);

	Rotate("���C��", 1000, @0, @0, 360, AxlDxl, false);
	Rotate("���C��", 1000, @0, @0, 360, AxlDxl, false);
//	Move("���C��", 1300, @200, @200, AxlDxl, false);
//	Move("���C��", 1300, @200, @200, AxlDxl, false);
	Zoom("���C��", 1300, 550, 550, AxlDxl, false);
	Zoom("���C��", 1300, 550, 550, AxlDxl, false);
	Wait(500);
	Fade("���C��", 500, 0, null, false);
	Fade("���C��", 500, 1000, null, false);

	Rotate("���C��", 1300, @0, @0, @360, Axl1, false);
	BezierMove("���C��", 1300, (@0,@0){@200,@200}{@200,@200}(@100,@100), AxlDxl, false);
	Zoom("���C��", 1300, 10, 10, Dxl3, false);
	Wait(800);
	Fade("���C��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1460]
���ӽ��У�Ʈ���ű�����������Ӱ��
��������ա�

������������������������е���˼��
������ħ����������ת��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreatePlainSP("�}��д", 19998);

	//�拾���ԥå���ȥ
		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//�����ȥ
		CloudZoomFade2(0,true);
		//����_ʼ
		CloudZoomStart2(700,1000,1000);

		Request("������", Smoothing);
		//Request("���C��", Smoothing);
		Move("������", 0, -512, 142, Axl1, true);
		Zoom("������", 0, 1300, 1300, Dxl2, true);
		Zoom("���C��", 0, 800, 800, Dxl3, true);
		Move("���C��", 0, -100, -200, Axl1, true);
		Rotate("���C��", 0, @0, @0, @-30, Axl1, false);
		Fade("���C��", 0, 1000, null, true);

		//�����S��������S����
		MoveFTP1("@���C��",10000,3,5);

		CreateSE("������ɣ�","se���L_����_��ͻ�M05");
		SoundPlay("������ɣ�",2000,300,true);

	Zoom("������", 30000, 1500, 1500, null, false);
	FadeDelete("�}��д", 500, true);


	SetFwL("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1470]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2300a12">
����ʧ�ɡ���
��������ʧ����

{	FwL("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2310a12">
�������<RUBY text="������">�����</RUBY>ȥ���Ļ�����
����ЩС��Ҳ����Ī�������
��ɱ���ˡ���

{	FwL("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2320a12">
���ҿɲ�����˵ʲô���ɣ�������
���м��仰Ҫ˵��
����˭���Ȳ��ˡ�����

{	FwL("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2330a12">
����ֻ��ɱ¾����
����������˽��������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 19998);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();
		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();
		//�������ԥåȣ��ԙC��������Ԅӻ���
		CP_AltChangeA();
		//�������ԥåȣ��ԙC����ٶ��Ԅӻ���
		CP_SpeedChangeA();
		//�������ԥåȣ��ԙC��󣺸߶��Ԅӻ���
		CP_HighChangeA();
		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();

		//�����ȥ
		CloudZoomFade2(0,true);
		//����_ʼ
		CloudZoomStart2B(700,1000,1000);

		//�����S��������S����
		MoveFTP1("@���C��",10000,2,2);

		Request("������", Smoothing);
		Request("���C��", Smoothing);
		Move("������", 0, -512, -20, Axl1, true);
		Zoom("������", 0, 1000, 1000, Dxl2, true);
		Zoom("���C��", 0, 10, 10, Dxl3, true);
		Move("���C��", 0, -170, -240, Axl1, true);
		Rotate("���C��", 0, @0, @0, @0, Axl1, false);
		Fade("���C��", 0, 1000, null, true);

	SetVolume("������ɣ�", 1000, 1, NULL);

	FadeDelete("�}��д", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1480]
����ȷ��
���ǳ���ȷ��

��������ʲô��û��ϵ��
���Ǹ���ׯ��Ϻ�Ľ��á�������������
����������������ɱ�ġ�

����ɱ�����ǡ�
�����Ҹ��˵��жϡ�

��ֻ��Ϊ�������ҵ�<RUBY text="����">��Ը</RUBY>��

�������㲻Ҳ��֪������ѩ���һ�ء�
��Ȼ��Ϊ�Σ����ٶ��˽�һ���ء�

��<RUBY text="����������������">����Ƕ����о�</RUBY>��

���뻶�֣����˶����޹�ϵ��
��Ϊ��һ��˽����ɱ���ߣ���Ϊ���

��������

��������Ϊ������Ҳ��֮�޹ء�
������ΪӢ�۵�ɱ¾����Ϊ���

��ɱ���ߣ���Ϊ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1490]
//��������
<voice name="����" class="����" src="voice/ma04/016vs2340a00">
���ǵģ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1500]
��Ϊ���
����Ϊ���

���������ߵ�����ֻ��һ����
�������Ƿ��ܼ�̤������

�����˶��ѡ�
�����˶��ѣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreatePlainSP("�}��д", 15000);

		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		//���̶��������ֹࣺͣ
		MoveFFP1stop();

		Request("������", Smoothing);
		Request("���C��", Smoothing);
		Move("������", 0, -533, 80, Axl1, true);
		Zoom("������", 0, 1500, 1500, Dxl2, true);
		Zoom("���C��", 0, 800, 800, Dxl3, true);
		Move("���C��", 0, -100, -200, Axl1, true);
		Rotate("���C��", 0, @0, @0, @0, Axl1, false);
		Fade("���C��", 0, 1000, null, true);

		Move("���C��", 0, -197, -525, Axl1, true);
		Zoom("���C��", 0, 0, 0, Dxl1, true);

		CreateTextureEX("���٥�ȣ�", 10000, 0, 0, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");
		Zoom("���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
		SetBlur("���٥�ȣ�", true, 2, 500, 100, false);

		CreatePlainEX("�}��д��", 100);
		Request("�}��д��", AddRender);

		CreateVOICE("ѩ܇�","ma04/016vs2350a12");

		CreateSE("�ӣţ�","se����_냇��_�k��02");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M02");
		CreateSE("�ӣţ�","se���L_����_���ϕN01");
		CreateSE("�ӣţ�","se���L_����_�z_���02");
		CreateSE("�ӣţ�","se���L_�Ɖ�_���k02");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M06");

//		CreateSE("�ӣţ�","se���L_����_�z_���01");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M03");

		CreateSE("�ӣţ�","se���L_����_�ռ�����01");
		CreateSE("�ӣţ�","se���L_����_��ͻ�M04");

	FadeDelete("�}��д", 300, false);

	SoundPlay("ѩ܇�",0,1000,false);
	SoundPlay("�ӣţ�",0,700,false);
	SoundPlay("�ӣţ�",0,700,false);
	SoundPlay("�ӣţ�",0,700,false);
	SoundPlay("�ӣţ�",0,700,false);
	SoundPlay("�ӣţ�",0,700,false);

	Zoom("���C��", 1000, 0, 0, Dxl2, false);
	Move("���C��", 1000, -100, -200, Axl2, false);
	Rotate("���C��", 1000, @0, @0, 80, Axl2, false);

	Move("������", 1000, -502, 294, Dxl2, false);
	Zoom("������", 1000, 2200, 2200, Dxl2, false);
	Fade("ɫ��", 1000, 1000, null, true);

	SoundPlay("�ӣţ�",0,700,false);

		//Move("������", 0, -502, 0, Dxl2, false);
		//SetVertex("������", 1024, 280);
		Move("������", 0, -502, -200, Dxl2, false);
		SetVertex("������", 1024, 380);

		SetVertex("���C��", 600, 600);
		//SetBlur("���C��", true, 1, 500, 50, false);

		Fade("�}��д��", 0, 500, null, true);

//	SoundPlay("�ӣţ�",0,700,false);
	SoundPlay("�ӣţ�",0,700,false);

	Fade("ɫ��", 1000, 0, null, false);
	Zoom("�}��д��", 2000, 2000, 2000, Dxl1, false);
	Fade("�}��д��", 2000, 0, null, false);
	Rotate("������", 2000, @0, @0, 180, Dxl1, false);

	Fade("���C��", 0, 1000, null, false);
	Zoom("���C��", 2000, 2000, 2000, Axl1, false);
	Rotate("���C��", 2000, @0, @0, @460, Dxl1, false);
	BezierMove("���C��", 2000, (@0,@0){@500,@800}{@700,@400}(@-100,@50), Axl1, false);
	Zoom("���C��", 2000, 1000, 1000, Axl1, false);

	Wait(1700);

		SoundPlay("�ӣţ�",0,700,false);
		SoundPlay("�ӣţ�",0,700,false);

	Fade("ɫ��", 300, 1000, null, true);

	Fade("���٥�ȣ�", 0, 1000, null, true);
	Zoom("���٥�ȣ�", 1000, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 1000, 0, null, true);

	Delete("���C*");
	Delete("�}��д");
	Delete("�}��д��");

	//�����ȥ
	CloudZoomFade2(0,true);

	SetFwL("cg/fw/fwѩ܇�_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1510]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2350a12" mode="off">
��������ʧ����
������ӷ���!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


		SetVolume("������ɣ�", 2000, 1, NULL);
		SetVolume("@mbgm*", 2000, 0, NULL);

//��ħ��������ޥ󡣼�����
	CreateTextureEX("���٥�ȣ�", 10000, 0, 0, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");
	SetTone("���٥�ȣ�", Monochrome);
	Fade("���٥�ȣ�", 1000, 1000, null, true);
	Delete("���٥�ȣ�");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1520]
��ѩ���һ�ء�
������㽫����Ϊ������Ա㡣

���Ҳ���Ը��ɱ�ˣ�
��������ɱ��ʱ�����ᣬ
������ô˵�Ļ�������ô˵���ˡ�

�������˵Ļ�����˵��˵�ɡ�
��Ȼ���ҡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������α�����Ⱥ��

	Fade("ɫ��", 500, 1000, null, true);

	Delete("���٥��*");
	Delete("���C��");
	Delete("����*");


	CreateColorSP("ɫ��", 10000, "#000000");
	CreateTextureSP("������", 17002, 495, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");
	CreateTextureSP("������", 17002, 196, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
	CreateTextureSP("������", 17002, 114, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
	CreateTextureSP("������", 17001, 353, InBottom, "cg/st/st⏴�_ͨ��_�Ʒ�.png");
	CreateTextureSP("������", 17001, -28, InBottom, "cg/st/st��·_ͨ��_˽��.png");
	SetTone("����*", Monochrome);
	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1530]
��
���ҡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������α�����Ⱥ��
//��혡���ʾ������˺Ϥ碌�ơ��������w���r�Ċ��á�
//��⏴������·׿�Ρ��������������������ܥ���
//��������

		CreateVOICEEX("���w��","ex/0010030b56","���w");
		CreateVOICEEX("���w��","ex/0010040b56","���w");
		CreateVOICEEX("�դ���","ex/0010050b05","�դ�");
		CreateVOICEEX("�դ���","ex/0010060b05","�դ�");
		CreateVOICEEX("�դʣ�","ex/0010070b06","�դ�");
		CreateVOICEEX("�դʣ�","ex/0010080b06","�դ�");
		CreateVOICEEX("��·��","ex/0010090b24","��·");
		CreateVOICEEX("��·��","ex/0010100b24","��·");
		CreateVOICEEX("⏴���","ex/0010015b57","⏴�");
		CreateVOICEEX("⏴���","ex/0010025b57","⏴�");

	CreateTextureEX("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef007_����Ѫ���֤�.jpg");
	CreateTextureEX("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef006_����Ѫ���֤�.jpg");

	CreatePlainSP("�}��д", 18000);
		FadeDelete("����*", 0, true);


		CreateTextureEX("���ߣ�", 17000, -28, InBottom, "cg/st/st��·_����_˽��.png");
	FadeDelete("�}��д", 300, false);

	SetBacklog("����", "voice/ex/0010090b24", ��·);
	SoundPlay("��·��",0,1000,false);
	$���������r�g=RemainTime("��·��");

	WaitAction("�}��д", null);
	WaitKey($���������r�g);
	SetVolume("��·��", 1000, 0, NULL);

	SetBacklog("��������", "voice/ex/0010100b24", ��·);
	SoundPlay("��·��",0,1000,false);
	$���������r�g=RemainTime("��·��");

	Fade("���ߣ�", 300, 1000, Dxl2, false);
	WaitKey($���������r�g);
	WaitAction("����*", null);
	FadeDelete("���ߣ�", 300, false);


		CreateTextureEX("���ߣ�", 17001, 196, InBottom, "cg/st/st�դ�_����_˽��.png");
		CreateTextureEX("���ߣ�", 17001, 114, InBottom, "cg/st/st�դ�_����_˽��.png");
	SetBacklog("����", "voice/ex/0010050b05", �դ�);
	SoundPlay("�դ���",0,1000,false);
	Wait(1000);
	SetBacklog("����", "voice/ex/0010070b06", �դ�);
	SoundPlay("�դʣ�",0,1000,false);
	$���������r�g=RemainTime("�դʣ�");
	WaitKey($���������r�g);

	WaitAction("����*", null);
	SetVolume("�դ���", 1000, 0, NULL);
	SetVolume("�դʣ�", 1000, 0, NULL);

	SetBacklog("��������", "voice/ex/0010060b05", �դ�);
	SetBacklog("��������", "voice/ex/0010080b06", �դ�);
	SoundPlay("�դ���",0,1000,false);
	SoundPlay("�դʣ�",0,1000,false);
	$���������r�g=RemainTime("�դ���");
	$���������r�g=RemainTime("�դʣ�");

	Fade("���ߣ�", 300, 1000, null, false);
	Fade("���ߣ�", 300, 1000, null, false);
	WaitKey($���������r�g);
	WaitAction("����*", null);
	FadeDelete("���ߣ�", 300, false);
	FadeDelete("���ߣ�", 300, false);



		CreateTextureEX("���ߣ�", 17001, 353, InBottom, "cg/st/st⏴�_����_�Ʒ�.png");
	SetBacklog("����", "voice/ex/0010015b57", ⏴�);
	SoundPlay("⏴���",0,1000,false);
	$���������r�g=RemainTime("⏴���");
	WaitKey($���������r�g);

	WaitAction("����*", null);
	SetVolume("⏴���", 1000, 0, NULL);

	SetBacklog("��������", "voice/ex/0010025b57", ⏴�);
	SoundPlay("⏴���",0,1000,false);
	$���������r�g=RemainTime("⏴���");

	Fade("���ߣ�", 300, 1000, null, false);
	WaitKey($���������r�g);
	WaitAction("����*", null);
	FadeDelete("���ߣ�", 300, false);


		CreateTextureEX("���ߣ�", 17002, 495, InBottom, "cg/st/st���w_����_�Ʒ�.png");
	SetBacklog("����", "voice/ex/0010030b56", ���w);
	SoundPlay("���w��",0,1000,false);
	$���������r�g=RemainTime("���w��");
	WaitKey($���������r�g);

	WaitAction("����*", null);
	SetVolume("���w��", 1000, 0, NULL);

	SetBacklog("��������", "voice/ex/0010040b56", ���w);
	SoundPlay("���w��",0,1000,false);
	$���������r�g=RemainTime("���w��");

	Fade("���ߣ�", 300, 1000, null, false);
	WaitKey($���������r�g);
	WaitAction("����*", null);
	FadeDelete("����*", 300, true);


		CreateTextureEX("������", 10000, 0, 0, "cg/bg/bg002_��a_03.jpg");
		CreateTextureSP("�ԙC��", 10000, -500, -200, "cg/st/3d�����˜�_�Tͻ_���L.png");
		Zoom("�ԙC��", 0, 0, 0, Dxl2, true);

		CreateWindow("������ɥ���", 150, 256, 0, 512, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		CreateTextureEX("������ɥ���/���٥�ȣ�", 10000, 59, -191, "cg/ev/resize/evex003_����_���L.png");
		SetBlur("������ɥ���/���٥�ȣ�", true, 2, 500, 100, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1540]
��
���ң�<k>
{	Fade("������ɥ���/���٥�ȣ�", 1000, 1000, null, true);}
�������ҵ�а��!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���£ǣͣ�а������

//�������w��
	SetVolume("������ɣ�", 2000, 1000, NULL);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M07",1000);

	Fade("������", 1000, 1000, null, false);

	Move("�ԙC��", 1000, @700, @0, Dxl1, false);
	Rotate("�ԙC��", 1000, @0, @0, 360, Dxl1, false);
	Zoom("�ԙC��", 1000, 2000, 2000, Axl2, false);
	Zoom("������ɥ���/���٥�ȣ�", 1000, 1200, 1200, Axl2, false);
	Fade("������ɥ���/���٥�ȣ�", 1000, 0, null, false);
	Fade("ɫ��", 1000, 1000, null, true);

		Delete("������");
		Delete("���C��");

		Delete("�ԙC��");
		Delete("������ɥ���");
		Fade("ɫ��", 0, 0, null, true);

/*
		CreateWindow("������ɥ���", 20150, 0, 0, 1024, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		CreateTextureSP("������ɥ���/���٥�ȣ�", 10001, 0, 0, "cg/ev/ev504_����ͻ�M.jpg");
		Zoom("������ɥ���/���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
		SetBlur("������ɥ���/���٥�ȣ�", true, 2, 500, 100, false);
		Zoom("������ɥ���/���٥�ȣ�", 500, 1000, 1000, Dxl2, false);
		Fade("ɫ��", 500, 0, null, true);
*/

		//�������
		CloudZoomSet2("�ޥɣ�",17500,-512,0,1024,576);
		//����_ʼ
		CloudZoomStart2B(700,1000,1000);
		//����Ƅ�
		CloudZoomVertex2(0,@-300,@0,Dxl2,true);
	
		//�������
		CloudZoomSet3("�ޥɣ�",17500,512,0,1024,576);
		//����_ʼ
		CloudZoomStart3(700,1000,1000);
		//����Ƅ�
		CloudZoomVertex3(0,@300,@0,Dxl2,true);
	
		CreateTextureSP("�ޥɣ�/����", 17000, -50, 0, "cg/bg/bg001_��c_03.jpg");
		Zoom("�ޥɣ�/����", 0, 1100, 1100, Dxl2, true);
		CreateTextureSP("�ޥɣ�/����", 17000, 0, -2000, "���إ���`����");
		Zoom("�ޥɣ�/����", 0, 1100, 1100, Dxl2, true);
		Rotate("�ޥɣ�/����", 0, 180, 0, 0, null, true);
	
		CreateTextureSP("�ޥɣ�/���C��", 17500, -460, -328, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���Lb.png");
		Zoom("�ޥɣ�/���C��", 0, 100, 100, Dxl2, false);
		CreateTextureSP("�ޥɣ�/�ԙC��", 17001, 69, -248, "cg/st/3d�����˜�_�Tͻ_���L.png");
		Zoom("�ޥɣ�/�ԙC��", 0, 3000, 3000, Dxl2, true);

	//����ȫ������
	MoveFRP1("@�ޥɣ�/����",10000,5,5);
	MoveFRP2("@�ޥɣ�/����",10000,5,5);

	//�����S��������S����
	MoveFTP1("@�ޥɣ�/���C��",15000,3,4);
	MoveFTP2("@�ޥɣ�/�ԙC��",10000,5,7);

	OnSE("se���L_����_��ͻ�M06",1000);

	SoundPlay("@mbgm03",0,1000,true);

	Zoom("�ޥɣ�/���C��", 1500, 1000, 1000, Dxl1, false);
	Zoom("�ޥɣ�/�ԙC��", 1000, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 1500, 0, null, false);

	//����ȫ�����ֹࣺͣ
	//MoveFRP1stop();
	//�����S��������S���ȣ�ֹͣ
	//MoveFTP1stop();


	SetFwC("cg/fw/fwѩ܇�_�o.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1550]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2360a12">
������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1560]
���ҵ�ȷ��������������
��������ƽ��ĵ����Ǳߴ����ģ���㵵���������

����������ز���һ���붼û����һ��������ֿ���

�������������������ղ�����ζ����ĵģ�Ҳ��ȫ��
֪����

��Ȼ���Ҷ��ˡ�
�������š�

��������ѩ���һ��ֱ���½�����Ӱ��
����ֱ�����Ϸɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M07",1000);

	Zoom("�ޥɣ�/���C��", 300, 1500, 1500, Axl1, false);
	Zoom("�ޥɣ�/�ԙC��", 300, 1500, 1500, Axl1, false);

	Fade("ɫ��", 300, 1000, null, true);
	//CreatePlainSP("�}��д", 19998);

		//����ȫ�����ֹࣺͣ
		MoveFRP1stop();
		MoveFRP2stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		MoveFTP2stop();

		//�����ȥ
		CloudZoomFade2(0,true);
		//�����ȥ
//		CloudZoomDelete2(0,false);
//		CloudZoomDelete3(0,true);

		//����_ʼ
		CloudZoomStart2(700,1000,1000);
		//����Ƅ�
		CloudZoomVertex2(0,@0,@300,Dxl2,true);
	
		//����Ƅ�
		CloudZoomVertex3(0,@0,@-300,Dxl2,true);

		LoadImage("���إ���`����", "cg/bg/resize/bg204_�����ر���_03ex.jpg");
		SetAlias("���إ���`����", "���إ���`����");
	
		CreateTextureSP("�ޥɣ�/������", 17000, -300, 0, "���إ���`����");
		CreateTextureSP("�ޥɣ�/������", 17000, -300, 0, "���إ���`����");
		CreateTextureSP("�ޥɣ�/������", 17000, 500, -4500, "���إ���`����");
		CreateTextureSP("�ޥɣ�/������", 17000, 500, -4500, "���إ���`����");

		CreateSCR1("@�ޥɣ�/������","@�ޥɣ�/������",1000,@0,-4500);
		CreateSCR2("@�ޥɣ�/������","@�ޥɣ�/������",1000,@0,0);
	
		CreateTextureSP("�ޥɣ�/���C��", 17001, -412, -585, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");
		Rotate("�ޥɣ�/���C��", 0, @0, @0, 90, null, true);
		Zoom("�ޥɣ�/���C��", 0, 2000, 2000, Dxl2, true);
		CreateTextureSP("�ޥɣ�/�ԙC��", 17001, 87, -168, "cg/st/3d�����˜�_�T��_���La.png");
		Rotate("�ޥɣ�/�ԙC��", 0, @0, @0, 90, null, true);
		Zoom("�ޥɣ�/�ԙC��", 0, 2000, 2000, Dxl2, true);

		CreateSE("������ɣ�","se���L_����_��ͻ�M05");
		SoundPlay("@������ɣ�",2000,300,true);

		Move("�ޥɣ�/���C��", 0, @0, @100, Dxl1, false);
		Move("�ޥɣ�/�ԙC��", 0, @0, @-100, Dxl1, true);

		//����ȫ������
		//MoveFRP1("@�ޥɣ�/����",10000,5,5);
		//MoveFRP2("@�ޥɣ�/����",10000,5,5);
		
		//�����S��������S����
		MoveFTP1("@�ޥɣ�/���C��",15000,3,4);
		MoveFTP2("@�ޥɣ�/�ԙC��",10000,5,7);

		Zoom("�ޥɣ�/���C��", 600, 1000, 1000, Dxl2, false);
		Zoom("�ޥɣ�/�ԙC��", 600, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 600, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1561]
��ӭ����Ӧ���Ƕ����ħ���������������
��������˫�ı�ɱ������

����������������
����ͼ����ʾ�������������ѹ���ԵĲ�����

����ʲô��ӭ����
����ʲô����

����Ȼ������Υ��Ԥ�����̬����ѩ��Ľ���δ���ҡ�

��˿��û�ж�ҡ����ʤ����ȷ����

����ȷ���Ǹ�����ֵ��������
�����������Ĺ��˵���ļ��ɣ���ֱ��ͬ��ج�ΰ�Ļ�
�롣

������֮����ġ���
��ֻ�н���ͬ���Ļ��롣

��
����������������������������

�����ǣ��������λô�˵��
����һ�鷲������һ��̫������������ͷ������Ϊ����
�Ĵ�˵����

�����Բ��ᷢ���Ļ��롣
��������ʵ�����롣

�������������ĸ��֣�����������������������ֻ����
��ͷ�����������硣ͨ����������ָ��ֻ�����̶ֳȶ�
�ѡ�
��һ������֮��ģ������е������Ρ�

���������
�����裬���������ʵ�ֵĻ���

����һ���㳬Խ������
��ĳ�������ϵ��������ڲ��ϵض����г�Խ��Ȼ������
<RUBY text="������">����</RUBY>�������ɾ͵���ʽ��

������������ڵĻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�Bĸ
	OnSE("se�M��_����_�ե�å���Хå�01",1000);

	Fade("ɫ��", 0, 1000, null, true);
		CreateTextureSP("���٥�ȣ�", 18000, 0, 0, "cg/ev/ev008_���Ӥ򱧤���Ů.jpg");
		SetTone("���٥�ȣ�", Monochrome);
		SetShade("���٥�ȣ�", MEDIUM);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 1000, 0, null, true);

//	Fade("���٥�ȣ�", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1570]
�����ڵĻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�I�Ϥ��줿�z���Υ��åȒ���
	OnSE("se�M��_����_�ե�å���Хå�01",1000);

	Fade("ɫ��", 0, 1000, null, true);
		CreateTextureSP("���٥�ȣ�", 18000, 0, 0, "cg/ev/ev005_�ؤ���줿��.jpg");
		SetTone("���٥�ȣ�", Monochrome);
		SetShade("���٥�ȣ�", MEDIUM);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 1000, 0, null, true);

//	Fade("���٥�ȣ�", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1580]
�������Ƕ�ôǿ���Ķ��֡�
�������Ƕ�ô��̵ķ�����
�������Ƕ�ô���ص����ơ�

������һ����������ǰ��΢�������

����һ�����ܹ�ն�����

��<RUBY text="������">�����</RUBY>��<RUBY text="��������">���ڵĻ�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�����k�񥫥åȒ���
	OnSE("se�M��_����_�ե�å���Хå�01",1000);

	Fade("ɫ��", 0, 1000, null, true);
		CreateTextureSP("���٥�ȣ�", 18000, 0, 0, "cg/ev/ev006_�����ο���.jpg");
		SetTone("���٥�ȣ�", Monochrome);
		SetShade("���٥�ȣ�", MEDIUM);

	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 1000, 0, null, true);

	SetVolume("������ɣ�", 1000, 1, NULL);
	SetVolume("������ɣ�", 1000, 1, NULL);

	Fade("ɫ��", 2000, 1000, null, true);
	Fade("���٥�ȣ�", 0, 0, null, true);

	Wait(2000);

//	SetFwC("cg/fw/fw����_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1590]
//������
//��������
<voice name="����" class="����" src="voice/ma04/016vs2370a00">
��
��������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		//����ȫ�����ֹࣺͣ
		MoveFRP1stop();
		MoveFRP2stop();
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		MoveFTP2stop();

		SCR1stop();
		SCR2stop();

		//�����ȥ
		CloudZoomFade2(0,true);
		CloudZoomFade3(0,true);

//����åɥ�����
	CreateColorEX("ɫ��", 19999, "#AA0000");
	Fade("ɫ��", 2000, 1000, null, true);
	Wait(1000);


		Delete("���٥�ȣ�");

//		CreateColorEXover("ɫ��", 19997, "#AA0000");
//		Fade("ɫ��", 0, 500, null, true);

		CreateTextureEX("�ޥɣ�/���٥�ȣ�", 18001, -119, -46, "cg/ev/resize/evex003_ѩ܇�_ŭ��.png");
		CreateTextureEX("�ޥɣ�/���٥�ȣ�", 18001, 319, -308, "cg/ev/resize/evex003_����_����.png");
		CreateColorSP("�ޥɣ�/����", 19996, "#AA0000");
		CreateColorSP("�ޥɣ�/ɫ", 19997, "#000000");

		CreateTextureSP("�ޥɣ�/���٥�ȣ�", 18000, -300, 0, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");
		Zoom("�ޥɣ�/���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
		SetBlur("�ޥɣ�/���٥�ȣ�", true, 2, 500, 100, false);

	SetVolume("������ɣ�", 1000, 600, NULL);
	SetVolume("������ɣ�", 1000, 1000, NULL);

	Fade("ɫ��", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);

	Zoom("�ޥɣ�/���٥�ȣ�", 1000, 1000, 1000, Dxl2, false);

	Shake("�ޥɣ�/���٥�ȣ�", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Move("�ޥɣ�/���٥�ȣ�", 1000, @0, @-100, Dxl1, false);
	Fade("�ޥɣ�/���٥�ȣ�", 1000, 500, null, false);

	//Move("�ޥɣ�", 1000, 0, @0, Dxl1, false);
	//Move("�ޥɣ�/���٥�ȣ�", 1000, 0, @0, Dxl1, false);
	//Move("�ޥɣ�/���٥�ȣ�", 1000, @100, @0, Dxl1, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1600]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2380a12">
��
��
����������������ȥ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


		CreateTextureSP("�ޥɣ�/���٥�ȣ�", 18000, 328, 0, "cg/ev/ev504_����ͻ�M.jpg");
		Zoom("�ޥɣ�/���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
		SetBlur("�ޥɣ�/���٥�ȣ�", true, 2, 500, 100, false);

	Fade("�ޥɣ�/ɫ", 100, 0, null, true);
	Fade("�ޥɣ�/����", 300, 0, null, false);

	Zoom("�ޥɣ�/���٥�ȣ�", 500, 1000, 1000, Dxl2, false);

	Shake("�ޥɣ�/���٥�ȣ�", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Move("�ޥɣ�/���٥�ȣ�", 1000, @0, @100, Dxl1, false);
	Fade("�ޥɣ�/���٥�ȣ�", 1000, 500, null, false);
	//Fade("�ޥɣ�/���٥�ȣ�", 500, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1601]
//������
//��������
<voice name="����" class="����" src="voice/ma04/016vs2390a00">
��
����������ѽ������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	//SetVolume("@mbgm*", 2000, 0, NULL);

	CreatePlainSP("�}��д", 19000);
	SetBlur("�}��д", true, 2, 500, 100, false);

	//�����ȥ
	CloudZoomDelete2(0,true);
	CloudZoomDelete3(0,true);

		CreateSE("�ӣţ�","se���L_����_��ꪏ���03");
		CreateSE("�ӣţ�","se���L_����_���nͻ01");
		CreateSE("�ӣţ�","se���L_����_�z_���04");

	OnSE("se���L_����_��ͻ�M06",1000);

	Zoom("�}��д", 500, 2000, 2000, Axl2, false);
	Fade("ɫ��", 500, 1000, null, true);

		Fade("ɫ��", 0, 0, null, true);
		Delete("�ޥ�*/*");
		Delete("�}��д");
		Delete("���٥��*");
		Delete("���ե�����*");
		Delete("������ɥ���");
		Delete("������ɥ���");


		CreateTextureSP("������", 100, Center, 0, "cg/bg/resize/bg001_��c_03l.jpg");
		SetVertex("������", 1024, 287);

		CreateTextureSP("���C��", 200, -551, -548, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");
		Zoom("���C��", 0, 50, 50, Dxl2, true);
		Rotate("���C��", 0, @0, @0, 40, null, true);
		SetBlur("���C��", true, 1, 500, 50, false);

		CreateTextureSP("�ԙC��", 200, 283, -124, "cg/st/3d�����˜�_�T��_���La.png");
		Zoom("�ԙC��", 0, 50, 50, Dxl2, true);
		Rotate("�ԙC��", 0, @0, @0, 40, null, true);
		SetBlur("�ԙC��", true, 1, 500, 50, false);

		CreateTextureEX("���٥�ȣ�", 100, -1000, -576, "cg/ev/resize/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��_l.jpg");
		Zoom("���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
		SetBlur("���٥�ȣ�", true, 1, 500, 50, false);

		LoadImage("���ե����ȥ���`��", "cg/ef/ef042_���ô��.jpg");
		SetAlias("���ե����ȥ���`��", "���ե����ȥ���`��");
	
		CreateTextureEX("���٥�ȣ�", 100, 0, 0, "cg/ev/ev947_�����ؓĚ���.jpg");
		SetVertex("���٥�ȣ�", 100, 100);
		SetBlur("���٥�ȣ�", true, 2, 500, 50, false);
		Zoom("���٥�ȣ�", 0, 1200, 1200, Axl1, false);

		CreateTextureEXsub("���٥�ȣ�", 100, 0, 0, "cg/ev/ev947_�����ؓĚ���.jpg");
		SetVertex("���٥�ȣ�", 100, 100);

		CreateTextureEXadd("���٥�ȣ�", 100, -107, -68, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	
		CreateTextureEXsub("���ե����ȣ�", 100, 0, 0, "���ե����ȥ���`��");
		Rotate("���ե����ȣ�", 0, @0, @180, @0, null, true);
		Zoom("���ե����ȣ�", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXmul("���ե����ȣ�", 100, 0, 0, "���ե����ȥ���`��");
		Rotate("���ե����ȣ�", 0, @0, @180, @0, null, true);
		Zoom("���ե����ȣ�", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXmul("���ե����ȣ�", 100, 0, 0, "cg/ef/ef003_�����Ƅ�.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Axl1, false);
//		SetBlur("���C��", true, 2, 500, 50, false);

	CreatePlainSP("�}��д", 10000);

	CreateSE("�ӣţ�","se���L_����_�z_���02");
	CreateSE("�ӣţ�","se���L_����_��ͻ�M03");
	CreateSE("�ӣţ�","se����_냇��_�k��03");

//������Х�
	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M07",1000);
	OnSE("se���L_����_��ͻ�M08",1000);

	Fade("ɫ��", 300, 0, null, false);

	Zoom("�}��д", 500, 1300, 1300, Dxl2, false);
	Fade("�}��д", 500, 0, null, false);

	Move("���C��", 500, -412, -591, Axl1, false);
	Move("�ԙC��", 500, 120, -60, Axl1, false);

	Zoom("������", 500, 5000, 5000, Axl1, false);
	Zoom("���C��", 500, 1000, 1000, Axl1, false);
	Zoom("�ԙC��", 500, 1000, 1000, Axl1, false);
	Wait(300);

	Fade("ɫ��", 200, 1000, null, true);

		Delete("�ԙC��");
		Delete("���C��");
		Delete("����*");

//��ѩ܇�����B����
	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);
	SoundPlay("�ӣţ�",0,1000,false);

	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 500, 0, null, false);
	BezierMove("���٥�ȣ�", 1000, (@0,@0){1000,700}{0,700}(-1200,100), Dxl2, 500);
	Fade("ɫ��", 500, 1000, null, true);

//��������ħ��װ�א���
	SetVolume("@mbgm*", 2000, 0, NULL);

	OnSE("se���L_�Ɖ�_���k01",1000);
	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M03",1000);

//	Zoom("���C��", 200, 2000, 2000, Dxl1, false);
//	Fade("ɫ��", 200, 1000, Axl1, true);
//	Delete("���C��");
//	Delete("�ԙC��");

	OnSE("se���L_����_��ͻ�M07",1000);
	OnSE("se���L_����_�����01",1000);
	OnSE("se���L_����_�z������01",1000);

	Fade("ɫ��", 0, 0, null, false);


	Fade("���٥�ȣ�", 0, 500, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);

	Shake("���٥�ȣ�", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Zoom("���٥�ȣ�", 2000, 2000, 2000, Axl1, false);
	Zoom("���٥�ȣ�", 2000, 2000, 2000, Dxl1, false);

	Rotate("���ե����ȣ�", 10000, @0, @0, 3600, null, false);
	Zoom("���ե����ȣ�", 500, 3000, 3000, Axl1, false);
	Fade("���ե����ȣ�", 300, 500, null, false);
	Fade("ɫ��", 300, 700, null, false);
	Wait(400);

		SoundPlay("�ӣţ�",0,1000,false);
		SoundPlay("�ӣţ�",0,1000,false);

	Fade("���٥�ȣ�", 300, 0, null, false);

	Shake("���ե����ȣ�", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("���ե����ȣ�", 1000, 0, 50, 0, 0, 700, Dxl1, false);

	Fade("ɫ��", 200, 0, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Wait(300);

		SoundPlay("�ӣţ�",0,1000,false);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Wait(300);
	Fade("���ե����ȣ�", 600, 0, null, false);
	Fade("���ե����ȣ�", 600, 0, null, false);

	Fade("���٥�ȣ�", 600, 1000, null, false);
	Shake("���٥�ȣ�", 600, 0, 50, 0, 0, 700, Dxl1, false);
	Zoom("���٥�ȣ�", 600, 2000, 2000, Dxl2, false);

	Fade("ɫ��", 600, 1000, Axl2, true);

	OnSE("se���L_�Ɖ�_���k01",1000);
	OnSE("se���L_�Ɖ�_�z05",1000);
	OnSE("se���L_�n��_�zɢ�A",1000);
	OnSE("se���L_�n��_�zܞ��03",1000);

//�������`��ͻ���ɤä��`��
		Delete("���٥��*");
		Delete("���ե�����*");

		CreateSE("������ɣ�","se���L_����_��ͻ�M05");
		SoundPlay("@������ɣ�",2000,300,true);

		CreateTextureSP("������", 17000, -5000, 3200, "���إ���`����");
		CreateTextureSP("������", 17000, -5000, 3200, "���إ���`����");
		Zoom("������", 0, 2000, 2000, null, true);
		Rotate("������", 0, @0, @0, @-45, null, true);
		Zoom("������", 0, 2000, 2000, null, true);
		Rotate("������", 0, @0, @0, @-45, null, true);

		CreateTextureSP("���C��", 19500, -88, -400, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Ld.png");
		Rotate("���C��", 0, @0, @0, -90, null, true);

		CreateTextureSPadd("��������", 19998, 0, 0, "cg/ef/ef022_��������ɢ�A.jpg");
		Zoom("��������", 0, 1500, 1500, Dxl2, true);

	CloudZoomStart2(700,1000,1000,500,1000);
	CloudZoomVertex2(0,@-500,@0,Dxl1,true);

	CreateSCR1("@������","@������",1000,1200,-3100);

	//����������
	MoveSSP1("@���C��",100000,0,10,0,10,1000,null);
	//���S��������S����
	//MoveFTP1("@���C��",20000,3,5);

	//SetBlur("���C��", true, 2, 500, 200, false);
	Fade("���C��", 0, 1000, null, false);

	Move("��������", 1000, @200, @0, Axl1, false);
	Fade("��������", 1000, 0, null, false);
	Rotate("���C��", 1000, @0, @0, -180, Dxl2, false);
	Fade("ɫ��", 1000, 0, null, true);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1610]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2400a12">
������ʲ������

{	FwC("cg/fw/fwѩ܇�_ŭ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2410a12">
���㡭���ɶ񡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇���
	Fade("ɫ��", 100, 1000, null, false);
	DrawTransition("ɫ��", 300, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

		//�����ȥ
		CloudZoomDelete2(0,false);
	
		//������������ֹͣ
		MoveSSP1stop();
		SCR1stop();

		Delete("���C*");
		Delete("����*");

		CreateTextureSP("������", 17000, Center, Middle, "���إ���`����");
		Move("������", 0, @0, @400, Axl1, true);
		Rotate("������", 0, @0, @0, 90, null, true);
		CreateTextureSP("���C��", 17000, -243, -299, "cg/st/3d�ũ�ʽ�o�T��_�T��_ͨ��.png");

		CreateTextureEX("���ե����ȣ�", 17000, 0, 0, "cg/ef/efRec_�a01.png");
		Zoom("���ե����ȣ�", 0, 100, 100, Dxl2, true);
		CreateTextureEX("���ե����ȣ�", 17000, 0, 0, "cg/ef/efRec_�a02.png");
		Zoom("���ե����ȣ�", 0, 100, 100, Dxl2, true);
		CreateTextureEX("���ե����ȣ�", 17000, 0, 0, "cg/ef/efRec_�a03.png");
		Zoom("���ե����ȣ�", 0, 100, 100, Dxl2, true);
		CreateTextureEX("���ե����ȣ�", 17000, 0, 0, "cg/ef/efRec_�a04.png");
		Zoom("���ե����ȣ�", 0, 100, 100, Dxl2, true);

		OnSE("se���L_�Ɖ�_�z01",1000);
		SetVolume("������ɣ�", 1000, 0, NULL);
		SetVolume("������ɣ�", 1000, 1, NULL);

	Fade("ɫ��", 200, 0, null, false);

	Move("������", 2000, @-500, @0, Dxl2, false);

	Rotate("���C��", 3000, @0, @0, 180, Dxl1, false);
	Zoom("���C��", 3000, 100, 100, Dxl1, false);
	Shake("���C��", 3000, 0, 50, 0, 0, 700, Dxl3, false);
	Move("���C��", 3000, @200, @-200, Axl1, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 90, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 1000, 1000, Dxl2, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(300);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 90, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 1000, 1000, Dxl2, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(300);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 90, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 1000, 1000, Dxl2, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(300);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	Fade("ɫ��", 500, 1000, null, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, 90, Dxl3, false);
	Zoom("���ե����ȣ�", 2000, 1000, 1000, Dxl2, false);
	Fade("���ե����ȣ�", 150, 1000, null, false);
	Wait(300);
	Fade("���ե����ȣ�", 1000, 0, null, false);

	SetFwC("cg/fw/fwѩ܇�_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1611]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma04/016vs2420a12">
���쵰��������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������������ѩ`��
	CreateSE("�ӣţ�","se����_����_ˮ���w���z��01");
	CreateSE("�ӣţ�","se��Ȼ_ˮ_������01");
	CreateSE("�ӣţ�","se����_����_ˮ���w���z��01");
	CreateSE("�ӣţ�","se��Ȼ_ˮ_������01");

	OnSE("se����_����_ˮ���w���z��01",1000);
	OnSE("se��Ȼ_ˮ_������01",1000);

	MusicStart("�ӣţ�",0,1000,0,1500,null,false);
	MusicStart("�ӣţ�",0,1000,0,1500,null,false);
	MusicStart("�ӣţ�",0,1000,0,500,null,false);
	MusicStart("�ӣţ�",0,1000,0,500,null,false);



//��һ�ȥ֥�å�������
	Fade("ɫ��", 300, 1000, null, true);
	Delete("���C*");
	Delete("����*");

	Wait(4000);

	SetVolume("�ӣ�*", 3000, 0, NULL);

	Wait(2000);

//������

		//�������
		CloudZoomSet2("�ޥ�",1000,0,0,1024,576);

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();
		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();

		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,0,AxlDxl,false);
	
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(0,311,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange(0,1200,Dxl1,false);
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(0,0,Dxl1,false);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,0,Dxl1,true);

		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(0,65);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(0,251);
		//�������ԥåȣ��ԙC��󣺟�����
		CP_PowerChange(0,300,null,false);
		//�������ԥåȣ��ԙC�������ȣУ�
		CP_IHPChange(0,3,null,false);

		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();

		CreateTextureSP("������", 100, Center, -500, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
		CreateSurfaceEX("�}Suf",200,2000,"������");
		Fade("�}Suf", 0, 1000, null, true);

		//����_ʼ
		CloudZoomStart2(700,1000,1000);
		//���̶���������
		MoveFFP1("@�}Suf",5000);

	SetVolume("������ɣ�", 2000, 1000, NULL);

	Fade("ɫ��", 2000, 0, null, true);


	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1620]
//��������
<voice name="����" class="����" src="voice/ma04/016vs2430a00">
����������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs2440a01">
������������
��������������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs2450a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs2460a00">
�������š�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs2470a01">
�������ղš���
���㣬���ˡ���ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs2480a00">
����֪������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs2490a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs2500a00">
��������֪������
�������ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs2510a01">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs2520a00">
�����������ͺá�
���ص��ϰɣ���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs2530a00">
���Ѿ���������úܾ��ˡ�����Ҫ��һ�㡣
�������״����Σ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs2540a01">
��������ǿ�ܹ��ж���
����ǿ���ء���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//ͽ�i�����夦��������ͣ�
//��������
<voice name="����" class="��������" src="voice/ma04/016vs2550a01">
������ң������ѵ������ˡ���
��ʲôʱ�����ȥ����������Ȼ�ģ�
Ҳû����ȥ�ҽ�����˱�Թ����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/016vs2560a00">
����ô���̰��������ɡ�
���߰ɣ���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/016vs2570a01">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("������ɣ�","se���L_����_��ͻ�M06");
	SoundPlay("������ɣ�",0,1000,false);
	SetVolume("�������*", 2000, 0, NULL);

	//����Ƅ�
	CloudZoomVertex2(1000,@-500,@200,Dxl1,false);

	Move("������", 2000, @0, @-1000, Axl1, false);
	Rotate("�}Suf", 2000, @0, @0, @180, Axl2, false);
	Fade("ɫ��", 2000, 1000, null, true);

	Wait(2000);

	WaitPlay("������ɣ�", null);

	//�����ȥ
	CloudZoomDelete2(500,false);

	ClearWaitAll(2000, 1000);
	CP_AllDelete();

..//������ָ��
//�Υե����롡"ma04_017.nss"


}