//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_039.nss_MAIN
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
	#bg039_��������ϯa_01=true;
	#bg039_��������ϯb_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_040.nss";

}

scene md02_039.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_038.nss"

//��ð�^�����}�ʤ��ʤΤϤ虜�ȤǤ���inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorEX("�ۥ磻�ȥ���", 5000, "WHITE");
	Fade("�ۥ磻�ȥ���", 0, 1000, null, true);
	OnBG(100, "bg039_��������ϯa_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm19", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�ۥ磻�ȥ���", 1500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md02/0390010a00">
���������¡���
�����ǣ���

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390020a07">
������������ǻ��˰ɡ�
��ûʲô����Ҳ����ϡ�档��

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390030a07">
����Ȼ������Щ�˶����ӵĵط���αװһ��
���а�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������û�лش��ҵ����ʣ�
ȴ�����ش��¼�˵��������ɡ�
���·�ֻ��������Ȯһ�㡣

����Ȼ����ѯ�ʹ��ڸղ�����ֵ����󡭡�

������������쳹���ŵ�����ʵ�Ի��Ļ���
�����ڡ����������ʵ�ʱ�� 

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1001, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md02/0390040a01">
��������ʲô����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390050a00">
����������
���ƺ���Ϊ�������������ǰ��˵�Ŀ���ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0390060a01">
������ʲôʱ�����˭����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390070a00">
�����ڣ�������ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0390080a01">
���������鷳�𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390090a00">
��ȷʵ�鷳����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ʹ���˵ЩûӪ���Ļ���
�����۵õ��鱨�ķ����������鱨��������
���ҿ�������ȫȱ����ʵ�����Ժ��ް취��

���Լ����˵�Ĵ�����˵���͸�����˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @50, "cg/st/st�衩��_ͨ��_��װ_b.png");
	FadeStL(300, false);
	Move("@StL*", 150, @0, @-50, Dxl1, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390100a07">
������ĬĬ�ȴ�Ҳû��˼��
��Ҫȥ��ֹ�𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390110a00">
����������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390120a07">
����������ҵİɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390130a00">
����������£��������ƺ��ȽϺá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Щ������ͬ�⡣
���޷����������ɣ��������Լ���������
���϶���״��˼�����˰��ĵ�Ե�ʡ�

���������һ���Ŭ��ת����˼�롣

�����������޶������ᣬ��Եģ�
���������ߵ���ΪҲ�������С�
������ͬ�Ķ��С�

��������ǰ��ֹ�Ļ����϶���������ġ�
����ʹ�ղ��������Ľ����ǻþ�
����æһ�ˡ�����Ҳ����ν��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md02/0390140a00">
�����£���֪��λ���𣿡�

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390150a07">
���š�
����ߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	DeleteStA(0,true);
	
	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����Ŵ�·������������ڿ�ϯ���ƶ���
�������ı���������������㣬Ҳ�������

������ǰͷ����Ů�Ĳ������Ȳ�����Ҳ���ɻ�

�������治��˼�顣
��������ӵ�������������أ�

����ȡ����Զ���ĶԻ����ƺ�������ȷ���յص�
�����ļ��ܡ�
�����������Ǳ���ͨ�������������ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_��װ_b.png");
	FadeStL(300, false);

	StR(1001, @0, @0, "cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390160a07">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390170a00">
������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390180a07">
���Է��ƺ�����һ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390190a00">
�����£���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390200a07">
��ι����������������

{	FadeStR(300, false);
	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0390210a01">
������ʲô������

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390220a07">
�����ã�������ҵ��Ҹ档
��<RUBY text="����������">�����ø��</RUBY>����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0390230a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	DeleteStA(300,true);


//������á��Ż𤷤��褦�ʣӣ�
	CreateSE("�Ż�", "se����_����_�Ż���01");
	MusicStart("�Ż�", 0, 1000, 0, 1000, null, false);

//���٤��g���ä���
	WaitKey(2000);
	SetVolume("�Ż�", 1000, 0, null);

//���ɤ��`�󡣱��k
//�������E

	OnSE("se���L_�Ɖ�_���k03", 1000);

	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 150, 0, 1000, 300, null, "cg/data/circle_01_00_0.png", true);
	Delete("@OnBG*");
	DeleteStA(0,true);
	CreateTextureEX("�}����", 90, @0, @0, "cg/bg/bg039_��������ϯ��_01.jpg");
	Fade("�}����", 0, 1000, null, false);
	CreatePlainEX("�}��д", 90);
	Fade("�}��д", 0, 1000, null, true);
	Zoom("�}��д", 0, 2000, 2000, null, false);
	CreateTextureSP("�}�������k", 100, @0, @0, "cg/ef/ef022_��������ɢ�A.jpg");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef022_��������ɢ�A.jpg", false);

	OnSE("se���L_�Ɖ�_���k05", 1000);

	Shake("�}��д", 15000, 0, 1, 0, 0, 1000, DxlAuto, false);
	Zoom("�}�������k", 4000, 1500, 1500, Dxl2, false);
	Shake("�}�������k", 15000, 2, 5, 0, 0, 1000, DxlAuto, false);

	DrawTransition("�\Ļ��", 500, 1000, 0, 500, null, "cg/data/circle_01_00_1.png", true);
	FadeDelete("�\Ļ��", 1500,true);

	Move("�}��д", 3000, 150, 0, Dxl1, false);
	FadeDelete("�}�������k", 1500,true);

	FadeDelete("�}��д",1000,true);

	WaitKey(1000);

	SoundPlay("@mbgm34", 0, 1000, true);


	SetNwC("cg/fw/nw�У�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯���Ǉ�¡�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390240e288">
������������������

//������㣯���Ǉ�¡�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390250e288">
���ܺã�
�������ˣ���

//������㣯���Ǉ�¡�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390260e288">
��������ܥԽ������
�����������������˰�!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390270a00">
�������������ǡ���

{	NwC("cg/fw/nw�У�.png");}
//������㣯���Ǉ�¡�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390280e288">
����!?��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390290a00">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ���һ�˵���
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	CreateTextureSPadd("�}����01", 10000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	OnSE("se���L_����_Ź��03", 1000);
	FadeDelete("�}����01", 500, true);
	Delete("�\Ļ��");

	OnSE("se����_�n��_ܞ��03", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��������ǰ����۳��İ�Χ��������һ��Ź���ڵء�
���Ǹ����˲���һ�����������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�У�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������㣯���Ǉ�á�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390300e289">
��ι����������
��û���𣿡�

//������㣯���Ǉ�á�
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390310e289">
���������������˺�ͨ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ�������

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	CreateTextureSPadd("�}����01", 10000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Rotate("�}����01", 0, 0, 0, 180, null, true);

	OnSE("se���L_����_Ź��01", 1000);
	FadeDelete("�}����01", 500, true);
	Delete("�\Ļ��");

	OnSE("se����_�n��_ܞ��01", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������Ϊ��������ϵ֮��û����
��ц�������Ȼ��ζ����ɧ���꣬
����Ҳ����ȥѰ�������ˡ�
��ȥ׷�ϸղű��Ҵ����������µļһ

��һ�����ڡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��֩�����
	StR(1000, 230, 105, "cg/st/3d����֩��_���.png");

	OnSE("se����_����_�z�i��03",1000);

	Move("@StR*", 300, 170, @0,Dxl2, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md02/0390320a01">
��������û���˰�!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390330a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���㿪��ס���ߵĽ��С�
��������˫��վ��Ҳ��������������ڵ����ҵİ�Σ��
��Щ�Ҷ�֪�������˿�ռ�������ĵĲ��Ǹм�֮�顣

���Ƿ�ŭ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���܇�_�J��Ѫ

	FadeDelete("�}����40",1000,false);
	CreateColorEXadd("�ե�å���", 15000, "RED");
	Fade("�ե�å���",0,1000,null,false);
	Fade("�ե�å���",1000,1000,null,false);
	FadeDelete("�ե�å���", 500, false);
	CreateTextureEX("�}�ţ�15", 100, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade("�}�ţ�15", 0, 1000, null, true);
	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ˡ�

�������Ĺ��ڡ���
�������������Ļ�����޹�ϵ��
ֻ��Ϊ�ۿ�װ�׾��������������ǡ���

�������˳�Ϊ���Ե�ʬ�ǡ�

�������߸�������֮�࡭��
��ʹ��������̾������˭��û��ϵ��
Ѱ��<RUBY text="����">˵��</RUBY>��������
�γ�һ�����У���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md02/0390340a00">
����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ƿ�ϯ
	
	FadeDelete("�}�ţ�15",1000,true);
	Wait(500);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md02/0390350a00">
�������ڸ�ʲô!!
����ش�!!��

{	NwC("cg/fw/nw�У�.png");}
//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390360e287">
������
����˵��������ʲô����

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390370e287">
�������޳ܰ��������ޣ�
���ɲ�Ҫ˵������û�뵽����������Ʋã���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390380a00">
����Ҫ�ʵĲ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��������Ϊ���������޵��ˣ�Ҳ��㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md02/0390390a00">
��ΪʲôҪ���޹ص��˾��������

{	NwC("cg/fw/nw�У�.png");}
//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390400e287">
���š�������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390410a00">
��˵��������Ʋã���Ϊ�����磬Ϊ��
���˶��Եİɣ�
����Ϊʲô�����������ķ���!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����Χ�����ų�ζ��
�����ǡ��������ý��еĸ����ƽ�����ʹ�õ�ȼ��ζ����

������Щ�һ��ά�޴���͵����ʱ
������������ȼ��ը���ɡ�
���������������������ǣ������Შ������Χ��
����״������֮ǰ�����ܲ�֪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md02/0390420a00">
����ֱ��ĩ���á�������

{	NwC("cg/fw/nw�У�.png");}
//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390430e287">
��������
��ʲô�˵����壬
����������Ҳû�б������޵���
˵�̵ĵ�����

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390440e287">
�������ѳ����ޣ�
��Ϊ�˳ɾʹ��壬���ж���ɹ�ľ��򣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����е�������<RUBY text="����">ȫ��</RUBY>��ʧ��

���뽫��ɱ�����������ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�У�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390450e287">
��������ôһ�������޷��򵹶�ͽ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390460a00">
������һ��!?��

{	NwC("cg/fw/nw�У�.png");}
//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390470e287">
��û��
�����ռ�ʮ�˵�����
��Ϊ���������յļ��ٸ��ˡ���

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390480e287">
��Ϊ�˴����ǣ����ȴ�Ͷ�������
����������ˣ����������ڣ�
����������˶�������Ķ������ǵ�ͬ�ࡣ
��ǣ������ȥ�ģ������ް�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�������ˣ��򵥵ؾ��������������ļ�ֵ��

�������������ˡ�
���ҷ�ŭ��������ʵ����ɡ�

����һ��ĳ����ĳ��һģһ����
��<RUBY text="��������������������������">ֻҪ���Ӿ��б��ܿ���������</RUBY>��
���������¼�ֱһ����

�����ԣ��޷�ԭ�¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/md02/0390490a00">
�������ϻ��͹��ˡ����������ˡ�
��Ͷ���ɡ���

//��������
<voice name="����" class="����" src="voice/md02/0390500a00">
������˾����������Ӧ���̷��ɡ���

{	NwC("cg/fw/nw�У�.png");}
//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390510e287">
��������Щ�һ�ķ��ɣ�
����������������������𣿡�

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390520e287">
�����ǽ������������ս����
��ֱ�����������޵����죡��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390530a00">
������������
��������������������!!��

{	NwC("cg/fw/nw�У�.png");}
//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390540e287">
��ȷʵ��ˡ�
�����������ί�ε�ս������

//������㣯���Ǉ����
<voice name="����㣯���Ǉ��" class="����������" src="voice/md02/0390550e287">
���������ǵ�ΰ���񽫣�����˵����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0390560a00">
���񽫡�������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0390570a07">
��˵����<RUBY text="����">���Ǻ�</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����A���褦�ʤΤǡ��ʤˤ⤷�ʤ� inc�Ѿ�
//��귵��Ĥ��ݳ���

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

}

..//������ָ��
//�Υե����롡"md02_040.nss"