//<continuation number="1390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_011.nss_MAIN
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
	#bg006_С��μ�_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���ι�=true;

	$PreGameName = $GameName;

	$GameName = "md06_012.nss";

}

scene md06_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_010.nss"

//��С���ʼҤ��С�bg006a
//���ܥ��ݤǤϤʤ���ؚ������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	OnBG(100, "bg006_С��μ�_01.jpg");
	FadeBG(0, true);
	CreatePlainSP("�}��д", 1000);
	SetShade("�}��д", HEAVY);
	Delete("�ϱ���");
	FadeDelete("�\",2000,true);
	FadeDelete("�}��д", 2000, true);

	SoundPlay("@mbgm23", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������˲�䣬��������ռ�����Ժ���
��İ���ĵط������У��Դ��ĳ��ظС�

����һ������������Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md06/0110010a00">
�������ˡ���ʲô�£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��˯��İ�����������������һ�����졣
�Դ��������죬��û��˼�������������
�ڸ������ֻ����˯��
������Ϊʲô����������

����ȫ�޷�������֮ǰ�������¡�
���ƺ�ĳһ�μ��䱻�������һ�㡣
��ȻӦ�����̻��������ġ���
����������������᲻�𾢡�

����������ͷʹ����ĥ��̱��������
����չ��һ����֫��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��

	OnSE("se�ճ�_����_���饤���_��04", 1000);


	StR(1000, @0, @0, "cg/st/stС��_ͨ��_˽��.png");
	FadeStR(300, true);

	WaitKey(500);

	SetFwC("cg/fw/fwС��_����.png");

	#voice_on_���ι�=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110020b34">
�������ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110030a00">
�������ǡ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110040b34">
�������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110050a00">
���������ǰɡ�
���б�ˮ�ͺ��ˡ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110060b34">
��ˮ����

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110070b34">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ȥ��
	OnSE("se����_����_�ߤ�05", 1000);

	DeleteStR(300,true);

	WaitKey(500);

	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/0110080a00">
����������������������˭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���컨�岢δ�ظ��ҵ����ʡ�
����ϸ��Ŀǰ��Ѭ�ڵ��ݶ���û�ã�
������Ҳ�������塣

��Ӧ���ǡ�������ƽ���ĺ��ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��

	OnSE("se����_����_�ߤ�05", 1000);


	StR(1000, @0, @0, "cg/st/stС��_ͨ��_˽��.png");
	FadeStR(300, true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fwС��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110090b34">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110100a00">
��лл����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������ӹ�ʢ��ˮ��������
������Ǽ��ڵ�Ե�ʰɣ�����о���Ϊ������

��һ���������Ǽ����Ž�����ζ����ȫ�Ʋ���
�úȵ�����ˮ����������ˣ�����θ�׸о�
�ܵ�������
���Ҵ�ڴ�������

�����ͬʱ������ȴ����������
����������θ����������һ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110110b34">
��Ҫ�Է��𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110120a00">
������������
��������̫��֪���ˡ�����

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110130b34">
����������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110140b34">
�����ӣ����Ƕ����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110150a00">
����������
�������Ǹ������е������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������ʶ���ں�����ǰװǻ����ʵ���޴���
�㲻�����س����ˡ�
���ͼ����ȿ��������ƺ���������������֮ǰ��
��һֱδ��ʳ��

������ʱ�����ܰ��涪������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110160b34">
����һ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ȥ��
	OnSE("se����_����_�ߤ�05", 1000);

	DeleteStR(300,true);

	WaitKey(500);

	SetVolume("@OnSE*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��������ʧ�����ӵĸ���������ܿ���۷�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	OnSE("se����_����_�ߤ�05", 1000);

	StR(1000, @0, @0, "cg/st/stС��_ͨ��_˽��.png");
	FadeStR(300, true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fwС��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110170b34">
�����㡣��

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110180a00">
����������лл����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���ݹ������Ǻ���
��һ��СС�ĺ���

���ֺܱ��䣬һ���Ӹо���һ��ů����
����������ʳ��ʵ������Щ���ӣ���������Ȼ����
����ɧ��ʱ�򣬿��������Ļ�Ҳ��û��Ҫ�����ˡ�

�����Ĵ�м��ؽ��������ĺ��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md06/0110190a00">
���ҿ����ˡ���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110200b34">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����̻��ʡ�
����ȴ��ĺ����ܳ��Ʒ������𣬺���ζ��

������һ���Ӿͽ������������
������ʼ��Ŀ��ת���ؿ����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md06/0110210a00">
��������л�������

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110220b34">
���д���������¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110230a00">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110240a00">
���Ǹ������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ȼ�䣬�����Ԥ�����ϱ�����
������Ϊ�Ӵ����ս���̫����ɡ������Ǵ�����
�������緹�Ļ����������硣

�����ǣ�ֻ���ҳԹ�ʳ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md06/0110250a00">
���㣬�����𣿡�

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110260b34">
���š���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110270b34">
���Ѿ������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110280a00">
��������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110290b34">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110300a00">
������������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110310b34">
��������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110320a00">
������������������������������������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110330b34">
����ô�ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110340a00">
����ģ��ǳ���Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����Ժ���ʹŹ�Լ�һ����ǧ�κ�
�����ַ�ס���µĶ�ͷ��
���ţ������Ӻ���������Դ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md06/0110350a00">
���Һܿ�Ჹ����ġ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110360b34">
����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110370a00">
����Ϊ�����������ʳ�����

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110380b34">
��������������

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110390b34">
�����壬��������

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110400b34">
��������ȡ���

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110410b34">
�����ԣ�����ԡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110420a00">
�������������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�������Ҹ�̧����ͷ�ˣ��������ѡ�
������ͬ��������Ĳ����ӵ��ϻ�֮�������ɡ�

��������һ�̼�������Ҳ����������Щ��
���Ե�ǰ״��Ҳ���������˽⡣

��������С�����ᡣ
���ƺ�ûסʲô�˵����ӣ����⺢�Ӳ�������
һ����ס�ɡ������׵ļҾ���������ĸӦ��Ҳ�ڡ�

�����ǣ�����������
����������Ӱ�Բ���˵����Ȼ���Ӻ�С����һ����
������һ��Ӧ�ܸ��ܵ���<RUBY text="����">�¶�</RUBY>Ҳû�С�

����ϸ�۲�Ļ����ᷢ�ֵ�������������
��
�������ף�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110430b34">
��������ô�ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110440a00">
��������Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����ֹ˼����
�����Ե�����Ա��˵ļ����ٸ��ʵף�
�����ȹ�һ���Լ���

����ҹ�������ˡ�
�����ƹ������̶��Դ���ë��ë�ţ�
��������������Ŀ�ĵ��ǻ���

�������������������ھƺ��˶���Ե�ʶ���������
������վǰ��������Ĵ��̣�Ū���Լ�һ���ǽ塣
Ȼ������֮�󡭡�

�����ˣ�������һȺΪĳ���������ݵ����ǡ�
���ҽ������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md06/0110450a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����롪��<k>
�����׷�����ʲô��

������֮��ļ��䵴Ȼ�޴档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/md06/0110460a00">
���Ǹ�����
��Ϊʲô�һ������
�ܸ������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���޴����������⡣
�����ǣ�����֮�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110470b34">
���š���

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110480b34">
�����죬���塣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110490a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����Ȼ�����˵�����Լ�Ҳ�Ŷ�ʮ���ꡱ�����գ�
ֻ���������͡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110500b34">
����ֹ����������

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110510b34">
��֮��˯���ˡ���

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110520b34">
��Ȼ���ҾͰ�������˹�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110530a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110540a00">
��ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��������������Ҳ���������еĺ��塣
������֮���⺢���ڸ���Ŀ���������һ�У�
Ȼ�����еذѺȵ�������Ҵ����˼ҡ�

�����ԡ��������Ļ�����Щ˵��ͨ�ˡ�
����ƾ�⺢�ӵ����������Խ��Ұᶯ��
���Ҵ��ؼҵ�Ӧ�������ļ��ˣ�������˫�װɡ�

�������Ļ�����Ҫ�����ĸ�ĸ��һ��л��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/md06/0110550a00">
����ĸ�ĸ�������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110560b34">
���ְֺ����裿��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110570a00">
���ǵġ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110580b34">
�����ڡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110590a00">
���ǹ����𣿡�

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110600b34">
�����ǵġ���

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110610b34">
���Ѿ������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110620a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����������˼����
������һ���˷ݵļҾߡ������¶Ⱥܵ͡��鲼������

����������
���⺢�ӵ�˫�������Ѿ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110630b34">
���ְ֣���<RUBY text="��������">����֮��</RUBY>����

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110640b34">
��˵�˻�ܿ��������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110650b34">
�����ǣ�������������

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110660b34">
����ʱ���費�ڡ�
��˵�ְ��Ѿ������ٻ����ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110670a00">
������������

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110680b34">
��Ȼ�󡭡�
������Ҳ�뿪�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110690a00">
������ȥ�������أ���

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110700b34">
����֪��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110710a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��������Ũ�Ĳ衣
��Ȼ������������ֻ������
���������ӿ���ϵ���ĭ���档

�������ÿࡣ
�����������һ�������õ��������
��΢ƽ��Щ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/md06/0110720a00">
��������ô����ġ���
��������ô���ʳ������⣿��

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110730b34">
���߲˵ꡣ��

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110740b34">
��ȥ��æ�Ļ�������緹����

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110750b34">
��Ȼ�󣬻����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����������
��˵��������ʳ����ƶ��Ѿ���һ���ֵõ��˻ָ���
�����������ƵĻ�����ʳ����ƶ��������һ��ȫ��
��ԭ��

�����ڶ�������˵��������һ�����ҵı仯��������
����¶�����ȴ��һ��СС�Ķ��ݡ����������仯��
ԭ������ս��ɳ���ĸ�����һ�½������˼����
ȴ�����˿�Ц���á�

������֮ǰ�ĺ���Ҳ�����Ʒ�ɡ�
����ʹ���������ҳԵ�Ҳ�㲻��ʲô�ö�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/md06/0110760a00">
�����ҽ��ܵ��е����ҽ���
�ն�������
�����ʱ��������鷳�ˡ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110770b34">
�����֣���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110780a00">
���ǵġ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110790b34">
����������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110800a00">
���ǵġ�
�����ԵĻ���Ҳ������������ְɡ���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110810b34">
���š���

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110820b34">
���⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110830a00">
������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110840a00">
��������

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110850b34">
���⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400a]
�������ظ������֡�
���漴���ҵ��ֱ��ϣ�һ��һ����д��һ���֡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/ev/ev256_�y�ǺŤ�����_b.jpg");
	EfRecoIn2(300);

	WaitKey(100);

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400b]
���⡣<k>
��
����������֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm14", 0, 1000, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/md06/0110860a00">
������������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110870b34">
�������ܹ��𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110880a00">
�����������ǣ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110890a00">
�����ǲ�������֡�
��������к��ӣ�Ҳ��ȡ
���������֡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110900a00">
��һ��������

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110910b34">
�����𣿡�

{	FwC("cg/fw/fwС��_΢Ц.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110920b34">
��̫���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
������΢Ц��
��ʼ�ճ�һ�ֵ���ǣ���һ������Щ΢�仯��

���������ѡ�
���ղ���ͻ��������Ц�գ�ʹ���ҵ��������������ţ�
Ҫƴ��ѹ�Ʋ��ܵ���ƽ����

�������������Ե�ɺ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110930b34">
����ð����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110940a00">
��������ûʲô������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110950a00">
���Ǹ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
������ͼѰ�һ��⡣
������һ��ʱ��������ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/md06/0110960a00">
�����������ˡ�
���ǳ�������ô���ˣ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110970b34">
������ģ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0110980a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
��˵������������ʶ�����ȷҲ����
��������¡�
����Ȼ����ģ��������Ӧ��������
�������ŵ�����ɣ�

�����������С�˭������ɱ����
������մ˷�չ��תΪŹ������<k>������ֻ��
һ���������˾����˽�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0110990b34">
����Ҫ���ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111000a00">
��������Ҫ������

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111010b34">
���š���

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111020b34">
��û���ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111030a00">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111040a00">
���Ǹ���Ҳ����˵
��û�������𣿡�

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111050b34">
���š���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111060a00">
�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
���Ǿͺá�
���ٺò����ˡ�

��������Ȼ��̫�����������������������
����û���ݱ�ɻ����������ܵ��Խ���Ļ���
�����ٺò����ˡ�
��ֻ�ǣ���߶��˸�������С����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/md06/0111070a00">
�����ǡ���Ϊʲô����

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111080b34">
�����塣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111090a00">
���ţ���

{	FwC("cg/fw/fwС��_΢Ц.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111100b34">
�������壬��ֹ�ġ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111110a00">
�������������𣿡�

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111120b34">
���š���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111130a00">
��������������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111140a00">
�����ǡ�����ô���£���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111150b34">
���š���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111160b34">
������������

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111170b34">
�����ӡ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111180a00">
�����ӣ���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111190b34">
���š�
���źͲ��ӡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111200a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����ζ������

����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/md06/0111210a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
��������ô˵�����ƺ���ֹ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/md06/0111220a00">
���������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
���ҡ���
��<RUBY text="��������">ƽ������</RUBY>��

�����������ˣ�Ҳ�����������Ϊ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/md06/0111230a00">
������������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111240b34">
����������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111250a00">
��ʲô����

{	FwC("cg/fw/fwС��_΢Ц.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111260b34">
������ȥ�ܸ��ˡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111270a00">
�������ǡ����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
���ָ������ա�
������Щ����Ѫɫӿ����ȶȡ�

�������Լ���ʶ��֮ǰ�ͱ�����͸�ˣ��е���Ϊ�顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="����" src="voice/md06/0111280a00">
����Ǹ��ûʲô��
��˳����һ�£�֮������ʲô�£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111290a00">
��������ôֻƾ�Լ���������
�Ͱ�������������ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
���Դ�Ϊ��ڣ��׳���һֱ�����ĵ׵����ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//��������
<voice name="����" class="����" src="voice/md06/0111300a00">
����ƾ���������Ӧ�ú����Ѱɣ���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111310b34">
���š���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111320b34">
�����˺ܴ����������ǰ᲻������

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111330b34">
���������ء���
�����͹����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111340a00">
����㣿
������ĸ�⣬�����ļ��ˣ���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111350b34">
�����ǵġ�
���ǲ���ʶ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
���������⺢�Ӽ��ѵ��뽫����������֮�ʣ�
�ǵ�����ǡ��·����Ů�Ե�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="����" src="voice/md06/0111360a00">
���Ǹ��������������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111370b34">
���š���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0111380b34">
�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0111390a00">
�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
����˳������ָ�ķ����ͷ��ȥ��
�����ڶ�������խ�����ſڡ���

��������˫�ֻ��أ��������ҡ�
  �����Ӻ�ʱ��������������ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md06_012.nss"