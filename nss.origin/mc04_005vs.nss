//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_005vs.nss_MAIN
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

	$GameName = "mc04_006.nss";

}

scene mc04_005vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc04_004vs.nss"


//�����g

	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg089_���Bۡ�F�ˤ��g_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm10", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStR(0, true);


	DrawDelete("�ϱ���", 100, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0010a06">
���������˳����˹��ڣ���


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0020a06">
�����ϵ���Ҳ�����ﰡ!!��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0030e173">
�������������ܣ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0040a06">
��Ϯ���ߵ�ս���ء���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0050e173">
��������˵��ֻ��һ�������˽�������
������Ӧ��ֻ�м����˶��ѡ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0060a06">
��ֻ�м����ˣ�Ҳû����ס��
��һ�������������լۡ�����Ǿ�����վ�ڰ�
����ǰ�濴�ź��һ����ֻ�ǿ������ǿ���ȥ
�𣿡�


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0070e173">
���ǡ����ɡ����ǡ���
��������Ӧ��Ҳ��������ڱ�ۡ�ķ��ش�ʩʵ
�����Գ�Ϊ�걸������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0080a06">
������������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/005vs0090b18">
������������


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0100a06">
����ʲô�ˣ�
���ǽ�פ���ĵ�������ͻ���˹�����


{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0110a06">
���������ǣȣѵĲ���ΪʲôҪ�������޴���
Ϯ����
����Щ��Ӧ�û����Щ�취��


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0120a06">
����������<RUBY text="������">������</RUBY>��
������˵���������Ѿ������߼��ļһ���Ϊ��


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0130a06">
���������ӵı�����
������˼�����������֡���
ֻ��Ϊ�Լ�������ȥ���ˣ����ֱ������������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0140a06">
�����ǡ���˭�أ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������������У�����l���z�������

	OnSE("se�ճ�_����_���_��02", 1000);

	StL(1100, @-50, @0, "cg/st/st�����_��У_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @50, @0, DxlAuto, false);
	FadeStL(300, true);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0150e167">
���󡢸󣬸��£�
���н�����!!��


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0160a06">
�������ˣ�
��������ڻ�֦������ǰ����


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0170e167">
��������Ǹ����
����������֦������������

//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0180e167">
����֦���˵�!!��


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/005vs0190b18">
����������


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0200a06">
��̫�����ˣ�����
����������������ô��¶����˳�̬����


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0210a06">
���ѵ������������𣡡�


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0220e167">
���������顭�����飬�ԡ�
���Ǹ�Ұ�ޡ��Ǹ�ħ��Ǹ����µģ�
�Ǹ����ˡ�����

//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0230e167">
�����Ǹ��˴Ӵ�ͷ���֮������Ϊ�Ǹ�����
�����ˡ�����
��Ϊ��Ϊ��Ϊʲô���µ���񣡡�


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0240a06">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����㥭����ͻ���Ĥ�
	DeleteStR(300,true);

	StR(1000, @0, @0,"cg/st/st�{�Ӻ�_���L_�Ʒ�.png");
	OnSE("se���L_����_������01", 1000);
	FadeStR(300,true);

	WaitKey(300);

	SetNwC("cg/fw/nw���B܊��У��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0250e167">
���С����н�����!?��


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0260a06">
�������ָ�����Щ����
����ô���á�
������û����������˵û�õķϻ�����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0270a06">
�����ر��档
��������ʲô�£���


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0280e167">
�������ǡ��ǽ����ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0290a06">
��ʲô����


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0300e167">
����֦���˵Ľ����ˣ�
������֦���˻�����!!��


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0310a06">
������������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/005vs0320b18">
������������������������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0330e173">
������ƭ��ƭ�ˣ���


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0340e167">
���������ˣ�
��������ɱ�����ˣ���


//������㣯���B��У����
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/005vs0350e167">
�����Ƕ�������ɱ����
���ѡ��Ѿ������ˡ����ǻ��Ϊ�������
����Ϊ���Ǹ���ʨһ����Ů��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W������
//����У�����
	SetVolume("@����㣯���B��У��", 300, 0, null);
	OnSE("se���L_����_���̤���03", 1000);

	CreateTextureEX("��", 16000, @0, @0, "cg/ef/ef014_���ú�܉��.jpg");
	Fade("��", 300, 1000, null, true);
	DeleteStL(0,true);

	CreateTextureEX("Ѫ", 15000, @0, @0, "cg/ef/ef006_����Ѫ���֤�.jpg");
	Fade("Ѫ", 300, 1000, null, true);
	FadeDelete("��",300,true);
	OnSE("se����_�n��_ܞ��02", 1000);

	StR(1000, @0, @0,"cg/st/st�{�Ӻ�_���L_�Ʒ�.png");
	FadeStR(0,true);

	Wait(600);
	FadeDelete("Ѫ",700,true);

	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0360a06">
������������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0370e173">
���󡢸���!?��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0380a06">
���𳳡�
�������ڻ�֦���˵���ǰ����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0390e173">
���ɡ��ɿɣ����ǡ�
����˵����֦���˻����ˡ�����


//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0400e173">
���Ǹ�����<RUBY text="����">�Ǹ�</RUBY>����֦���ˡ���
�����Ƿǳ����Ǹ��������Σ�հ�!?��


//�����㥭
{	OnSE("se���L_����_������01", 1000);
	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0410a06">
��������������˵���Σ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0420e173">
������������


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0430a06">
����ûʲô��
�����������ҵ�֪��Ϯ���ߵ���ݡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0440e173">
���ǡ����ǣ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0450a06">
����ȥӭ������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0460e173">
��������������ȥ!?��


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0470a06">
��������������ӡ��Ҳ�ȥָ�ӵĻ���
û�취Ӧ����
�����ǰѻ�֦���˴������档��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/005vs0480a06">
�����У�������������ǽлع��ڡ���



{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/005vs0490e173">
�����������ˣ���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/005vs0500b18">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_006.nss"