//<continuation number="1270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_013.nss_MAIN
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
	#bg053_ܥԽ������ͥ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_014.nss";

}

scene md02_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_012.nss"


//��ͥ
//���X�����h��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg053_ܥԽ������ͥ_01.jpg");
	FadeBG(0, true);
	CreateSE("�������", "se����_����_����᤭02");
	MusicStart("�������", 500, 1000, 0, 1000, null);

	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md02/0130010a00">
�������������е����ӡ���

{	FadeStR(300,false);
	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130020a01">
���ǰ�����
������ʲô���˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��լۡ���ƺ��ܶ��������ػص�׷����ʲô��
���Ų���������˵������

����δ��Ҫս����״̬����ʮ�ֲ��ȶ������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md02/0130030a00">
�����ǡ������ǺŰɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130040a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������Ļش����������
�������������̬����һĿ��Ȼ��
��Χһ���ض��������������С�

��Ŀǰ��û�б�Ҫ�������С�
���Ҿ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);
	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md02/0130050a00">
�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ԭ�����Ͳ���Ϊ����һ��һϦ����ϰ��֮�¡�

���вŵ����ߺķ�һ�����У�
�����Ƿ��ܴﵽ��˾��绹���������
���ն�������
�������������������һ��Ҳ��ϲ������ɡ�

�����ǣ���˵ʲôһ�㣬
���ڵ������Ǳ���ȫ�����ա�
����Ϊ���룬���Բ��ò����ա�

���������š���
��������������Сʱ��
����û��Ч���ĸо���
���˲��ò���ɥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md02/0130060a00">
���мɽ��ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ǲ����洦��
����Ȼ������Ҳ�ǡ�

������һ�Ρ�
����Ρ���<k>�������ǿ�������ҶΪĿ�ꡣ

���ڷ���ҡҷ�ţ��ۿ�Ҫ���¡�
�����ö�Ŀ����֪��Ҷ���µ�˲�䣬
�ڵ������֮ǰ����һץ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����

	CreateColorEX("�\Ļ��", 6001, "#000000");
	Fade("�\Ļ��", 3000, 1000, null, true);

	DeleteStR(0,true);
//����������
	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������������!?

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������֤��w�Ф�
	CreateTextureEXadd("�}����501", 10000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	OnSE("se����_����_��������¤�01", 1000);
	Fade("�}����501", 100, 1000, null, true);
	FadeDelete("�}����*", 500, true);

//���Фá����������
	OnSE("se����_����_������01", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ɹ���!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ���

//���Ѥä��ۤ��_��
//�����ǰ��ͯ�ģ����ң����åס�
	CreateWindow("�}����", 5000, 300, 0, 424, 576, false);
	SetAlias("�}����","�}����");

	CreateTextureSP("�}����/�}�ݱ���", 5020, InLeft, Middle, "cg/bg/bg053_ܥԽ������ͥ_01.jpg");
	Zoom("�}����/�}�ݱ���", 0, 2000, 2000, null, true);
	CreateTextureSP("�}����/�}����", 5100, Center, InBottom, "cg/fw/fwͯ�ĉ�װ_ͨ��bex.png");
//	Move("�}����/�}����", 0, @-50, @0, null, true);
//	Move("�}����/�}�ݱ���", 0, @-30, @0, null, true);

	CreateColorEX("�}����ɫ100", 1500, "BLACK");
	Fade("�}����ɫ100", 0, 300, null, true);


//	Move("�}����/�}����", 100, @50, @0, Dxl1, false);
//	Move("�}����/�}�ݱ���", 100, @30, @0, Dxl1, false);

	OnSE("se�M��_���ߥ���_Ź��04",1000);
	Zoom("�}����/�}����", 100, 1100, 1100, Dxl1, false);

	FadeDelete("�\Ļ��", 100,true);

	Zoom("�}����/�}����", 300, 1000, 1000, Axl1, false);

	Wait(1000);

	Fade("�}����/�}�ݱ���", 2000, 0, null, false);
	Fade("�}����/�}����", 2000, 0, null, false);
	Fade("�}����ɫ100", 2000, 0, null, false);

//	FadeDelete("�}��*", 2000, false);


	SetFwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130070a09">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130080a01">
����Ǹ����
����֪�Ƿ�ò廰������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130090a00">
������������

//��ƽ�������
{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130100a00">
�����ۣ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130110a09">
���㲻���ڱ��ָ��飿��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130120a00">
������ʧ���ˡ�
�������У���ȫû���������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130130a09">
�����á����á������Ǹ��
����Ȼ�����������Ŀ������ˡ�
�϶���ƶɮ�Ĳ��ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��*");

	SoundPlay("@mbgm23", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Ŀ����ɮ�£�����Ц�š�
������������˭�أ�����ô��Ҳ������ܥԽ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130140a09">
��������������ʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130150a00">
��˵�����е�����ʡ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130160a09">
��������ʲô������һ�»����޷��жϡ�
�������ˣ�������ʲô�أ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130170a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������ܶ�����˵���¡�
��û��ϰ���κγɹ�������£����������Գ��ڡ�

��Ȼ������֪Ϊ���񾾽���ǰ�ذ�е��ھΡ���

�����޷��رܣ�ֻ��Ӧ��ɮ����Ȥʮ������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md02/0130180a00">
��ֻ���ڳ��ԣ��Ƿ��ܴﵽ��ν����������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130190a09">
���ǡ���
�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130200a00">
�����ǳ��Բ�ͨ���۾�ȥ������Ҷ���µ�˲�䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ϵ�Ҷ�ӻ��ڷ���ҡ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130210a09">
���ǿɲ��ǰ���ӵ�������ϰ�õİ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130220a00">
����Ȼ������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130230a09">
���Ը�ԶĿ������Լ��Ǻ��¡�
����ϣ����Ϊ����ϰ�ô���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130240a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����΢ͣ�����£�������Ϊ���մ𰸣�
���������Ĵ����Լ������ò���˼�顣
��û���������ٵ�ǰ����Ҫ��Ϊ��ʥ��
�����ڽ�ʥ�ľ���ȴ����ʮ�ֹ�ע��

�����뿴���������֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md02/0130250a00">
��ֻ����Ϊ�б�Ҫ����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130260a09">
����
������Ҫϰ�������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130270a00">
�������ǡ�
����Ϊ����һ������򵹵ĵ��ˡ���

//��������
<voice name="����" class="����" src="voice/md02/0130280a00">
��һ��ӵ��Զʤ���������ĵ��ˡ�����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130290a09">
���ǡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130300a00">
��������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130310a09">
��Ϊ�˺��Ǹ���ս������ϰ������ΪĿ�ꡭ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130320a00">
���ǡ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130330a09">
������ԭ����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130340a00">
����ʦ��
������Ļ����ܷ�ָ��һ�¡���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130350a09">
��ָ���𡭡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130360a00">
���������ң�����ȷ���������С���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130370a09">
����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130380a00">
��������

{	FwC("cg/fw/fwͯ�ĉ�װ_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130390a09">
�����۹���������������
��������������������!!��

{	FadeStR(300,false);
	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130400a01">
��ι���㣡��

{	FwC("cg/fw/fwͯ�ĉ�װ_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130410a09">
����������������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//�룺���������ߤ򣩡�090930��
//��������
<voice name="����" class="��������" src="voice/md02/0130420a01">
�����⡭��
�������Ǹ����У���ô�������˵ķ��ն�Ц����

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130430a01">
�����������Ҳ������һ�٣���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130440a00">
�����������ض�ŭ����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130450a01">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130460a00">
����һ�߿���������������ʮ�ֻ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����Լ�Ҳ���ù��졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/md02/0130470a01">
��û���ǻ��¡�
���������˼������������
ȴ�����ڿ�ͺ���ְɣ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130480a09">
���������ǵ����ǵġ���
����Ϻ��С��˵����������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130490a09">
������ƶɮ���ԡ�
������ԭ�¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130500a01">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130510a00">
����̧��ͷ����
����������������ָ�̵ģ����Ƿ�ʦ�Ĵ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130520a09">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130530a01">
��Ҫ��Ǹ�Ļ�������Ҳ��ժ�¶��ҡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130540a00">
����������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130550a09">
����˵�Ķ��ԡ�
����ƶɮҲ�в������µ����ɡ���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130560a09">
����ˣ������ԭ�¡���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130570a01">
����������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130580a09">
����Ϊ����ƶɮ��˵��ʲô��
�������ˣ�����ƶɮ�������һ�°ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130590a00">
�������ǡ�
��ϴ����������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130600a09">
������ƶɮЦ�ģ������Ǿ�����������֡�
���������������˾�����֡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130610a00">
����⡭����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130620a09">
���š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130630a01">
������ʲô����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130640a09">
����������
��������ʲô�أ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130650a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md02/0130660a00">
����ȥһ��ִ�ţ��������󡭡�
�����Ļ��գ�������ͬ��֮��ġ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130670a09">
���ս�ͨһ�С�
����Ҫ�õ�һ�У��ͱ�������һ�С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130680a00">
���ǡ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130690a09">
��ɫ���ǿգ��ռ���ɫ��
������������У�����ִ��֮�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130700a00">
��������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130710a09">
�������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130720a00">
������������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130730a09">
����Ϊ�˸�ĳ��ս����׷�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130740a00">
���ǡ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130750a09">
���ⲻ����ִ���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130760a00">
������������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130770a09">
����Ϊִ����ʤ������
����׷������ִ�Ų��ܴﵽ�ľ��硣��

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130780a09">
���ⲻ�ϳ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130790a00">
��������������������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130800a09">
��������ʤ�����;��Բ��ܴﵽ���
���ﵽ����֮ʱ��ʤ���Ѳ���Ҫ����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130810a09">
����ѽ�����ź�������
��Ϊսʤ���˶�׷����������У�
����ȫû������İ�����

{	FwC("cg/fw/fwͯ�ĉ�װ_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130820a09">
�����۹���������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ٴδ�Ц��ɮ�¡�
������̬�ȣ��ƺ����˸ղŵĵ�Ǹ�����һ����޷�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md02/0130830a00">
���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����ȡЦҲ��û�취�ġ�

��˵ʲô�����Ż���������
��ȷʵ�Ƿ������������޴��Ĺ���

�����Լ�����ָ���Լ�Ц�����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/md02/0130840a01">
�����������˻�󡣡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130850a00">
��û�취����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130860a01">
������һ�١���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130870a00">
����Ҫ������
��Ҫ����û�����Ҹ棬����ƫ����������
����֪���������ʱ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���෴�õ�л��
����������ҳ��Ż��ڴ�Ц��ɮ������һ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/md02/0130880a00">
���ǳ���л��ʦ�Ĵͽ̡���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130890a09">
����������
������������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130900a09">
����ôƶɮ����
������ô̹�ʣ�
ƶɮҲ����һЦ��֮����ô��ȥ������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0130910a01">
�����ˣ�����߰ɡ�
��Ҫ����Ц�Ļ�����Ļ�����ġ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130920a09">
��Σ��Σ�ա�
���ǳ�����˵����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130930a09">
�������ˣ�����׷��Ĳ������
�������ҡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130940a00">
�����ҡ���

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130950a09">
������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130960a00">
��������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130970a09">
�����������˼�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0130980a00">
�������Ͽ��Ļ�����
�����Լ���һ�л��������𣿡�

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0130990a09">
�����ǡ�
�����������ָ���������֮���
���Ҽ��ǽ����ұ���֮�����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131000a09">
������ͨ����ȫ�����򡣡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0131010a00">
����ʦ�����ǡ�����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131020a09">
������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0131030a00">
���ⲻ��ͬ�������Լ���˵���������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����<RUBY text="����">���Ǻ�</RUBY>����Ը������ģ������Դ���Լ�����ʶ��
�����������ң���Ը��Ҳ��֮���š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131040a09">
����ô���������أ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0131050a00">
��������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131060a09">
����ҪӮ�����˰ɡ�
������ȫ����Ϊ˽���ɣ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0131070a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����˽�¡�˽����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131080a09">
�����ֻ��˽���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0131090a00">
���ǡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0131100a01">
���������������ϸ˵������Щ�鷳�Ľ�ɫ��
�����˲������������簡����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0131110a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0131120a01">
����Ȼ��
��Ҳû�д���˵���Ǻ�������ô�޴��Ļ�����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131130a09">
��������
�������ᵽ���޴�����Ϊ��Ҫ����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131140a09">
�������ˡ�����ǵ���ս����������˽��Ե�ʣ�
��ˣ�������֮�����ÿɳܰɡ���
����������⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0131150a00">
��������ô˵����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131160a09">
���ﵽ���Ҿ��磬����˽��Ҳ��˽������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131170a09">
��ֻ��������塣
���ַ��ǵ���Ҳ������֮��־����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0131180a00">
������������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131190a09">
�����ս���������һ˿����Ҳ�á�
��������㯡�ȥ׷�����Ҿ��ذɡ���

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131200a09">
����ȥ��������
��������֮��־���ж����ַ����˰ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0131210a01">
������������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131220a09">
������������

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131230a09">
������������
����ѽ��˵�˺��Լ�����ƵĻ�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131240a09">
�������Ϊ������������֮ʱ��
���ȱ���������ƶɮ���ƽ���а���
���������Ծ��Ĺ����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131250a09">
�������ˣ��ɲ�Ҫ��Ϊ�������ˣ�
��ƶɮ�ɻ����Ű�����

{	FwC("cg/fw/fwͯ�ĉ�װ_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md02/0131260a09">
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͯ�ġ�ȥ��
	CreateSE("SE01","se����_����_�i��08");
	MusicStart("SE01",0,1000,0,800,null,false);
	SetVolume("SE*", 3000, 0, null);

	WaitKey(1000);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/md02/0131270a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����ҡ�

���������ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md02_014.nss"