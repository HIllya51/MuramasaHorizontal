//<continuation number="460">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_017.nss_MAIN
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
	#bg006_С��μ�_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_018.nss";

}

scene md06_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md06_016.nss"


//��ҹ
//��С��μ�

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg006_С��μ�_03a.jpg");
	FadeBG(0, true);

	CreateSE("SEL01","se��Ȼ_ˮ_����02_L");
	MusicStart("SEL01",1000,500,0,1000,null,true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);


	SetVolume("SEL01", 1000, 500, null);


	SoundPlay("@mbgm27", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ƺ�������ʼ�����ˡ�
��
��ǽ�ںܱ�����������ϸ��δ����졣

���Դ������ؽ�������������һֱ������С��ļ��С�
����˵������Χ�����վ����������ڡ����ܴ��𳤼ҹ���
Ҳûʲô���㡪��������ô�������ҵ����ɡ�

�����ǵ���ǰ��ʱ�ƣ���֮�Ͼ�ֻ��һ�����Ӷ������
����ʳ����Ϊ���������޵�л��
����֮�⻹��Щ�������Ʒ��
�����ֽ�������Щ�Ƚ��׵��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md06/0170010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ҳ�������ʹ�С�⣬Ҫ��Ҫ����һ�����
���õ��Ĵ𰸲���һ˿��ԥ��

��С��ҡ��ͷ˵Ҫ������ȴ�ĸ�׹�����
��
����ǰ������û˵����仰��

��������������ʧ��ĸ�׻��ٻ�����ʵ����
ϣ����ã����������ô��Ϊ��
�����������Ȼ�޷��������������Ҳ����˵��

���������Ҿ���ʵ��û�б�Ҫ�ǵ�ȥ˵��С�⡣
���������˵Ҳ��ȫ����ʲô���¡�
�������Ҽ�ڲ��ԡ�

������һ���˶���ȥ��ԡ�
������ֻҪ���������ż���<RUBY text="��������">�����˼�</RUBY>��
�ҾͲ��ö��ϵ���������ϣ����

�����ܼ��صĺ��⣬���Ǳ���һ���ľ��룬
�����������˵���ء���ȥ�ַ����Ľ���
�������������Ǹ������⣬����Ͷ���ɻ��Ŀ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/stС��_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md06/0170020a00">
����������ʲô����

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170030b34">
������������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170040b34">
��Ϊʲô����ôŬ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170050a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Ȼ���⺬�����壬��������˼������Ȼ���ġ�
�������ʡ������Ź�������ȥ�����ؽ�����������¡�

������ͷ��β�������������
������˵�������迴��
��ƾ�ų�������û�еĲ���˼��ĵ�����
��ʶ��������Ϊ�����<RUBY text="��������">�ٽ�����</RUBY>�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170060b34">
��Ϊʲô����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170070a00">
��������������Ϊ����
��ϣ����ҿ����Ѻ��ദ����

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170080b34">
���Ѻã���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170090a00">
���ǵġ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170100b34">
��Ϊʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ͬ�������⡣
�������Ժ�����֯���ԡ�

��������֪��Ҫ��ôǡ����˵������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md06/0170110a00">
���Ժ�Ϊ�󡣡�

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170120b34">
���ͣ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170130a00">
���Ժ͡���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170140b34">
��Ϊ�񣿡�

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170150a00">
��Ϊ�󡣡�

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170160b34">
���Ժ�Ϊ�󣿡�

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170170a00">
���ǵġ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170180b34">
������ʲô��˼����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170190a00">
���Ŵ�һλ���˲������˵������
��һ��Ҫ�����������ù�ϵ����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170200a00">
��һζ���������ݾ�ʲôҲ�����ˡ�
����Ҫ������תΪ��������Ļ���
ʲô��������������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170210b34">
��ʲô�����ԣ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170220a00">
���ǵġ�
������ʳ�������԰����

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170230b34">
������԰�أ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170240a00">
�����Խ��ɡ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170250b34">
����ӰԺ�أ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170260a00">
�����Խ��ɡ���

{	FwC("cg/fw/fwС��_΢Ц.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170270b34">
��������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170280a00">
���ǵġ�
�����ǡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170290a00">
�������ϵ���ӣ���ֹ��������������û��
Э�������������ܻ����Щ���������ƻ�����

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170300b34">
�����С�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170310a00">
���ǵġ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170320b34">
����Ҫ����������������������
�Ѻ��ദ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170330a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md06/0170340a00">
����������ǰ��������������

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170350b34">
������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170360a00">
���������Լ���ʳ��ָ����ˡ�
����Ϊ���˱��Լ�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170370a00">
����������ȥ�ܼ򵥣�ʵ���ס�
���Լ�����ʱ�����ʴȴ��˵���
�ܶࡪ�������Լ�Ҳ�ܼ���ʱ��
���������˾����ˡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170380a00">
����Ϊ�Լ��ܼ�࣬��������ֻ���Ա���
��ʱΪ���Ծȶ���ϧǿռ���˵Ķ�����
��������û����ô������

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170390b34">
������������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170400a00">
�����˲��𡣡�

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170410b34">
������Ŷ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������ǻ�û��ϰ�߱��佱�ɡ�
���⺦�ߵص�����ͷ��

�����շ��죬��ͬ����һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md06/0170420a00">
����������
�����˭��������˼�˶���˼����
�Ͳ��ᷢ�������ˡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170430a00">
������������ĺܺá���

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170440b34">
�������š���

//��΢Ц
{	FwC("cg/fw/fwС��_΢Ц.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0170450b34">
������������������ء���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0170460a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//������
	SetVolume("SEL01", 1000, 1000, null);
	CreateColorEX("�\Ļ��", 25000, "#000000");
	Fade("�\Ļ��", 2000, 1000, null, true);

	DeleteStR(0,true);

//������������Υ�������

	WaitKey(2000);

	ClearWaitAll(1500, 1500);


}

..//������ָ��
//�Υե����롡"md06_018.nss"