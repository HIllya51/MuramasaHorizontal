//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_019.nss_MAIN
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

	$GameName = "ma05_020.nss";

}

scene ma05_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_018.nss"

//��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ҽ������ź�����������Һ���˳�����Ƕ��˵�
·��׷�˹�ȥ��
�����ڿɲ���������ĥ���ʱ���ҳ������֮�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma05/0190010a00">
��ͳ���ˣ����⡪����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190020a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ȼ��Щ����ʱ�ˡ�
�����������е��龰���Ҳ��ɵ�˲�侪���ˡ�

���������룬��ĸ������ſ�š�
���������������ڴ򿪽���֮����Ĺ⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma05/0190030a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��<RUBY text="��������������������">���ݺ��ӵ����̫����</RUBY>��
���Ҳ��ɵý�ס�ˡ�

������Ƭ�̺�
���˷��˼��䱦���ʱ��֮��������������������
�����ж�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma05/0190040a00">
��ͳ���ˡ�������

{	FwC("cg/fw/fw�y_��˼.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0190050b46">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ܹ�ȥҡ�����ļ��
��û�л�Ӧ������ȷ�к�����

��Ҳû�����˵ĺۼ���
���ƺ�ֻ���ι�ȥ���ѡ�

������ʱ������������ʼ��ע�ڶ���״����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������SE��Ҫ�����ԥå��������ޤ���ͨ�ˤʤ󤫥���������������`�פǡ�
	CreateSE("SEL01","se�ճ�_����_�i�Q��01");
	MusicStart("SEL01",0,1000,0,1250,null,false);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma05/0190060a00">
���⣡��

{	FwC("cg/fw/fw�����ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190070a14">
���ţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190080a00">
���������ڸ�ʲô����

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190090a14">
������������
�����ڿ�������

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190100a14">
�����������ƺ���Ҫ�����ء������
�����ѿ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190110a00">
�������š�
���ƺ��ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ĸ��ǰҲ˵���������ܷѾ���������
�����ԡ������������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma05/0190120a00">
�����ţ��⣡��

{	FwC("cg/fw/fw�����ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190130a14">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateSE("SEL01","se�ճ�_����_�i�Q��01");
	MusicStart("SEL01",0,1000,0,1250,null,false);

	WaitKey(800);

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se����_����_��å����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw�����ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190140a14">
�����������ˡ�
��������������С�޹ذ����ؼ�������ʹ��
�ĵط�����


{	FwC("cg/fw/fw�����ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190150a14">
��лл�㣬������
������Ҿ�һ������ȥ�ˡ�������������Ķ�
������Ȼ���ǲ��ס���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190160a00">
��������
{	Wait(500);
	FwC("cg/fw/fw����_����.png");}
�����в��в��У����⣡�����ܴ򿪣���

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190170a14">
��Ϊ�Σ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190180a00">
������Ϊ�Ρ�����������
����ӡ�ڴ˴����ǽԶ��ҽ��ɡ�û��ͳ���˵�
�����ǲ��ɴ򿪵ġ���

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190190a14">
�����ǣ����ڴն�����Ů���ҡ�
�������Ȩ�޲���ȫ�����ҵ�����֮���𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190200a00">
�������ǵ�Ҳ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Ϊ�λ�֪������£�
�����������ȱ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma05/0190210a00">
����֮�����ڲ���˵��Щ��ʱ�򣬹⡣������
���׷�����ʲô��
������Ӧ���Ȱ�ͳ���˽��ѡ�����

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190220a14">
��<RUBY text="����������������">���ǹ������ʱ��</RUBY>��������
������ʱ�����á���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190230a00">
��ʲô����

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190240a14">
��ɽ���Ų��Ǽ���Ϯ�������𡣡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190250a00">
�������ǰ�����

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190260a14">
������ӭ����
��������Ľ��С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������!?

��Ҫʹ��
���������������ǽ���!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma05/0190270a00">
�����У���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���Ҳ��ɵø�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma05/0190280a00">
���ǡ���
��<RUBY text="��������">�ǿɲ���</RUBY>���������ó�������

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190290a14">
�������ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-30, @0,"cg/st/st�����ǰ_ͨ��_˽��.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);
	CreatePlainSP("�}��д",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������תͷ�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190300a14">
�����ǣ�������
�����������ķ����𣿡�

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190310a00">
���⡭��
�����������ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190320a00">
���Ǹ����������á�
������Զ��Ҵ������ԣ�����а���

{	FwC("cg/fw/fw�����ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190330a14">
������˵ʲô�������в������������ˡ�
����������������������������

//���⡿
<voice name="��" class="��" src="voice/ma05/0190340a14">
���������ƶ�֮�֡�
��������а��ȫƾ��ʹ���߶�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190350a00">
���⡭������û������

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190360a14">
���ղ��Ǹ�Ů�ˡ�
�����ҿ����������߰ɣ���

//���⡿
<voice name="��" class="��" src="voice/ma05/0190370a14">
���������ƺ�δ���н��С�
��Ҳ����˵��ɽ���н��У����һ�����ʹ�ã�
�����𣿡�

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190380a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������ȷ��
�����С�������������Ҳ�������˶��ɲٿ�֮���
Ҫѵ������Ӧ�Ĳ��ܡ�

�������������⣬Ӧ��������һ��Ҳӵ��ͬ����������
�����룬���ܵ�Ӧ���ܹ��ͽ��һ����ѵ������

�����޴�֪��ɽ���ŷ��ѵ�ʼĩ��
����Ҳû���κ�֤�ݿ��Զ϶��ܻܵ���ӽ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190390a14">
�����ǶԸ���װ���ţ������ಫҲ�����С�
����֮�Է������ߣ��ҷ�ֻ���ý���ӭս����
���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190400a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������˵�Ļ����������ǶԵġ�
�����¡����ǵ�����Ϊ��ʵ�Ŀ��з�����

��ȫ����װ�Ĳ��������������ڡ��г���
�����н��С�

����ƾһ�������������Ҳ�޷��ֵ���
���������Ҽ�����ĸ�Ľ̻塣

������ɱ¾��

�������ڲ�ɱ¾��ǰ������ֹ��װ���š�
���������й�Ȼ�Ǳز����ٵġ�

�����н���֮����ʹ��ͨ���������м�֮��������׾١�
����Ҳ��������ɱһ��һ����
���˴˶��ý��ж�ս���û��ô���ɣ�����������Ҳ��ͨ
��չʾ�Ե�ս����ı���档

�����С�

��Ȼ��ȴΪ�������ԥ�������޷���ͬ����<K>
{//�����롣���ɤ΄���
	CreateColorEX("�}�ݱ����\��", 499, "#000000");
	Fade("�}�ݱ����\��", 0, 1000, null, true);
	CreateTextureSP("�}������", 500, Center, Middle, "cg/st/3d����Ů��ρ_ɿ��.png");
	CreateTextureSP("�}������", 500, Center, Middle, "cg/st/3d����֩��_���.png");
	Move("�}������", 0, @300, @100, null, false);
	Move("�}������", 0, @-300, @100, null, false);
	DeleteStA(0,true);
	Fade("�}��д", 600, 0, null, false);}

����Ϊ�Ҽ����Ǹ����С�

������֮���������˲���������
�����ڽ������а����������Ի�֮��ȥ��

�����ǡ�
���������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��д", 600, 1000, null, false);

	SetFwC("cg/fw/fw�����ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190410a14">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ò�صȴ����ҵĴ𰸡�

���������١�
����˳�����аٺ�����һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}��д", null);
	Delete("�}��*");
	StL(1000, @0, @0,"cg/st/st�����ǰ_ͨ��_˽��.png");
	FadeStL(0,true);
	Delete("�}��д");

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma05/0190420a00">
���������ˡ���

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190430a14">
���ţ���

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190440a00">
�������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����ô���ô󲡳����Ĺ�ð�˷��ա�
�������������Լ������ơ����Ƕ��ҵ�������

����Ұ������ս��������֮ҵ��
��û��ʲô�첻�������顭����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190450a14">
�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������ҵĻ���������΢Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190460a14">
���ܺá�
�����ý�������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0190470a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����˵���������������ˡ�
������֮���У���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma05/0190480a00">
�����ǡ���
���ȵȣ��⣡��

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190490a14">
�����У����Ǹ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);

//�������SE��Ҫ����܈�ߤʤ������_������
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se�ճ�_����_���_��09");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}������", 2100, Center, Middle, "cg/st/3d����Ů��ρ_ɿ��.png");
	CreateTextureEX("�}������", 2100, Center, Middle, "cg/st/3d����֩��_���.png");
	CreateColorSP("�}�\", 2000, "#000000");
	DrawTransition("�}�\", 1000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
�������ò�ػ�Ӧ�ң����������顣
����Ӧ���ص��ţ���Ȼ���׵ؿ����ˡ�

����������š���
�����С�

{	WaitAction("�}�\", null);
	Move("�}������", 0, @300, @100, null, false);
	Move("�}������", 0, @-300, @100, null, false);}
���������С�
{	Fade("�}������", 500, 1000, null, false);}
������Ů���ϣ�<?>
{	Fade("�}������", 500, 1000, null, false);}
���֩�롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/ma05/0190500a00">
����������

{	FwC("cg/fw/fw�����ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0190510a14">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����Ҫ����ǰȥ������ȴ̤���ˡ�
���ֻ�֮�ס�����֮�����������ǵڶ��μ�ʶ�������ͷ�
�������ƣ��Ծ��÷Ǳ�Ѱ����

�����۹⣬����һ�����������ģ����
����������Ȼ���߽��Ǹ����С������ָ����ǰ���ɫ�ľ�
�ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190520a14">
���õ��ˡ�
����������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/ma05/0190530a15">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190540a14">
������ͬ�У�
��������֮�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`��Ů��ρ������
//װ�פޤȤ�
	CreateSE("SE02","se����_�z_װ��04");
	PrintGO("�ϱ���", 10000);

	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	StC(1000, @0, @0,"cg/st/st�����ǰ_ͨ��_˽��.png");
	FadeStC(0,true);
	MusicStart("SE02",0,1000,0,1250,null,false);
	FadeDelete("�ϱ���", 600, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����������ڻ�Ӧ���ĺ��١�
������֮��ͻȻ�ѿ���

���ѳɿ����Ƭ��
��Χ���Ź��赸��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma05/0190550a00">
��ʲô��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����������ǰ���龰��ζ��ʲô��
��������ʲô����<RUBY text="����������������">��ζ�������ʲô</RUBY>�����ѹ����е�֪ʶ�����������жϡ�

���������Ѿ����⸱���н�Ե����!?

���������Ȼ�Թ�֮ʱ��
��������֮�Ի��ƣ���������Ƶ������۾�������������
����̧����ָ��

��װ��֮�ƣ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡢װ�ץ��������
	SoundPlay("@mbgm11",0,1000,true);
	CreatePlainSP("�}��д",3000);
	StC(1000, @0, @0,"cg/st/st�����ǰ_װ��_˽��a.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwR("cg/fw/fw�����ǰ_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190560a14">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������
	CreatePlainSP("�}��д",3000);
	StC(1000, @0, @0,"cg/st/st�����ǰ_װ��_˽��b.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwR("cg/fw/fw�����ǰ_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//���⡿
<voice name="��" class="��" src="voice/ma05/0190570a14">
������֮�������ڴˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`���W��
//���y�Ǻ�
	CreateSE("SE02","se����_�z_װ��04");

	CreateSE("SE01","se����_�z_װ��06");

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	MusicStart("SE02",0,1000,0,700,null,false);
	Fade("�}�ե�", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStC(0,true);
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(2000);
	FadeDelete("�}�ե�", 1000, true);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma05/0190580a00">
������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���⡪��!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
//������뉲
	CreateSE("SE01a","se���L_����_���ϕN01");
	CreateSE("SE01b","se���L_�Ɖ�_����02");
	PrintGO("�ϱ���", 10000);

	MusicStart("SE01a",0,1000,0,1250,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("�}��Ļ", 10000, "#FFFFFF");
	DrawTransition("�}��Ļ", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�ϱ���");
	DeleteStC(0,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg054_�����Ҽ���b_01.jpg");
	CreateTextureSP("�}����2000", 150, Center, Middle, "cg/bg/bg054_�����Ҽ���b_01.jpg");
	SetBlur("�}����2000", true, 3, 500, 100, false);

	CreateTextureadd("�}����200", 1000, Center, Middle, "cg/ef/efRec_�a03.png");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 3000, 5000, null, true);

	Move("�}����200", 0, @+250, @-50, null, true);
	CreateMovie("��`�ө`��", 2000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("��`�ө`��", 0, @0, @180, @0, null,true);
	Zoom("��`�ө`��", 0, 3000, 5000, null, true);
	Move("��`�ө`��", 0, @+250, @-50, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�}����2000", 0, 300, null, true);
	Zoom("�}����2000", 2000, 2000, 2000, null, false);
	FadeDelete("�}����2000", 1500, false);
	Shake("�}����100", 2000, 4, 3, 0, 0, 1000, Dxl1, false);
	DrawDelete("�}��Ļ", 1500, 1000, "effect_01_00_0", false);
	Fade("�}��Ļ", 1000, 0, null, true);

	Zoom("�}����200", 2500, 10000, 80000, null, false);
	Fade("�}����200", 2000, 0, null, false);
	Move("��`�ө`��", 7000, @0, @+300, null, false);
	Zoom("��`�ө`��", 8000, 70000, 8000, null, false);
	Fade("��`�ө`��", 6000, 0, null, false);

	WaitKey(3000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
��������ɫ����ɢȥ֮��
�����ڻָ����������������ģ��ǲ����ݶ���ǽ���Ѳ�
֪ȥ��ļ��

���ⲻ���ˡ��Ҳ���������Ӱ��
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	Delete("��`�ө`��");

	CreateTextureEX("�}����1000", 5000, Center, -550, "cg/bg/resize/bg002_��a_01.jpg");
	Zoom("�}����1000", 0, 1000, 5000, null, true);

	Fade("�}����1000", 0, 1000, null, false);

	Zoom("�}����1000", 400, 1000, 1000, Dxl1, false);
	Move("�}����1000", 400, @0, 0, Dxl1, false);

	DrawDelete("�\Ļ��", 200, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0451]
���ڿ��з������ɫ��Ӱ��
������˲����������١�

����ȥ�����ӵķ�����
�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("�}����1000", 600, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/ma05/0190590a00">
������ֻ������װ�ס�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��ֻ������װ�ס�
�������������˲�״��

���Ǹ����е���ӵ�ж�ô�޴�����ܡ�
���������������ë���Ȼ��

���������ǳ���ը������ˣ�������ȴû���ˡ�
����ĸҲû���ˡ����ҡ������������ǹ�˼������ǡ�

����������ˣ��ҿɲ��ܴ�վ�š�

���ҵü�����ȥ��
����Ȼû�ܳɹ���ֹ�⣬��Ӧ������׷��ȥ��

��������ʣ�µ��Ǹ����С�
�����Խ�����ߵľ��뾭�����ǳ��񱩣�ȴ��������
��Ȼ����

����һ��ʵ��ʹ�ұ������������������ǰ���֮�ϵ�ʵ
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma05/0190600a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��д", 0, 1000, null, true);
	Wait(10);
	CreateColorSP("�}�\", 2000, "#000000");
	CreateTextureSP("�}������", 2100, 52, 123, "cg/st/3d����֩��_����.png");
	Fade("�}��д", 600, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����ǿ�̵��ӣ�Ӳ��ͷƤ����������
���������ɫ����֮��Ĵ�֩�룬���Ǵ��Թۿ��������
����֮����

������������������ô�졣
���ҿɲ�֪���嵶�����ϸ���衣

����ֻ֮��������һ�����Կ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣹��Q��
	CreateSE("SE01","se����_냇��_�k��04");
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��", 10000, "#FFFFFF");
	CreateColorSP("�}�\", 100, "#000000");
	CreateTextureSP("�}������", 500, 52, 123, "cg/st/3d����֩��_����.png");
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("�}��", 1000, true);
	SoundPlay("@mbgm04",0,1000,true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma05/0190610a00">
������!?��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������硣�h��������Թ��Υ���`��
//���y�Ǻ��¼��ãǤ���������ʹ���Ȥ���
//���ӣŸ��������ɤ��ɤ�
	CreateSE("SE01","se����_��x_�k��04");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��", 10000, "#FFFFFF");
	CreateTextureEXsub("�}�ݣ�", 400, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	CreateColorSP("�}ɫ399", 399, "#CC0000");

	CreateStencil("��",1000,52, 123,128,"cg/st/3d����֩��_����.png",false);
	SetAlias("��","��");
	CreateMask("��/��", 1000, center,InBottom, "cg/st/3d����֩��_����.png", false);
	SetAlias("��/��","��/��");
	CreateTextureSPmul("��/��/�}��", 2100, Center, InBottom, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	Fade("�}�ݣ�", 0, 750, null, true);
	DrawEffect("��/��/�}��", 3600000, "LowWave", 30, 30, null);
	FadeDelete("�}��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
������ʲô��
���ⶫ������

����ʲô!?
���ⶫ��!?

���⡪��
�����˺�ë�������龰����������Ϣ����Χ�����С�ζ
����˼����˵�����ʲô��������������������!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��
	CreateSE("SE01","se����_��x_�k��04");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
��
��������������������������


������������������ն��


���������������߱��


�����������������������


������������������������


��������������������������


��������������������а���


����������������������һ���׵�Ҳ


��������������ͬ����Լ��
�����������������Ṳ���׵�֮����


������������������������ɢ


���������������������С���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣲��f����
//���F�g�͎�
	CreateSE("SE01","se����_��x_�k��03");//���ߩ`ע��
	PrintGO("�ϱ���", 25000);
	Delete("��");
	CreateColorSP("�}��", 5000, "#FFFFFF");
	OnBG(100,"bg054_�����Ҽ���b_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	SetVolume("@mbgm*", 100, 0, null);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("�}��", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/ma05/0190620a00">
��������
���۰�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
�����˾�ţ����֮������
���Ҳųɹ��س�����ڽ����ϵ��֡�

���̲�סθ�ڷ�ӿ���ϵ�Ż�¸У��ҹ����ڵء�
���µõ������ǡ�

����������˻���š�

���������У�
�����в��в��в��в���!!

������������Ż��ħ�
����ʵ�������ܲ��𡭡�!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_020.nss"