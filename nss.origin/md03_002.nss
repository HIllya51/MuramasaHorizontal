//<continuation number="1280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_002.nss_MAIN
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
	#bg002_��a_01=true;
	#bg026_���ӘSɽ��a_01=true;
	#bg027_���ӘS�u�h���g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_003.nss";

}

scene md03_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_001.nss"


//��܇����
//���н֣�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(0, true);


	Delete("�ϱ���");

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020010a07">
���������,
����ൽ�˰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se�\��_���`��_������");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("�\",2000,true);
	Wait(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������⻰���ҽ����������е��ļ��ƿ���

�������ų�����ľ�ɫ��
��������е����������������Ŷ�ȥ�Ľֵ������Լ�
Զ����������ΰ������

��ȷʵ�Ѿ��ܽӽ��ˡ�
��������ϸ���룬���ǳ�������˽��ľ��뿴������

��������Ļ���ĺ��ġ������������ֳǱ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ӘS��

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg026_���ӘSɽ��a_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SetVolume("@SE*", 1000, 0, null);
	Wait(2500);
	
//�����ѩ`�󡣄ݤ������\���_������
//���u�h���g


	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0, true);

	StR(1000, @220, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -344, "cg/bg/bg027_���ӘS�u�h���g_01.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, 460, -482, "cg/st/resize/st�衩��_ͨ��_�Ʒ�a_l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("������", HEAVY);


	Wait(500);

	OnSE("se�ճ�_����_���饤���_��02", 1000);
	FadeStR(100, false);
	Move("@StR*", 300, @-150, @0, Dxl2, false);
	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/blind_05_00_0.png", true);
	Delete("�\Ļ��");



	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���ϥ��ƥ󥷥��
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020020a07">
������!!��

//���ϥ��ƥ󥷥��
{
	Move("�}�ݷ���/�}�ݱ���", 200, @-100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 200, @-200, @0, Dxl2, false);

	Fade("�}ɫ100", 150, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 150, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 150, 1000, null, false);

	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020030a07">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Wait(300);
	FadeDelete("�}ɫ100", 500, false);
	FadeDelete("�}�ݷ���*", 500, true);
	Delete("�}�ݷ���*");

	StL(1100, @-50, @0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	StCL(1000, @100, @0,"cg/st/st�׵�_ͨ��_�Ʒ�.png");
	StCR(900, @-100, @0,"cg/st/stͯ��_ͨ��_˽��b.png");


	SoundPlay("@mbgm20", 0, 1000, true);

	SetFwC("cg/fw/fw�衩��_�䵨.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0035]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020040a07">
��������ȴûһ���˳���ӭ�ӡ�
������̫�䵭������

{	FadeStL(300,false);
	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020050a06">
��û�����㡣��

{	FadeStCL(300,false);
	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020060a08">
��һ������

{	FadeStCR(300,false);
	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020070a09">
����ѽ��ѽ��ѽ��
��������ù���ͻȻ����������֪��һ��
���ǾͲ��������ʧ���ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020080a09">
��������������ӭ��������
��ͯ�ĺ����Ҽ�ֱ������֮Ԯ��������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020090a08">
���ǰ���֮���²Ŷ԰ɣ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020100a06">
��Ҫ�ǰ��˷������¾ͺ��ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020110a07">
�����ǻ������������˷ݵľ���ɡ���

{	FwC("cg/fw/fw�׵�_Ц��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020120a08">
���ǰ���Ŷ�ǺǺǺǺǺǣ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020130a08">
���Ų��ǰ�!?
���������ʼ��û�����æ��!!��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020140a07">
�������������˵���ˣ���ȴͻȻ������������
������һ����������ź��ء���

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020150a09">
������������������
���Ĺ����ѵ����һ�á���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020160a09">
������������ף�˰��ٻ�ɡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020170a06">
���ðɡ�
����Ҳ�����Ρ���

//����Ц
{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020180a06">
����ϲ�ɺء���

//���o����
{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020190a08">
���ǰ�����

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020200a07">
����Щ�һ���ʵ��ȫ������
�쵼�ߵ������ɣ���

//��������С��
{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020210a09">
������������
������������ѽ��ѽ����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020220a09">
����˵���������ˡ�
��ƶɮ�л�Ҫ��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020230a07">
���ţ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020240a06">
��Ŷ����Ҳ���ʡ�
�������Ǽһ���˭������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	Wait(300);
//�����á�
//�������������_܊װ
	OnSE("se����_����_�ߤ�06", 1000);

	StCR(990, @0, @0, "cg/st/st�����AȾ_ͨ��_�Ʒ�.png");
	FadeStCR(500, true);

	Wait(300);

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md03/0020250a00">
������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020260a07">
�����˶��ˣ��ý���һ���ء�
����λ���ҵ����θ��٣��ն�������������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020270a00">
���������Ǵն���
��������ա���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020280a09">
������Ŷ������

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020290a08">
��������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020300a07">
��������Ŷ����

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020310a06">
�������ȵȡ�
���ն��������������������𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020320a06">
���ҵ�ӡ����û�С���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020330a07">
����Ȼ�ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020340a06">
��ԭ�����������ǣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020350a07">
��û�С�
��ֱ������Ϊֹ�����Ǹ�ƽ����ա���

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020360a06">
����������
����Ϊ�ν����������һְ��!?��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020370a07">
��������Ϊ�Ǹ����Ǹ������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020380a06">
���ĸ�������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020390a07">
�����졣���ֶ����������������������

{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020400a06">
�������»�˵����ô�������󣡡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020410a07">
��û�취����Ҫ�Ǵ�Ԥ�ƿ�ʼ����ֱ���ܷ���
���ʹ������֪����Ҫ�������ء�
������ʱ���Ļ������������ء���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020420a08">
��Ҳ������˾���ô�����������
�������ǣ�����ʲôʱ�򶼡�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020430a08">
��˳�ƾ�����˵�����ˣ�����ϸ�����㲻���
���������ɣ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020440a07">
���Ǵ������Ϊû������ʹӲ��ҲҪ�������
���˰ɡ�
����������˵�ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020450a06">
���ߡ������˵����
��������ֵ���𣿡�

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020460a06">
����Σ���ʲô�ն��ġ�
������������񡭡�����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020470a00">
��������������������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020480a06">
��������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020490a06">
����������
��������С������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ī{�Ӻ�
	OnSE("se����_����_�����Ϥ���_��", 1000);

	StL(1000, @0, @50, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @0, @-50, null, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw�{�Ӻ�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020500a06">
������֪���ְ�����̬�Ȼ����º��ֺ����
�������ְ����������ۼ������Ļ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020510a00">
����������������ң����¡���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020520a06">
������������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020530a00">
�������¹ٲ����ʹ�ʡ����Ҫ�ش��޷��ش�֮��
�����ķѵ��������ѡ���

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020540a06">
����������˵ʲô����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020550a00">
���Ҵն��Ƿ���������ͨ���ж���չ�ֵġ�
����ͷ���޷�֤������

//��������
<voice name="����" class="����" src="voice/md03/0020560a00">
����ʹ�����ɼ����Ĺ�������λҲδ���Ͽɡ�
����˲������𡣡�

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020570a06">
�������ߡ�
������ʵ���������ô˵�ɡ���

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020580a06">
��������ұ�����ô�޴������⣬�ǰɣ���

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020590a00">
���Ҷ��������������������
�������н����¡���

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020600a09">
������������

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020610a08">
������������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020620a06">
����������������������������

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020630a06">
��������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020640a00">
��������

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020650a06">
�������ˡ���ͦ��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020660a07">
���ǰɣ���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020670a06">
���ǰ�����

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020680a06">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���i����������S��
//���ܤ����������`��

	CreateTextureEX("�i�����", 5000, @0, @0, "cg/ef/ef015_���ú�܉��.jpg");
	CreateTextureEX("�nͻ", 4500, @0, @0, "cg/ef/ef040_�����nͻ.jpg");

	SetVolume("@mbgm20", 500, 1, null);

	Wait(500);
	DeleteStA(50,true);

	OnSE("se���L_����_��ꪏ���01", 1000);

	Fade("�i�����", 0, 1000, null, true);

	EffectZoomDXadd(10000, 200, 100, "#FFFFFF", "cg/ef/ef015_���ú�܉��.jpg", true);

	OnSE("se���L_����_���nͻ01", 1000);

	Fade("�nͻ", 0, 1000, null, true);

	EffectZoomDXadd(10000, 500, 100, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", false);

	DrawDelete("�i�����", 100, 100, "circle_02_00_1", true);
	FadeDelete("�nͻ",700,true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st�{�Ӻ�_���L_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st�����AȾ_���L_�Ʒ�.png");

	FadeStL(300,false);
	FadeStR(300,true);

	SetVolume("@mbgm20", 2000, 1000, null);

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md03/0020690a00">
������������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020700a06">
��������ԥ�ذε����ء���
����ɫ˿��δ�䡣��

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020710a06">
����֪���������Ĺ���𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020720a00">
���¹�֪������

//�����Ц���Ф�������ͨ����i���Ҫ�ϟo����
{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020730a06">
����֪<RUBY text="��������">ȴ���ʷ�</RUBY>��
�������ǡ����ǺǺǺǺǣ���

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020740a09">
��ʨ�Ӻ���ˡ�����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020750a06">
�����ǵ�û�����ɡ�
����������������������

//�����줿
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020760a06">
����ֻ��<RUBY text="��������">������Ц</RUBY>���ѡ�
����ĳ��װ����ɵ�ĺ������졣��

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0020770a09">
�������š�
��������һ˵��ƶɮҲ�޻���˵����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ�����

	Move("@StL*", 300, @0, @50, null, false);
	DeleteStL(300,true);

	StR(1000, @0, @0,"cg/st/st�����AȾ_ͨ��_�Ʒ�.png");
	CreateSE("SE01","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw�{�Ӻ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020780a06">
������
���ǽС����ն��������ɣ�����������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020790a00">
���ǡ�
����л����ס�ҵ����֣����¡���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020800a06">
���ߡ���֪��ߵغ񡣻�����
���������������ġ����ɶ�����ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020810a06">
����������������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020820a08">
����������¡�
�������ȤҲ����֡���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020830a06">
�����û�ʸ���ô˵����
�����ǲ���谡�����Ǵ�����ɽ��
���������˵ģ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020840a07">
���ӵ�Ļ�ɵ�ɽͷ����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020850a08">
��ιι����

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020860a06">
��Ŷ��
��������ԭ������ͽ�𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020870a06">
������ȥ�������ǰ����׵���֮�˰���
��������ô˵�����ģ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020880a07">
���������ﻰ����
���������ͼȲ��ǵ�Ļ�ɣ�Ҳ������Ļ�ɡ�
ֻ�Ǵӽ������˵��Ļ���жԵ�ʱ��Ƚ϶�
���ѡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020890a07">
��������������<RUBY text="����">Ļ��</RUBY>��������ͻ��
��������ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020900a06">
��������
���������Լ�����ͼ�𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020910a07">
���е����С�
�����Ǳ��ܡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020920a06">
�����������𣿡�

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0020930a07">
���͸�������һ�����������ɣ���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020940a06">
������������

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0020950a08">
��ʲô����������
������һ�һ���Ļ������޷����ΰɣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020960a06">
����ȷ��˰���
�����ǡ����޷�����

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020970a06">
��˵���������Σ�������˭��һ���ɡ�
������ร�������һ��,�ղŵ�������
����Ҳ���޴�����

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0020980a06">
����ô�����ն���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0020990a00">
���¹���Ϊ��������֪֮�������¡���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0021000a06">
���ǺǺǡ�������

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0021010a06">
������裬�����еĸ��Ұɡ�
������һ֧�����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0021020a07">
�����С���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021030a08">
���ȡ���һ��ʨ�Ӻ�
�����Ͽ�����!?��

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021040a08">
��ƫƫҪ��������������������ˣ�
����Ц�ˡ�������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0021050a06">
���ǰ�����

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021060a08">
��ͯ�Ĵ��ˣ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0021070a09">
���š���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0021080a09">
���������кβ����أ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021090a08">
����ô��������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0021100a09">
���������׵����˵Ĺ������е���
��������ܥԽ�������񣬲���������֪���
��Ȼ���˰��ţ��ҵ�û������˵�����ġ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021110a08">
������������ˡ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0021120a09">
������һ�ᡣ
��ƶɮҲ����λ�����������š���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0021130a09">
�����൱����Ȥ��
����Ȼ��ӡ���е�ʱ���������ڲ�ͬ����
ƶɮ������Ȥ�����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0021140a00">
����������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0021150a09">
��������Σ��׵����ˡ�
��ƶɮ��ͷ����������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0021160a09">
��������Σ����춼�ǲ������˹�����
������ӡ�����������

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021170a08">
����������
����Ȼͯ�Ĵ�����ô˵������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021180a08">
�����ǣ��������ˣ����дն��ģ�
���Ტ�����������������ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0021190a00">
���ǡ�
����л���Ŀ���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0021200a00">
��������������С���н����¡���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021210a08">
������������������
����ѽ������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021220a08">
����������һ˫����������۾���
���Ǻǡ���������������˵������������Ȼ
�Ļ�����Ҳ��ȫ������ÿ��ĵġ���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021230a08">
��������խҲ�������ı��ʰɡ�
����ô������Ҿ��Ͽ���ɡ�
���ն���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0021240a00">
���¹�������ҡ���

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0021250a06">
�������浥������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0021260a07">
����ĳ��������˵����Ľ������

{	FwC("cg/fw/fw�׵�_Ц��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0021270a08">
���ǡ��ǺǺǺǺ�!!��

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0021280a09">
�������ţ��š���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md03_003.nss"