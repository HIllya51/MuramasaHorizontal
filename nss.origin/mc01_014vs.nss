//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_014vs.nss_MAIN
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

	$GameName = "mc01_015vs.nss";

}

scene mc01_014vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_013.nss"

//���Tǰ
//�������_������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	OnBG(100,"bg056_���L�����Tǰ_01.jpg");
	FadeBG(0,true);
	StL(1100, @-95, @0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	StCL(1000, @95, @0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	FadeStA(0,true);
	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 2000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetNwC("cg/fw/nw�v��꠱�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
//������㣯�v��ꠣ���
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0010e202">
���Ǹ�Ů�ˣ�����վס����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��b.png");
	FadeStR(300,true);

	SetNwC("cg/fw/nw�v��꠱�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
//������㣯�v��ꠣ¡�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0020e203">
��Ŀǰ����������Ļ���Ĺ���֮�¡�
��һ����˲��ɲΰݡ���

//������㣯�v��ꠣ¡�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0030e203">
���Ͻ��뿪����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/014vs0040a03">
���ҿɲ������ΰݵĿ��ˡ�
�������ҽ�ȥ�ɡ���


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣ¡�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0050e203">
��ʲô������
������Ժ�������Ա�𣿡�


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣ���
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0060e202">
�����ҿ���֤��֤����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/014vs0070a03">
��֤��֤����


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣ���
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0080e202">
����פ�Ͷӳ����еġ�
���������������Ա���ض�����Я������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/014vs0090a03">
���������ǡ��ǡ�
����������𣿡�


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣ���
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0100e202">
���š�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦���饤�ե똋�����k�h���k
//���i����������礵���ݳ��Ǳ�F
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateSE("SE01","se���L_����_�饤�ե�Ĥ�01");
	CreateSE("SE01a","se���L_����_�饤�ե�Ĥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(80);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	StR(1000, @0, @0,"cg/st/st����֦_���_˽��a.png");
	FadeStR(0,true);

	FadeDelete("�}ɫ��", 1000, true);

	SetNwC("cg/fw/nw�v��꠱�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�v��ꠣ¡�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0110e203">
��ʲ������


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣ���
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0120e202">
������������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/014vs0130a03">
�����ͨ�õ�ͨ�����֤��
���ҿ����Ѿ���������Ӵ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф���
	CreateSE("SE01","se����_�n��_ܞ��05");
	CreateSE("SE01a","se����_�n��_ܞ��03");
	Shake("@StL*", 300, 2, 1, 0, 0, 1000, null, false);
	Shake("@StML*", 300, 2, 1, 0, 0, 1000, null, false);

	Move("@StL*", 300, @-30, @60, Dxl1, false);
	Move("@StML*", 300, @10, @60, Axl2, false);
	DeleteStL(300,false);
	DeleteStCL(300,true);
	MusicStart("SE01*",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw�v��꠱�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�v��ꠣ¡�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0140e203">
���㡭������쵰����


{	DeleteStR(300,false);
	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/014vs0150a03">
����ൣ������


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣ¡�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0160e203">
�������쵰������

//������㣯�v��ꠣ¡�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0170e203">
����ҪС��������������ʿ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ӡ��դ��`�á�
	CreateSE("SE01","se���L_�S��_�����Q��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/014vs0180a03">
����ѽ������


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣ¡�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/014vs0190e203">
��ͬ���ǻ����̸������������Ҳ�ǡ���
�����Ϊ�Լ��޴�����Ϊ������ڰɡ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/014vs0200a03">
�����й�����
���ؿڱ��䴩���ܴ����ӡ���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/014vs0210a03">
���ǳ���ɫ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ɤ��^��һ�k��
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateSE("SE01","se���L_����_�饤�ե�Ĥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"mc01_015vs.nss"

}
