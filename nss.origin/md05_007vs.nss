//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_007vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_007vs.nss","TekiSet",true);
	Conquest("nss/md05_007vs.nss","TekiGo",true);

	//CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg202_�����ݳ�����ɽ_02=true;
	#ev001_�y�Ǻ��¼�����`����=true;
	#bg106_��ʿɽ�h��b_00=true;
	#ev228_���y��܊��_d=true;
	#ev228_���y��܊��_e=true;
	#bg001_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "md05_008vs.nss";
}

scene md05_007vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureSP("������", 100, 0, 200, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	Zoom("������", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("����`����", 100, 0, 0, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	LoadImage("���إ���`����", "cg/bg/bg204_�����ر���_02.jpg");
	SetAlias("���إ���`����", "���إ���`����");


	//���j�~����`��
	LoadImage("�j�~����`��", "cg/st/resize/3d����ʽ�AȾ_�Tͻ_ͨ��3_ss.png");
	SetAlias("�j�~����`��", "�j�~����`��");
	$tekixbase=0;
	$tekiybase=0;
	$tekixx=500;
	$tekiyy=250;
	$preteki=1;

	//���j�~���å�
	$teki=0;
	$tekimax=30;
	TekiSet();

	//�������ԥåȣ����x��
	//CP_AllSet("����");
	//�������ԥåȣ�˲�g��ʾ��
	Cockpit_AllFade2();
	//�������ԥåȣ��ԙC�����ӣ�
	FrameShake();
	//�������ԥåȣ��ԙC��������Ԅӻ���
	CP_AltChangeA();
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(0,400,null,true);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange(0,900,null,true);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(0,0,null,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();

	//�������ԥåȣ��ԙC�������ȣУ�
	//CP_IHPChange(0,10,null,false);
	//�������ԥåȣ��ԙC���װ�ף�
	MyLife_Count(0,720);
	//�������ԥåȣ��ԙC��󣺳�����
	MyTr_Count(0,294);
	//�������ԥåȣ��ԙC��󣺟�����
	//CP_PowerChange(0,500,null,false);



	//�������
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	MoveFFP1("@������",5000);//�̶���������

	CreateSE("������ɣ�","se���L_����_������01_L");
	SoundPlay("������ɣ�",500,1000,true);

	FadeDelete("�ϱ���", 500, true);


..//������ָ��
//ǰ�ե����롡"md05_006.nss"

//���������οգ�Ϧ�����äǟo���}��
//���������򤫤äƤ��뤿�ᡢ�M�з����̫ꖤ��F���
//�����ȤϤʤ�
//���T��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������֮ǰ����ʿɽ��������

�����������϶���
���ܸо����̹ǵĺ��紩͸���ס�

�����ǺͿ���ϡ���ĸ߿���ȣ�������
ů�͵İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	//�������ԥåȣ��ԙC������ǣ�
	//CP_AltChange2(500,-30,null,false);

	//����Ƅ�
	CloudZoomVertex(500,@0,@-500,AxlDxl,false);
	Move("������", 500, @0, @-300, AxlDxl, false);
	Wait(500);

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/007vs0010a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����·�һƳ��ɲ�Ǽ䣬�ҵ�����˲ʱ
ֹͣ��

������ĳ���Ĵ���ɡ�
��΢�������Ĺ⾰����Ⱥ������

��ĩ��֮�ࡣ

{	Fade("����`����", 500, 200, null, false);}
��˻����
�����
����Ѫ��
���ڻ�

������Ϊ�����޺ͽ�פ����ս�������������أ�
���������ڡ��񡱵Ľ��䣬
��������ľ�����ȾŨ�����ӣ�
�������������˿־���������أ�

���޴ӵ�֪��
����ȷ����Ψ�вҾ����ڷ�����һ��ʵ��

{	FadeDelete("����`����", 500, false);}
������������֮�У�������ʲôżȻ��
ͻȻ�ѿ���һ����϶��
���������һ�����ӡ�

����������һ˲�䣬�漣��ر�ס��������

�����ǣ���һ˲�䣬���������ðɡ�
�����¸�˲�䣬���޷����������������ɡ�

������������ա�

���������ֳ���һ˿ϲ�á�

�����������ҵ���Ӱ��

�����������ʵ���Ӱ�����������֮�֡�

�����ӵ�ֱ������ȷ�ġ�

�����ܹ������Ǹ����ӡ�

��������½���ú��ӻ�����֮ʱ����������
�������������¡�

����ֻҪ����һ��������

����Ⱥ��ӣ�<k>
���������ǻ����У�<k>
��ն�����ѵĸ�Դ�������ǧ���ѷ�ĺû��ᡪ��

��ֻҪ����������������ܹ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md05/007vs0020a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������T��

	//�������ԥåȣ��ԙC������ǣ�
	//CP_AltChange2(500,0,null,false);

	//����Ƅ�
	CloudZoomVertex(500,@0,@500,Dxl1,false);
	Move("������", 500, @0, @300, Dxl1, false);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ҷ����ˡ�

�����������ľ������ǲ����Ǹ����ӡ�

����Ȼ���������Ⱥ�ɱ��������ͬ��ʡ�

��һ˲����漣�����ˡ�

���ױ�������Ϯ����СС�����

����ȷʵ�����˺��ӵľ�����

����ȷʵ�����˺��ӵ�Թ�ޡ�

��������ؼ�֤�˺��ӱ��п�����˺�ѡ�������
����������ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(500);

	CreateColorEX("ɫ��", 18000, "#000000");

	SetVolume("������ɣ�", 2000, 0, NULL);
	Fade("ɫ��", 1000, 1000, null, true);

	FadeDelete("������", 0, true);
	MoveFFP1stop();

	//���j�~���å�
	$teki=30;
	$tekimax=40;
	TekiSet();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
����������һ��ɱ¾֮���
����һ·��������ս����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	//Wait(3000);
	//���j�~���å�
	$teki=40;
	$tekimax=80;
	TekiSet();

	CreateTextureSP("������", 17000, 148, 0, "cg/bg/bg106_��ʿɽ�h��b_00.jpg");
	Zoom("������", 0, 1500, 1500, Dxl2, true);
	CreateTextureSP("�ԙC��", 17000, -714, -174, "cg/st/3d������K_�T��_ͨ��3.png");
	//Rotate("�ԙC��", 0, @0, @0, 45, null, true);
	//Zoom("�ԙC��", 0, 100, 100, Dxl2, true);
	SetBlur("�ԙC��", true, 1, 300, 100, false);

	CreateTextureSP("������", 100, 450, 250, "cg/bg/bg106_��ʿɽ�h��b_00.jpg");
	Zoom("������", 0, 2000, 2000, Dxl2, true);

	CreateTextureEX("������", 17000, 0, 150, "cg/bg/resize/bg204_�����ر���_02ex.jpg");
	CreateTextureEX("������", 17000, 0, 150, "cg/bg/resize/bg204_�����ر���_02ex.jpg");
	Zoom("������", 0, 1500, 1500, Dxl2, true);
	Zoom("������", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("���٥�ȣ�", 18100, 0, Middle, "cg/ev/resize/ev228_���y��܊��_dl.jpg");
	CreateTextureEX("���٥�ȣ�", 18100, 0, 0, "cg/ev/ev228_���y��܊��_d.jpg");

//����ʿɽ����
	CreateSE("������ɣ�","se���L_����_������01_L");
	SoundPlay("������ɣ�",500,700,true);
	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",500,500,true);

	FadeDelete("ɫ��", 500, false);
	Shake("������", 8000, 0, 2, 0, 0, 600, null, false);
	Shake("�ԙC��", 8000, 0, 4, 0, 0, 600, null, false);
	FadeF("������",8000,1000,8000,-148,0,null, false);
	FadeF3("�ԙC��",8000,1000,8000,300,0,null, false);

	Wait(7000);

//������`�ࡣ����
	OnSE("se����_���å��ԥå�_����`��",1000);
	MoveFFP1("@������",5000);//�̶���������

	SetVolume("������ɣ�", 500, 0, NULL);
	SoundPlay("������ɣ�",500,1000,true);

	FadeDelete("������", 500, false);
	FadeDelete("�ԙC��", 500, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md05/007vs0030a01">
��������������!!��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/007vs0040a00">
��ʲô�������������أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/007vs0050a01">
��������������<?>
{	Wait(1000);}
�ϰ٣���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/007vs0060a00">
�����ӵĹ�ģ?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����Ȼ�����϶��ǵ���Ǽ���˵�Է���δ
���ع������ưɡ�
����������ĺ�ս�ԡ����У�������������������

��Ҳ����˵����{Wait(2000);}
��
���Ǹ���?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y���Bꠡ�ev228c
	LoadImage("����`����", "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	SetAlias("����`����", "����`����");

	CreateTextureSP("���C��", 17000, -200, -1000, "����`����");
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	Rotate("���C��", 0, @0, @0, 90, null, true);
	CreateTextureSP("���C��", 17000, 0, -1500, "����`����");
	Zoom("���C��", 0, 1000, 1000, Dxl2, true);
	Rotate("���C��", 0, @0, @0, 90, null, true);
	CreateTextureSP("���C��", 17000, -500, -2000, "����`����");
	Zoom("���C��", 0, 1500, 1500, Dxl2, true);
	Rotate("���C��", 0, @0, @0, 90, null, true);

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",500,800,true);

	CreateSCR1("@������","@������",1000,@0,-5000);
	Fade("������", 1000, 1000, null, true);

	Wait(500);

	OnSE("se���L_����_��ͻ�M07",1000);
	Move("���C��", 1000, @200, @3000, Dxl1, false);
//	Wait(150);
	OnSE("se���L_����_��ͻ�M07",1000);
	Move("���C��", 750, @-300, @2000, Dxl1, false);
	Wait(150);
	OnSE("se���L_����_��ͻ�M07",1000);
	Move("���C��", 400, @80, @2700, null, true);

	Rotate("���C��", 0, @0, @0, 0, null, true);
	Rotate("���C��", 0, @0, @0, 0, null, true);
	Rotate("���C��", 0, @0, @0, 0, null, true);

	Wait(1000);

	CreateSE("������ɣ�","se���L_����_������02_L");
	SetVolume("������ɣ�", 4000, 0, NULL);
	SoundPlay("������ɣ�",1000,1000,true);

	Shake("���C��", 100000, 0, 2, 0, 0, 500, null, false);
	BezierMove("���C��", 3000, (@0,@0){@-200,@-320}{@200,@-680}(@0,@-950), Dxl1, 300);
	Shake("���C��", 100000, 0, 2, 0, 0, 500, null, false);
	BezierMove("���C��", 3000, (@0,@0){@-200,@-320}{@200,@-680}(@-50,@-2000), Dxl1, 300);
	Shake("���C��", 100000, 0, 2, 0, 0, 500, null, false);
	BezierMove("���C��", 3000, (@0,@0){@-200,@-320}{@200,@-680}(@600,@-1200), Dxl1, 1500);

	Fade("���٥�ȣ�", 1500, 1000, null, false);
	Move("���٥�ȣ�", 4500, @-1024, @0, null, 3000);
	Fade("���٥�ȣ�", 1000, 1000, null, true);

	SetVolume("������ɣ�", 2000, 0, NULL);

	SCR1stop();
	MoveFFP1stop();
	Delete("���٥�ȣ�");
	Delete("������");
	Delete("������");
	Delete("���C*");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md05/007vs0070a01">
������!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/007vs0080a00">
�����Ǹ����񡱺���������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���Ǳ�ԭ�����Ϣ����������ۼ���������

���㴨�������񲿶���ȫ�ı䣬�Ӷ��γ����Ǻŵ�
���Ƽ��š�
����������ǿ���������������!!

����ȫδ���뵽����ʿɽ��Ȼ������ǰ��
ȴ�����ּһ����赲�˵�·��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md05/007vs0090a00">
��û�պ������桪����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/007vs0100a01">
���Է��ƺ�������Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����˥��`�����T����
	//��������
	MoveSSP1("@������",100000,0,1,0,1,300,null);
	MoveSSP2("@�j�~*",100000,0,1,0,1,1000,null);

	Fade("���٥�ȣ�", 1000, 0, null, true);

	OnSE("se����_���å��ԥå�_��å�����",1000);

	//�������ԥåȣ���å������O�ã�
	CockPit_LockSet(@0,@0);
	//�������ԥåȣ���å��������棩
	CP_LockOnFade(500,"off",true);

	CreateSE("������ɣ�","se����_���å��ԥå�_̽��01");
	CreateProcess("�ץ�����", 150, 0, 0, "TekiGo");
	SetAlias("�ץ�����", "�ץ�����");

	Wait(500);
	Request("�ץ�����", Start);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���Ǹ���Ʒ���ܱ�ԭ�ﻹҪ�鷳��

�������ʱ�������繥����Ⱦ���м̵��������ʵ�
���ԣ����������ų�Ϯ��ǰ���ĸ߻����ԡ���
�����У�������ʽ�̳ж�����
��������ʹ�õľѻ�������

��������ϼ�ʹ�ٱ��ع���Ҳ�Ǽ������в��
���ټ�������һ������֮����

�����˵�Ⱥ���������£�Ҳ����ĳ��ս����
���޴�֪����
�����Ƕ��ж�Ϊʤ�������޷�ȫ��ѹ�ƣ�
��������֮��ء�

���з��ڡ�ȷ�����ƴٵ�Ͷ�����ķ�����
������ж���ίʵ��������
�������һ��������̾�ͬʱ����ɡ�

������Ǻã�
����˵������һ����һ���ܼ�����������
���ư���֮�£�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Delete("������ɣ�");

	CreatePlainSP("������", 17000);

	CreateSEEX("������ɣ�","se���L_��҆��_����02_L");
	SoundPlay("������ɣ�",5000,700,true);

//���}�u���k��h�ʂ�
	CreateTextureEX("���٥�ȣ�", 18100, -1024, Middle, "cg/ev/resize/ev228_���y��܊��_dl.jpg");
	CreateTextureEX("���٥�ȣ�", 18100, -1024, Middle, "cg/ev/resize/ev228_���y��܊��_el.jpg");
	CreateTextureEX("���٥�ȣ�", 18100, 0, 0, "cg/ev/ev228_���y��܊��_e.jpg");

	Move("���٥�ȣ�", 30000, 0, @0, null, false);
	Move("���٥�ȣ�", 30000, 0, @0, null, false);
	Fade("���٥�ȣ�", 1000, 1000, null, true);

	//�������ԥåȣ���å�������ȥ��
	CP_LockOnFadeT(0,true);

	Delete("������");

	//��������
	MoveSSP1stop();
	MoveSSP2stop();
	Request("@�ץ�����", Stop);
	Delete("@�ץ�����");
	Delete("�j�~*");

	Wait(1000);

	Fade("���٥�ȣ�", 5000, 1000, null, false);

	SetFwC("cg/fw/fw����_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md05/007vs0110a00">
��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/007vs0120a01">
���š���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/007vs0130a00">
��Ҫ<RUBY text="����">����</RUBY>��Ŷ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/007vs0140a01">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 0, NULL);

	SoundPlay("@mbgm08",0,1000,true);

//���k�񡣴Ρ���
	Fade("���٥�ȣ�", 500, 1000, null, true);
	Delete("���٥�ȣ�");
	Delete("���٥�ȣ�");

	CreateTextureSP("������", 100, 0, 2000, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");

	CreateColorEXadd("ɫ��", 19000, "#FFFFFF");

	CreateSE("������ɣ�","se���L_��҆��_����03");

	SetVolume("������ɣ�", 2000, 0, NULL);
	OnSE("se���L_��҆��_����01",1000);

	SetBlur("���٥�ȣ�", true, 3, 500, 200, false);
	Zoom("���٥�ȣ�", 500, 2000, 2000, Axl1, false);
	Fade("ɫ��", 500, 1000, Axl1, true);

	LoadImage("����`����", "cg/ef/ef036_�o�Ҥξ���.jpg");
	CreateTextureEXadd("���ե����ȣ�", 10000, -400, 0, "����`����");
	Rotate("���ե����ȣ�", 0, @0, @0, 180, null, true);
	CreateTextureEXadd("���ե����ȣ�", 10000, -200, 0, "����`����");
	Rotate("���ե����ȣ�", 0, @0, @0, 45, null, true);
	CreateTextureEXadd("���ե����ȣ�", 10000, 0, 0, "����`����");
	Rotate("���ե����ȣ�", 0, @0, @0, 210, null, true);
	CreateTextureEXadd("���ե����ȣ�", 10000, 200, 0, "����`����");
	Rotate("���ե����ȣ�", 0, @0, @0, 95, null, true);
	CreateTextureEXadd("���ե����ȣ�", 10000, 400, 0, "����`����");
	Rotate("���ե����ȣ�", 0, @0, @0, 180, null, true);
	Zoom("���ե�����*", 0, 0, 0, Axl2, false);
	CreateTextureEXadd("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureEXadd("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef015_���ú�܉��.jpg");
	Move("���ե����ȣ�", 0, @0, @-10, null, true);
	Move("���ե����ȣ�", 0, @0, @10, null, true);
	Move("���ե����ȣ�", 0, @0, @0, null, true);
	Move("���ե����ȣ�", 0, @0, @12, null, true);
	Move("���ե����ȣ�", 0, @0, @-7, null, true);

	Zoom("���ե�����*", 0, 0, 0, Axl2, false);
	Zoom("���ե����ȣ�", 0, 1000, 0, Axl2, false);
	Zoom("���ե����ȣ�", 0, 1000, 0, Axl2, false);

	Delete("���٥�ȣ�");

	//�������ԥåȣ��ԙC������ǣ�
	CP_AltChange2(3500,-60,null,false);
	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(3500,600,null,false);
	//�������ԥåȣ��ԙC��󣺸߶ȣ�
	CP_HighChange(3500,300,null,false);

	Zoom("������", 3000, 3000, 3000, AxlAuto, false);
	Fade("ɫ��", 300, 0, null, true);

	CreateColorEXadd("ɫ��", 12000, "#FFFFFF");
	SoundPlay("������ɣ�",0,1000,false);

	DrawTransition("ɫ��", 1500, 0, 1000, 300, null, "cg/data/circle_02_00_0.png", false);
	Fade("ɫ��", 2000, 1000, Axl2, false);

	Rotate("���ե����ȣ�", 2000, @0, @0, @-3600, Axl1, false);
	Rotate("���ե����ȣ�", 2000, @0, @0, @3600, Axl1, false);
	Rotate("���ե����ȣ�", 2000, @0, @0, @-3600, Axl1, false);
	Rotate("���ե����ȣ�", 2000, @0, @0, @3600, Axl1, false);
	Rotate("���ե����ȣ�", 2000, @0, @0, @-3600, Axl1, false);

	Zoom("���ե����ȣ�", 2000, 30000, 20000, Axl2, false);
	Zoom("���ե����ȣ�", 2000, 30000, 20000, Axl2, false);
	Zoom("���ե����ȣ�", 2000, 30000, 20000, Axl2, false);
	Zoom("���ե����ȣ�", 2000, 30000, 20000, Axl2, false);
	Zoom("���ե����ȣ�", 2000, 30000, 20000, Axl2, false);

	Zoom("���ե����ȣ�", 2000, 10000, 50000, Axl2, false);
	Zoom("���ե����ȣ�", 2000, 10000, 50000, Axl2, false);
	Fade("���ե�����*", 1000, 1000, null, 500);

	Move("���ե�����*", 1500, @0, @-200, null, false);
	Move("������", 1500, @0, @-600, AxlAuto, true);

	Delete("���ե�����*");
	Delete("����`����");
	Delete("������");

//���·���ֱ�M�����椬�Ȥ롣
	Zoom("������", 0, 3000, 3000, Dxl2, true);
	MoveSSP1("@������",100000,0,3,0,3,300,null);//��������

	//�����ȥ
	//CloudZoomFade(500,false);

//���������ر�
	OnSE("se���L_����_��ͻ�M07",1000);

	Fade("ɫ��", 500, 0, null, false);
	Move("������", 700, @0, 800, Dxl2, false);
	Wait(700);

	MoveFFP1("@������",5000);//�̶���������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������̣����Ϊ�ܿ�������
������ֱ�����¡�
���ٶȼ������ӣ�����ӽ��ر�

�����շ��м����Ĺ��ɣ�
������߽Ƕ�����ת�ơ�
��
��Ȼ��������������еĻ��ͻᱻץס��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	//�������ԥåȣ��ԙC��󣺳�����
	MyTr_Count(1000,412);

	//CreateSE("������ɣ�","se����_냇��_����01_L");
	//SoundPlay("������ɣ�",0,1000,true);
	OnSE("se����_��x_�k��04",1000);

	CreateColorEXadd("ɫ��", 10000, "#FFFFFF");
	Fade("ɫ��", 1000, 100, null, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md05/007vs0150a01">
���ۼ�������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/007vs0160a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_��x_����ӥƥ������������",1000);

	CreateColorEX("ɫ��", 20000, "#000000");
	Zoom("������", 300, 4000, 4000, Axl1, false);
	Fade("ɫ��", 300, 1000, null, true);

	//�����ȥ
	CloudZoomFade(0,false);
	MoveFFP1stop();
	MoveSSP1stop();

	//�拾���ԥå���ȥ
		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

	CreateTextureEXadd("���ե����ȣ�", 20000, 0, 0, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("���ե����ȣ�", 0, 2000, 2000, Axl1, true);

	Rotate("���ե����ȣ�", 600, @0, @0, 36000, null, false);
	Fade("���ե����ȣ�", 300, 1000, null, true);
	Fade("���ե����ȣ�", 300, 0, null, true);

	SetVolume("������ɣ�", 3000, 0, NULL);

//���}�u�ι���
	CreateColorEXadd("ɫ��", 19000, "#FFFFFF");
	CreateTextureEX("������", 100, 0, -100, "cg/bg/bg106_��ʿɽ�h��b_00.jpg");
	Zoom("������", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("������", 17000, 0, Middle, "���إ���`����");
	CreateTextureEX("������", 17000, 0, Middle, "���إ���`����");

	CreateTextureEX("���C��", 17000, 122, -300, "����`����");
	CreateTextureEX("���C��", 17000, 122, -300, "cg/st/3d����ʽ�AȾ_�T��_�k��.png");
	CreateTextureEX("���C��", 17000, -150, -200, "����`����");
	CreateTextureEX("���C��", 17000, -150, -200, "cg/st/3d����ʽ�AȾ_�T��_�k��.png");
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	Rotate("���C*", 0, @0, @0, @25, null, true);


	CreateSCR1("@������","@������",1000,-4000,@0);
	Fade("������", 0, 1000, null, false);

	Fade("���C��", 0, 1000, null, false);
	Fade("���C��", 0, 1000, null, true);
	FadeF2("���C��",0,1000,10000,-50,-80,Dxl1,false);
	FadeF3("���C��",0,1000,10000,-100,-50,Dxl1,false);
	FadeF2("���C��",0,0,10000,-50,-80,Dxl1,false);
	FadeF3("���C��",0,0,10000,-100,-50,Dxl1,false);

	CreateTextureEXadd("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef047_�k��h�������.jpg");
	SetVertex("���ե����ȣ�", 100, 100);
	Zoom("���ե����ȣ�", 0, 1200, 1200, Axl1, false);

	OnSE("se����_�z_���ͥ륮�`���01",1000);

	CreateSE("������ɣ�","se���L_����_������02_L");
	SoundPlay("������ɣ�",0,1000,true);

	Fade("ɫ��", 300, 0, null, true);

	Fade("���C��", 2000, 1000, null, false);
	Fade("���C��", 2000, 1000, null, true);
	Fade("���C��", 0, 0, null, false);
	Fade("���C��", 0, 0, null, false);

	OnSE("se���L_��҆��_����03",1000);

	Move("���C��", 1200, @-100, @-300, Dxl1, false);
	Move("���C��", 1200, @-300, @-1000, Dxl1, false);
	Shake("���C*", 5000, 0, 40, 0, 0, 1000, Dxl1, false);
	Shake("������", 5000, 20, 20, 0, 0, 800, Dxl1, false);
	Shake("������", 5000, 20, 20, 0, 0, 800, Dxl1, false);

	Fade("ɫ��", 1000, 1000, null, false);
	DrawTransition("ɫ��", 1000, 0, 1000, 100, null, "cg/data/circle_12_01_1.png", true);

		SCR1stop();
		CreateTextureSP("������", 17000, 0, 0, "cg/bg/bg001_��a_02.jpg");
		Zoom("������", 0, 1500, 1500, Dxl2, true);

	Shake("������", 10000, 50, 50, 0, 0, 500, null, false);
	Shake("���ե����ȣ�", 10000, 30, 30, 0, 0, 500, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, false);
	Zoom("���ե����ȣ�", 1500, 3000, 3000, Axl1, false);

	Fade("ɫ��", 500, 200, null, false);
	DrawTransition("ɫ��", 500, 1000, 500, 100, null, "cg/data/circle_09_00_0.png", true);
	Fade("ɫ��", 500, 1000, null, false);
	DrawTransition("ɫ��", 500, 500, 1000, 100, null, "cg/data/circle_09_00_0.png", true);

	SetVolume("������ɣ�", 2000, 0, NULL);

		Delete("���C*");
		Delete("���ե�����*");
		Move("������", 0, -4000, @0, Axl1, true);
		Move("������", 0, -4000, @0, Axl1, true);
		Fade("����*", 0, 0, null, true);
		Fade("������", 0, 1000, null, true);
		Delete("������");
		CreateTextureSP("�ԙC��", 18000, 0, -100, "cg/st/3d������K_�T��_ͨ��.png");
		//Zoom("�ԙC��", 0, 100, 100, Dxl2, true);
		SetBlur("�ԙC��", true, 2, 500, 50, false);
	
		//���å��O��
		LockVideo(true);
		CreateColorEXadd("ɫ��", 19000, "#FFFFFF");

		CreateTextureEXadd("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 4000, 4000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, -70, null, true);
		CreateTextureEXadd("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 3000, 3000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, -30, null, true);
		CreateTextureEXadd("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, 180, 0, null, true);

		CreateTextureEXadd("���ե����ȣ�", 17000, 0, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, @45, null, true);
		CreateTextureEXadd("���ե����ȣ�", 17000, 0, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 3000, 3000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, @85, null, true);
		CreateTextureEXadd("���ե����ȣ�", 17000, 0, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 4000, 4000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, @125, null, true);
		//���å��O��
		LockVideo(false);

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",500,600,true);

//���ٶȼ��ϕN����˥��饤�ɤȤ������ʙC�ӤǱܤ�
	CreateSCR1("@������","@������",1000,0,@0);
	FadeF("�ԙC��",1000,1000,1000,-100,100,Dxl1,false);
	Fade("ɫ��", 1000, 0, null, true);

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC��", 500, 700, 700, Dxl2, false);
		BezierMove("�ԙC��", 500, (@0,@0){@100,@200}{@200,@100}(@-200,@-100), AxlDxl, false);
		Zoom("���ե����ȣ�", 750, 5000, 5000, Axl2, false);
		Shake("���ե����ȣ�", 750, 100, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 300, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 100, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC��", 500, 400, 400, Dxl2, false);
		BezierMove("�ԙC��", 500, (@0,@0){@-100,@-200}{@0,@-100}(@200,@100), AxlDxl, false);
		Zoom("���ե����ȣ�", 750, 4000, 4000, Axl2, false);
		Shake("���ե����ȣ�", 750, 50, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 400, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 200, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC��", 500, 200, 200, Dxl2, false);
		BezierMove("�ԙC��", 500, (@0,@0){@300,@-200}{@100,@-100}(@-200,@-100), AxlDxl, false);
		Zoom("���ե����ȣ�", 750, 3000, 3000, Axl2, false);
		Shake("���ե����ȣ�", 750, 20, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 500, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 100, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);

		DrawTransition("ɫ��", 2000, 0, 500, 100, null, "cg/data/circle_09_00_0.png", false);
		Fade("ɫ��", 2000, 500, null, false);
		FadeF("�ԙC��",1000,1000,2000,300,100,null, false);
		Zoom("�ԙC��", 1000, 150, 150, null, true);

		//�_ʼ
		FadeDelete("ɫ��", 500, false);
		//Zoom("�ԙC��", 2000, 3000, 3000, null, false);
		//BezierMove("�ԙC��", 500, (@0,@0){@200,@-200}{@-500,@800}(@-3000,@-400), AxlAuto, false);

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC��", 500, 700, 700, null, false);
		BezierMove("�ԙC��", 500, (@0,@0){@200,@-200}{@-500,@500}(@-300,@0), AxlDxl, false);
		Zoom("���ե����ȣ�", 750, 3000, 3000, Axl2, false);
		Shake("���ե����ȣ�", 750, 20, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 500, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 100, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC��", 500, 1400, 1400, null, false);
		BezierMove("�ԙC��", 500, (@0,@0){@200,@200}{@400,@300}(@600,@-200), AxlAuto, false);
		Zoom("���ե����ȣ�", 750, 4000, 4000, Axl2, false);
		Shake("���ե����ȣ�", 750, 30, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 500, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 100, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC��", 500, 3000, 3000, null, false);
		BezierMove("�ԙC��", 500, (@0,@0){@200,@200}{@-500,@500}(@-3000,@0), AxlAuto, false);
		Zoom("���ե����ȣ�", 750, 6000, 6000, Axl2, false);
		Shake("���ե����ȣ�", 750, 50, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 500, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 1000, 1000, null, true);

//���ϕN
	SCR1stop();
	Delete("������");
	Delete("������");
	Delete("�ԙC��");
	Delete("���ե�����*");
	CreateTextureSP("���ե����ȣ�", 18999, 0, 0, "cg/ef/ef002_�����Ƅ�.jpg");
	Move("������", 0, @-200, @0, Dxl1, true);

	//�拾���ԥå�������
		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();
		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,-90,null,true);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();
		//�������ԥåȣ��ԙC������ǣ�
		CP_AltChange2(1200,0,null,false);
		//�������ԥåȣ��ԙC����ٶȣ�
		CP_SpeedChange(1200,800,null,true);
		//�������ԥåȣ��ԙC��󣺸߶ȣ�
		CP_HighChange(1200,1500,null,true);

	SetVolume("������ɣ�", 3000, 0, NULL);

	CreateSE("������ɣ�","se����_��x_����ӥƥ���������ʂ�");
	SoundPlay("������ɣ�",0,1000,true);
	Fade("ɫ��", 100, 0, null, true);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(300,0,null,false);

	SetBlur("������", true, 2, 500, 50, false);
	Fade("���ե����ȣ�", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Fade("������", 300, 1000, null, false);
	Move("������", 500, @200, @0, Dxl1, true);
	SetBlur("������", false, 2, 500, 50, true);

	//�������
	CloudZoomStart(700,1000,1000,500,1000);

	Move("������", 1000, @0, -50, AxlDxl, false);
	Zoom("������", 1000, 1000, 1000, Dxl1, 700);

	Move("������", 300, @0, 0, Dxl1, false);
	Fade("������", 300, 1000, null, true);
	MoveFFP1("@������",5000);//�̶���������

	SetVolume("������ɣ�", 2000, 0, NULL);

	Delete("���ե����ȣ�");

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md05/007vs0170a00">
�����ˡ�����
����Ҫ�жϿ��ƣ�<RUBY text="��������">��������</RUBY>����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/007vs0180a01">
����ѷ�����Ǻŵ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��ȡ��Ұ̫��֮�󣬴����ĸ������ܶ���
��Ծ��������
���ر��Ǵ�ǰֻ��С����֮һ������������
�������ɳ�������

����ǰ����������پ�������޶�ʹ��������
����������ڸ��ַ�������Ӧ�á�
���������ǺŵĿ��ұ����������о�������֮һ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md05/007vs0190a00">
�������Ļ�����
������Щ�һ�ս�������䡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/007vs0200a01">
��������Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("ɫ��", 20000, "#000000");
	Fade("ɫ��", 300, 1000, null, true);

	//�����ȥ
	CloudZoomFade(0,true);

	//�拾���ԥå���ȥ
		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

//���y���B꠹���
	CreateTextureEX("������", 17000, -4000, 0, "���إ���`����");
	CreateTextureEX("������", 17000, -4000, 0, "���إ���`����");

	LoadImage("����`����", "cg/st/3d����ʽ�AȾ_�T��_�k��.png");
	SetAlias("����`����", "����`����");

	CreateTextureSP("���C��", 17100, 600, 100, "����`����");
	Zoom("���C��", 0, 200, 200, Dxl2, true);
	CreateTextureSP("���C��", 17100, 640, -670, "����`����");
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	Rotate("���C��", 0, @0, @0, -90, Axl1, true);
	CreateTextureSP("���C��", 17100, 500, 400, "����`����");
	Zoom("���C��", 0, 700, 700, Dxl2, true);
	CreateTextureSP("���C��", 17100, 250, 600, "����`����");
	Zoom("���C��", 0, 1000, 1000, Dxl2, true);

	CreateColorEXadd("ɫ��", 19999, "#FFFFFF");

	CreateTextureEX("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef047_�k��h�������.jpg");
	Rotate("���ե����ȣ�", 0, 180, @0, @0, null, true);

	CreateTextureEX("�ԙC��", 17100, -500, -500, "cg/st/3d������K_�T��_ͨ��5.png");
	Rotate("�ԙC��", 0, @0, @0, 180, null, true);
	SetBlur("�ԙC��", true, 1, 500, 50, false);
	CreateTextureEX("�ԙC��", 17100, -500, -500, "cg/st/3d������K_�T��_ͨ��4.png");
	Rotate("�ԙC��", 0, @0, @0, 180, null, true);
	SetBlur("�ԙC��", true, 2, 500, 50, false);
	CreateTextureEX("�ԙC��", 17100, -500, -500, "cg/st/3d������K_�T��_ͨ��2.png");
	SetBlur("�ԙC��", true, 2, 500, 50, false);
	Rotate("�ԙC��", 0, 180, @0, @0, null, true);

	Move("�ԙC*", 0, @-100, @0, null, true);

	Shake("�ԙC*", 300000, 0, 2, 0, 0, 800, null, false);

		CreateColorEXadd("ɫ��", 19000, "#FFFFFF");

		CreateTextureEXadd("���ե����ȣ�", 17000, -300, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 3000, 3000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, -250, null, true);
		CreateTextureEXadd("���ե����ȣ�", 18000, -300, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 4000, 4000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, -230, null, true);
		CreateTextureEXadd("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, -200, null, true);
		CreateTextureEXadd("���ե����ȣ�", 17000, 0, -100, "cg/ef/ef038_�������.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @0, -180, null, true);


	OnSE("se����_�z_���ͥ륮�`���01",1000);
	CreateSE("������ɣ�","se���L_����_������02_L");
	SoundPlay("������ɣ�",0,1000,true);

	CreateSCR1("@������","@������",1000,0,@0);

	Fade("������", 0, 1000, null, true);
	Fade("ɫ��", 300, 0, null, false);

	//BezierMove("���C��", 500, (@0,@0){@-400,@-300}{@-500,@-400}(@-400,@-450), null, false);
	BezierMove("���C��", 2000, (@0,@0){@-400,@-500}{@-500,@-1000}(@-400,@-850), null, false);
	Rotate("���C��", 2000, @0, @0, -100, Axl1, 500);
	BezierMove("���C��", 2000, (@0,@0){@-400,@-200}{@-500,@-400}(@-400,@-300), null, false);
	Rotate("���C��", 2000, @0, @0, -90, Axl1, 500);
	BezierMove("���C��", 2000, (@0,@0){@-400,@-600}{@-500,@-1100}(@-400,@-900), null, false);
	Rotate("���C��", 2000, @0, @0, -110, Axl1, 500);


	OnSE("se���L_��҆��_����03",600);

	Move("���C��", 500, @-320, @320, Dxl1, false);
	Shake("���C��", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("ɫ��", 100, 300, null, true);
	Fade("ɫ��", 500, 0, null, 400);
	Move("���C��", 5000, @-640, @-50, Axl1, false);
	Rotate("���C��", 5000, @0, @0, -180, null, false);
	Fade("ɫ��", 300, 0, null, false);

	WaitAction("������", null);

	OnSE("se���L_��҆��_����03",700);

	Move("���C��", 500, @-100, @50, Dxl1, false);
	Shake("���C��", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("ɫ��", 100, 500, null, true);
	Fade("ɫ��", 500, 0, null, 150);
	Move("���C��", 5000, @-640, @-50, Axl1, false);
	Rotate("���C��", 5000, @0, @0, -180, null, false);

	OnSE("se���L_��҆��_����03",800);

	Move("���C��", 500, @-100, @50, Dxl1, false);
	Shake("���C��", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("ɫ��", 100, 700, null, true);
	Fade("ɫ��", 500, 0, null, 150);
	Move("���C��", 5000, @-640, @-50, Axl1, false);
	Rotate("���C��", 5000, @0, @0, -180, null, false);

	OnSE("se���L_��҆��_����03",900);

	Move("���C��", 500, @-400, @200, Dxl1, false);
	Shake("���C��", 500, 0, 100, 0, 0, 500, Dxl1, false);
	Fade("ɫ��", 300, 1000, null, true);

	SCR1stop();
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Zoom("���ե����ȣ�", 0, 1200, 1200, null, true);

	Zoom("���ե����ȣ�", 1000, 2000, 2000, Axl1, false);
	Shake("���ե����ȣ�", 1000, 0, 30, 0, 0, 800, null, false);
	Fade("ɫ��", 500, 0, null, true);
	Fade("ɫ��", 500, 1000, null, true);

	SetVolume("������ɣ�", 2000, 0, NULL);

		Delete("���C*");
		Delete("���ե����ȣ�");
		Move("������", 0, 0, @0, Axl1, true);
		Move("������", 0, 0, @0, Axl1, true);
		CreateSCR1("@������","@������",1000,-4000,@0);
		Fade("�ԙC��", 0, 1000, null, true);


//���رܻرܻر�
//�������w�ФʤΤǺ�����ѧ�Ϥ⤦�oҕ��
	BezierMove("�ԙC*", 500, (@0,@0){@20,@-20}{@20,@-40}(@60,@60), Dxl1, false);
	Zoom("�ԙC*", 500, 700, 700, Dxl1, false);
	Fade("ɫ��", 500, 0, null, true);
//	WaitKey();

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC*", 500, 1000, 1000, Dxl2, false);
		BezierMove("�ԙC*", 500, (@0,@0){@500,@-200}{@0,@-400}(@200,@100), Dxl1, false);
		Move("���ե����ȣ�", 750, @-400, @0, Axl1, false);
		Zoom("���ե����ȣ�", 750, 4000, 4000, Axl2, false);
		Shake("���ե����ȣ�", 750, 100, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 300, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 100, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);

//	WaitKey();
		Fade("�ԙC��", 100, 0, null, false);
		Fade("�ԙC��", 100, 1000, null, false);

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC*", 500, 400, 400, Dxl1, false);
		BezierMove("�ԙC*", 500, (@0,@0){@-500,@60}{@-100,@60}(@250,@40), Axl1, false);
		Move("���ե����ȣ�", 750, @-400, @0, Axl1, false);
		Zoom("���ե����ȣ�", 750, 5000, 5000, Axl2, false);
		Shake("���ե����ȣ�", 750, 50, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 400, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 200, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);

//	WaitKey();
		Fade("�ԙC��", 100, 0, null, false);
		Fade("�ԙC��", 100, 1000, null, false);

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC*", 500, 200, 200, Dxl1, false);
		BezierMove("�ԙC*", 500, (@0,@0){@-200,@-200}{@-300,@-100}(@200,@-20), Dxl2, false);
		Move("���ե����ȣ�", 750, @-400, @0, Axl1, false);
		Zoom("���ե����ȣ�", 750, 3000, 3000, Axl2, false);
		Shake("���ե����ȣ�", 750, 20, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 500, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 100, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);

//	WaitKey();

		OnSE("se���L_��҆��_����01",1000);
		Zoom("�ԙC*", 500, 500, 500, Dxl1, false);
		BezierMove("�ԙC*", 500, (@0,@0){@100,@300}{@300,@100}(@600,@-100), Axl1, false);
		Move("���ե����ȣ�", 750, @-400, @0, Axl1, false);
		Zoom("���ե����ȣ�", 750, 2000, 2000, Axl2, false);
		Shake("���ե����ȣ�", 750, 100, 0, 0, 0, 800, Dxl2, false);
		Fade("ɫ��", 500, 300, null, false);
		Fade("���ե����ȣ�", 500, 1000, null, true);
		Fade("ɫ��", 250, 0, null, false);
		Fade("���ե����ȣ�", 250, 0, null, false);


		OnSE("se���L_��҆��_����01",1000);
		Fade("ɫ��", 100, 1000, null, true);

			//�������ԥåȣ��ԙC��󣺻�ܞ�S��
			CP_RollBarMove2(0,-90,null,true);

			SCR1stop();
			Delete("�ԙC*");
			Delete("���ե�����*");
			Fade("������", 0, 0, null, true);
			Fade("������", 0, 0, null, true);

			CreateTextureSP("������", 300, 0, 0, "cg/bg/resize/bg106_��ʿɽ�h��b_00l.jpg");
			CreateSurfaceEX("�}Suf",300,2000,"������");
			Rotate("�}Suf", 0, @0, @0, 90, null, true);
			Fade("�}Suf", 0, 1000, null, true);

			//�拾���ԥå�������
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

				//�������
				CloudZoomStart(700,1000,1000,500,1000);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(1000,0,null,false);

	Fade("ɫ��", 1000, 0, null, false);
	Rotate("�}Suf", 1000, @0, @0, 0, Dxl1, false);
	Move("������", 800, @-512, @100, Dxl1, true);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();

	//�̶���������
	MoveFFP1("@������",5000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ե��˵�ѹ����������
��Ҫ��Խ��ʶ���ٶȺ��������Կ���

�������η�����Ҳ������������������
��������˵����С��ţ�����������������ջ�������ܣ�
�����ظ����������ˡ�

��Ȼ������
��
����ʹ�����䣬�ָ����ͻ����������

��Ҫ˵��Ӯ�����������ϵ����⻹�����Ժ��ӡ�
������ǰ�ͺ�̣����׺�ʱ���Ǿ�ͷ��

��������;�ͻ����ߡ�

�������Χ���︻ʿɽ�����������£���Ȼ����
ȴ���ǲ����ܡ�
�������������²ߡ�������ֻ�ᵼ��
�ڡ��񡱺͸������Ӽл������������

��һ�����ܰ����ӴӸ�ʿɽ�����ķ�����
��
�������������ǰ����ѶԲߡ�

�������Ǿ������ô����
�����������õо�������Ը���ƶ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_���å��ԥå�_����`��",1000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/md05/007vs0210a01">
����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/007vs0220a00">
�������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������ʾ��Σ�գ����ǶԲ�֮�����ҷ��¡�
���Ϸ��ƺ�������б�ռ������ء�

���������ص��ġ�
�������Ѿ��������������м����Ĵ�����˵����Ϊ
<RUBY text="��������">�߶�����</RUBY>����ʿս��һ��ԭ��
��Ȼ������ʵ��

��С��һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
	CreateTextureSP("������", 17100, 0, 0, "cg/bg/bg001_��a_02.jpg");
	CreateTextureSP("���C��", 17100, 100, -800, "cg/st/3d�˄���_�T��_ͨ��.png");
	Rotate("���C��", 0, @0, 180, -90, null, true);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("���C��", 100, @-200, @2000, null, true);

	//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
	CP_RollBar_ADelete();
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(0,180,null,true);

//�����꤮��ر�
	CreateColorEXadd("ɫ��", 19000, "#FFFFFF");
	CreateTextureEX("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef008_��������܉��.jpg");
	OnSE("se���L_����_�����02",1000);

	MoveFFP1stop();

	Fade("���ե����ȣ�", 0, 1000, null, false);
	Move("���ե����ȣ�", 300, @-200, @0, Axl1, false);
	Zoom("���ե����ȣ�", 300, 10000, 10000, Dxl1, false);
	Fade("ɫ��", 300, 1000, null, true);

	Delete("������");
	Delete("���C��");
	Rotate("�}Suf", 0, @0, @0, @-180, null, false);
	Fade("���ե����ȣ�", 0, 0, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(1500,0,null,false);

	Rotate("�}Suf", 1500, @0, @0, @180, Dxl1, false);
	Move("������", 1500, @-300, @-50, Dxl1, false);
	Fade("ɫ��", 1500, 0, null, false);

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md05/007vs0230a00">
��������ô�ˣ���
{
	WaitAction("ɫ��", null);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	CP_RollBarMoveA();
	MoveFFP1("@������",5000);//�̶���������
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ÿ졭��?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/md05/007vs0240a01">
��С�ģ�
����Щ�һ�������˵�<RUBY text="��������">ʵ���ȼ�</RUBY>��һ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���B�A����
	CreateTextureSP("������", 17001, 0, 0, "cg/bg/bg001_��a_02.jpg");

	CreateTextureEX("������", 17001, -4000, Middle, "���إ���`����");
	CreateTextureEX("������", 17001, -4000, Middle, "���إ���`����");

	LoadImage("����`����", "cg/st/3d�˄���_�T��_ͨ��.png");
	SetAlias("����`����", "����`����");
	CreateTextureSP("���C��", 17150, 300, -800, "����`����");
	Rotate("���C��", 0, @0, 180, -70, null, true);
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	CreateTextureSP("���C��", 17099, -300, -800, "����`����");
	Rotate("���C��", 0, @0, 180, -150, null, true);
	Zoom("���C��", 0, 600, 600, Dxl2, true);
	CreateTextureSP("���C��", 17200, 100, -800, "����`����");
	Rotate("���C��", 0, @0, 180, -90, null, true);

	//���̶��������ֹࣺͣ
	MoveFFP1stop();
	//�����ȥ
	CloudZoomFade(0,true);

	//�拾���ԥå���ȥ
		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("���C��", 100, @-400, @2000, null, 50);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("���C��", 100, @200, @2000, null, 50);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("���C��", 100, @-200, @2000, null, true);


//���ɤ��ˤ��ܤ��뤬
		CreateColorEXadd("ɫ��", 19999, "#FFFFFF");
		CreateTextureEX("�ԙC��", 17120, 0, 0, "cg/st/3d������K_�T��_ͨ��.png");
		Zoom("�ԙC��", 0, 900, 900, Dxl2, true);
		SetBlur("�ԙC��", true, 1, 500, 50, false);
		CreateTextureEX("�ԙC��", 17110, 0, -200, "cg/st/3d������K_�T��_ͨ��5.png");
		Rotate("�ԙC��", 0, @0, @0, @0, null, true);
		Zoom("�ԙC��", 0, 700, 700, Dxl2, true);
		SetBlur("�ԙC��", true, 1, 500, 50, false);
		CreateTextureEX("�ԙC��", 17150, 0, -200, "cg/st/3d������K_�T��_ͨ��4.png");
		Rotate("�ԙC��", 0, @0, @0, @0, null, true);
		Zoom("�ԙC��", 0, 600, 600, Dxl2, true);
		SetBlur("�ԙC��", true, 1, 500, 50, false);

		CreateTextureEXadd("���ե����ȣ�", 17120, 0, 0, "cg/ef/ef008_��������܉��.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
		CreateTextureEXadd("���ե����ȣ�", 17100, 0, 0, "cg/ef/ef011_����б��܉��.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
		CreateTextureEXadd("���ե����ȣ�", 17150, 0, 0, "cg/ef/ef010_����б��܉��.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);

		CreateTextureSP("������", 500, 0, Middle, "cg/bg/resize/bg002_��a_02.jpg");
		CreateSurfaceEX("�}Suf2",500,2000,"������");

		CreateTextureEX("���ե�������", 19100, 0, 0, "cg/ef/ef045_���ѩ`��.jpg");
		CreateTextureEX("���ե�������", 19100, 0, 0, "cg/ef/ef045_���ѩ`��.jpg");
		Zoom("���ե�����*", 0, 1200, 1200, Dxl2, true);
		Rotate("���ե�������", 0, @0, @180, @0, null, true);

		Zoom("���C��", 0, 1000, 1000, Dxl2, true);
		Move("���C��", 0, 0, -800, Axl1, true);
		Zoom("���C��", 0, 500, 500, Dxl2, true);
		Move("���C��", 0, -400, -800, Axl1, true);
		Move("���C��", 0, 400, -800, Axl1, true);


	CreateSE("������ɣ�","se���L_����_������02_L");
	MusicStart("������ɣ�",0,1000,0,2000,null,true);

	//���S��������S����
	CreateSCR1("@������","@������",1000,0,@0);

	Fade("�ԙC��", 0, 1000, null, true);
	Move("�ԙC��", 500, @-200, @-150, Dxl1, true);
	MoveFTP1("@�ԙC*",5000,3,5);
	Wait(100);

	OnSE("se���L_����_��ͻ�M08",1000);

	Fade("�ԙC��", 300, 0, null, false);
	Fade("�ԙC��", 300, 1000, null, false);
	Zoom("�ԙC��", 300, 500, 500, Dxl3, false);
	Zoom("�ԙC��", 300, 500, 500, Dxl3, false);
	Wait(100);
	//Shake("�ԙC*", 300, 0, 10, 0, 0, 500, Dxl1, false);
	Move("���C��", 200, @-400, @2000, null, false);
	Fade("ɫ��", 50, 300, null, false);
	Fade("���ե����ȣ�", 50, 1000, null, true);
	Fade("ɫ��", 50, 0, null, false);
	Fade("���ե����ȣ�", 50, 0, null, false);
	//WaitKey();

	OnSE("se���L_����_��ͻ�M08",1000);

	Fade("�ԙC��", 300, 0, null, false);
	Fade("�ԙC��", 300, 1000, null, false);
	Zoom("�ԙC��", 300, 1000, 1000, Dxl3, false);
	Zoom("�ԙC��", 300, 1000, 1000, Dxl3, false);
	Wait(100);
	//Shake("�ԙC*", 300, 0, 10, 0, 0, 500, Dxl1, false);
	Move("���C��", 300, @1000, @1500, null, false);
	Fade("ɫ��", 50, 400, null, false);
	Fade("���ե����ȣ�", 50, 1000, null, true);
	Fade("ɫ��", 50, 0, null, false);
	Fade("���ե����ȣ�", 50, 0, null, false);
	//WaitKey();

	OnSE("se���L_����_��ͻ�M08",1000);

	Zoom("�ԙC��", 0, 1000, 1000, Dxl2, true);
	Fade("�ԙC��", 300, 0, null, false);
	Fade("�ԙC��", 300, 1000, null, false);
	Zoom("�ԙC��", 300, 700, 700, Dxl3, false);
	Zoom("�ԙC��", 300, 700, 700, Dxl3, false);
	Wait(100);
	Shake("�ԙC*", 300, 0, 10, 0, 0, 500, Dxl1, false);
	Move("���C��", 300, @-1600, @2000, null, false);
	Fade("���ե����ȣ�", 50, 1000, null, false);
	//WaitKey();
	Fade("ɫ��", 300, 1000, Axl1, true);


//��һ�k�X��ʳ�餦
	SetVolume("@mbgm*", 2000, 0, NULL);

	OnSE("se���L_����_�z��������",1000);
	OnSE("se���L_����_��ꪏ���02",1000);
	CreateSE("������ɣ�","se���L_����_�z_�ٶ�ʧ��01");
	SoundPlay("������ɣ�",0,1000,false);

	Fade("���ե�������", 0, 1000, null, true);
	Shake("���ե�����*", 10000, 0, 20, 0, 0, 800, null, false);

	Zoom("���ե�����*", 600, 2000, 2000, null, false);
	Fade("ɫ��", 100, 0, null, true);
	Fade("ɫ��", 300, 1000, null, false);
	Fade("���ե�������", 300, 1000, null, true);

	Delete("���ե�����*");
	Delete("���ե�����*");
	Delete("���C*");
	Delete("�ԙC*");
	MoveFTP1stop();
	SCR1stop();
	Delete("������");
	Delete("������");
	Delete("������");

	CreateTextureSPadd("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef045_���ѩ`��.jpg");

			//�拾���ԥå�������
				//�������ԥåȣ�˲�g��ʾ��
				Cockpit_AllFade2();
				//�������ԥåȣ��ԙC�����ӣ�
				//FrameShake();
				//�������ԥåȣ��ԙC��󣺻�ܞ�S��
				CP_RollBarMove2(0,40,null,false);
				//�������ԥåȣ��ԙC��������Ԅӻ���
				//CP_AltChangeA();
				//�������ԥåȣ��ԙC����ٶ��Ԅӻ���
				//CP_SpeedChangeA();
				//�������ԥåȣ��ԙC��󣺸߶��Ԅӻ���
				//CP_HighChangeA();
				//�������ԥåȣ��ԙC���װ�ף�
				MyLife_Count(500,716);
				//�������
				CloudZoomStart(700,1000,1000,500,1000);

	Rotate("�}Suf", 0, @0, @0, @-45, null, true);
	Move("������", 0, 0, -30, Axl1, true);

	OnSE("se���L_����_��ͻ�M04",1000);

	Shake("������", 1000, 0, 20, 0, 0, 600, Dxl1, false);
	Move("������", 500, @-924, @0, Dxl1, false);
	Fade("ɫ��", 300, 0, null, false);
	Shake("���ե����ȣ�", 1000, 0, 20, 0, 0, 800, null, false);
	Zoom("���ե����ȣ�", 300, 2000, 2000, null, false);
	FadeDelete("���ե����ȣ�", 500, true);

	SetVolume("������ɣ�", 1000, 0, NULL);
	SetVolume("������ɣ�", 1000, 0, NULL);

	//�����ȥ
	CloudZoomFade(500,false);
	//�������ԥåȣ��ԙC����ٶ�ֹͣ��
	CP_SpeedChange2(1000,0,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(1000,0,AxlDxl,false);
	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(1000,-130,AxlDxl,false);

	Move("������", 1000, @-100, @0, Axl1, false);
	Fade("�}Suf2", 1000, 1000, Axl2, false);
	Move("������", 20000, @-300, @0, null, false);

	SetFwC("cg/fw/fw����_��ʹ.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md05/007vs0250a00">
���ҡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/007vs0260a01">
�������е���������΢����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������?!

�����ڵĴ�������������Ѿ���ȫ���������ߵĳ�ʶ��
�����ɷ��������ҷ���������⣬������ˣ�
׷���ĵ����ٶ�Ҳ̫���쳣��

���⡭�������ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 1000, 0, NULL);

	//�������ԥåȣ��ԙC��󣺷�λ��
	CP_AziChange(1000,-180,Axl1,false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(1000,90,Axl1,false);

	Rotate("�}Suf2", 1000, @0, @0, @-90, null, false);
	Move("������", 1000, @-724, @0, Axl1, false);

	//�������ԥåȣ�������
	//CP_AllDelete();
	//������󡸣ãУ���������Ǥ�ʹ�ä���ΤǷǱ�ʾ�ˉ����

	Cockpit_AllFade0();

	ClearFadeAll(1000, true);
}

..//������ָ��
//�Υե����롡"md05_008vs.nss"

function TekiSet(){
	while($tekimax>$teki){
		$tekiname=String("%s%02d","�j�~",$teki);

		$tekiS=$teki*5;
		$tekiW=$teki*1;

		if($preteki==1){
			$tekixbase=$tekixx;
			$tekiybase=$tekiyy-$tekiW;
		}else if($preteki==2){
			$tekixbase=$tekixx+$tekiS;
			$tekiybase=$tekiyy-$tekiW;
		}else if($preteki==3){
			$tekixbase=$tekixx+$tekiS;
			$tekiybase=$tekiyy;
		}else if($preteki==4){
			$tekixbase=$tekixx+$tekiS;
			$tekiybase=$tekiyy+$tekiW;
		}else if($preteki==5){
			$tekixbase=$tekixx;
			$tekiybase=$tekiyy+$tekiW;
		}else if($preteki==6){
			$tekixbase=$tekixx-$tekiS;
			$tekiybase=$tekiyy+$tekiW;
		}else if($preteki==7){
			$tekixbase=$tekixx-$tekiS;
			$tekiybase=$tekiyy;
		}else if($preteki==8){
			$tekixbase=$tekixx-$tekiS;
			$tekiybase=$tekiyy-$tekiW;
			$preteki=0;
		}
		$tekiybase=$tekiyy;

		if(Random(2)==1){$tekixbase+=Random(20);}
		else{$tekixbase-=Random(20);}
		if(Random(2)==1){$tekiybase+=Random(100);}
		else{$tekiybase-=Random(100);}
		CreateTexture($tekiname, 1000, $tekixbase, $tekiybase, "�j�~����`��");
		SetAlias($tekiname, $tekiname);
		Fade($tekiname, 0, 0, null, true);

		$preteki++;
		$teki++;
	}
	Zoom("�j�~*", 0, 0, 0, Dxl2, true);
}

function TekiGo(){
	$tekixbase=0;
	$tekiybase=0;
	$tekixx=612;
	$tekiyy=400;
	$preteki=1;
	$teki=0;
	while($tekimax>$teki){

		$tekiname=String("%s%02d","@�j�~",$teki);

		if($preteki==1){
			$tekixbase=0;
			$tekiybase-=($tekiyy+$teki);
		}else if($preteki==2){
			$tekixbase=$tekixx+$teki;
			$tekiybase-=($tekiyy+$teki);
		}else if($preteki==3){
			$tekixbase=$tekixx+$teki;
			$tekiybase=0;
		}else if($preteki==4){
			$tekixbase=$tekixx+$teki;
			$tekiybase=$teki;
		}else if($preteki==5){
			$tekixbase=0;
			$tekiybase-=($tekiyy+$teki);
		}else if($preteki==6){
			$tekixbase-=($tekixx+$teki);
			$tekiybase=$teki;
		}else if($preteki==7){
			$tekixbase-=($tekixx+$teki);
			$tekiybase=0;
		}else if($preteki==8){
			$tekixbase-=($tekixx+$teki);
			$tekiybase-=($tekiyy+$teki);
			$preteki=0;
		}

		Move($tekiname, 600000, @$tekixbase, @$tekiybase, null, false);
		//FadeF($tekiname,600000,1000,600000,$tekixbase,$tekiybase,null, false);
		Fade($tekiname, 0, 1000, null, false);
		Zoom($tekiname, 0, 300, 300, null, true);
		Zoom($tekiname, 10000, 500, 500, null, false);

		if($teki<10){
			SetVolume("@������ɣ�", 0, 1000, NULL);
			Request("@������ɣ�", Play);
			//�������ԥåȣ���å�����λ���Ԅ��{����
			//CP_LockOnGet($tekiname,20,26,26,Dxl1,true);
			//FadeF("@CP_LockO*",600000,1000,600000,$tekixbase,$tekiybase,null, false);
		}
		Wait(5);

		$preteki++;
		$teki++;
	}
}
