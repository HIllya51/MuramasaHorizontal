//<continuation number="300">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_032.nss_MAIN
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
	#bg070_���ӘS�����A�Υ۩`��_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_033vs.nss";

}

scene mb02_032.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_031vs.nss"

//����霔�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	StR(1000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");
	CreateSE("SEL01","se����_����_������L��01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320010b37">
�������ǵġ�����ȡ��������
�����ʤ�������ڴ��ң�ֻҪ�ܳɹ�
�����������ѣ����ʤ�ˡ���


//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320020b37">
������Ҫ�Ĳ��Ǵ��ҵķ���������ͻ���ҵ�
�������������������˵���Ѵ���֮����
��ֻҪ����ʶ����һ������ܻ��ʤ����Ҳ��
��ע��ʧ��֮ʱ����


//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320030b37">
��<RUBY text="��������">��������</RUBY>���������ž���һ�ѷϻ���
�������ǻ�����Ц������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//�����\�����T
	CreateSE("SE01","se����_����_�z_�}���l���Ĥ�01");
	MusicStart("SE01",1000,1000,0,1200,null,true);

	DeleteStR(300,true);

	WaitKey(3000);

	StL(900, @-60, @0,"cg/st/3d���\_����_�i��.png");
	StCL(800, @140, @0,"cg/st/3d���\_����_ͨ��.png");
	StR(700, @0, @0,"cg/st/3d���\_����_�i��b.png");
	FadeStL(300,false);
	Wait(100);
	FadeStR(300,false);
	Wait(100);
	FadeStCL(300,true);
	SetVolume("SE01", 1000, 0, null);

	SetNwC("cg/fw/nw���\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���\����
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320040e023">
�����죡��


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320050b37">
��̫���ˡ���


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\����
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320060e023">
���ǳ���Ǹ��
���鳤������ˣ���������������ҡ�����


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\�¡�
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320070e024">
�����⻹��һЩ�쳣���������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320080b37">
���������������ˡ�
������ȥ׷�����ߡ���


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320090b37">
������<RUBY text="����">�Ǳ�</RUBY>�ˡ�
�����ɷŹ������ߣ���


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\����
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320100e023">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����\���Ф�
//��һ�T�Ф�
	CreateSE("SE01","se����_����_�z_�}���l��ȥ��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteStL(300,false);
	Wait(100);
	DeleteStR(300,true);

	Wait(1000);

	SetVolume("SE*", 3000, 0, null);


	StR(1000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320110b37">
������������ʲô����


{	CreateSE("SE01a","se����_����_�z�i��03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StML*", 300, @-110, @0, DxlAuto, false);
	NwC("cg/fw/nw���\��.png");}
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320120e025">
���Ǹ��������졣
���ҡ������������ҵĺ�����̽�⣬�����Ǳ�
���Ǵ�<RUBY text="��������">�������</RUBY>��׽����������������
�ķ�Ӧ������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320130b37">
��������


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320140e025">
���ǡ��ǡ�����Ū�����𣿡�


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320150b37">
���ڻ�����


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320160e025">
���ڡ����ڣ����졣��


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320170b37">
�����ڽ��Ҳ�������


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320180e025">
���ǡ��ǣ���������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320190b37">
����ӽ��괺�쿪ʼ������ս���ĸ�������
��ݹ����İɣ���


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320200e025">
���ǡ���


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320210b37">
���н����ꡣ
���������侲��������İ���Ҳ��Ϊ׼ȷ������


{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320220b37">
��δ��ֵ���ڴ�����


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320230e025">
������������������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320240b37">
�����ԡ�
��ԭ����ֵ���ڴ��ġ���


//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320250b37">
��û�뵽���<RUBY text="����">δ��</RUBY>���ս��ڴˡ�
��̫�ź��ˡ���


{	NwC("cg/fw/nw���\��.png");}
//������㣯���\�á�
<voice name="����㣯���\��" class="����������" src="voice/mb02/0320260e025">
��ʲô������


{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320270b37">
���������������һ��ת��Ϊ�޶�֮�ˡ�
���������񰡣����ˡ�ҵ�����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//���o�T�����פ������
	CreateColorSP("�}ɫ�\", 4000, "#000000");
	Wait(50);
	CreateSE("SE01","se���L_����_�����01");
	CreateSE("SE01b","se���L_�Ɖ�_����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ݔ�", 4100, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	Zoom("�}�ݔ�", 0, 1100, 1100, null, true);
	Shake("�}�ݔ�", 400, 10, 0, 0, 0, 1000, null, false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(200);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	Wait(100);
	Delete("�}ɫ�\");
	Delete("�}�ݔ�");
	DeleteStCL(0,true);
	FadeDelete("�}ɫ��", 1000, true);

	CreateSE("SE01c","se���L_�n��_�zܞ��01");

	Wait(500);

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320280b37">
��������

{	MusicStart("SE01c",0,1000,0,1000,null,false);
	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320290b37">
��������ӵ��<RUBY text="����">�ʸ�</RUBY>��
�����ԣ��Ҳž�����������ȥ������


//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0320300b37">
��һ�����ˡ��ҵ�������־��
���������ڡ����������¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_033vs.nss"