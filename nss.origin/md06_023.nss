//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_023.nss_MAIN
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
	#bg014_�`�}���A��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_024.nss";

}

scene md06_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_022.nss"


//���`�}��ͨ��
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg014_�`�}���A��_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

	SoundPlay("@mbgm05", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md06/0230010a01">
��������������
������������������ѣ�С��һ׮������

{	FwC("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230020a01">
��ֻ�ǡ����������ߺ�ʳ�Ķ�����ǰ��ͬ��
��������Ϊ����
��ֻ����΢�е�����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230030a00">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ǲ˵�����塢�������Ǵ��ס�ζ�ᡢ����Ƭ��
���������ǰ�����˰ɡ� 
����Ȼ��û˵ʲô��ֻ����΢��ס�

��������û���������ɣ��ѳ����ƻ���������
Ҳ��������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md06/0230040a01">
�������ú���������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230050a00">
�������������ص�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������Ĳ�״������Ůʿ������
�϶����ŵ�������ͣ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md06/0230060a01">
�����ǡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230070a00">
���Ҳ����緹Ҳû��ϵ����

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230080a01">
�����������ڽ���������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230090a00">
��������ֹ���а�ȥ�ǵ�������Űε�
��ʹ�ã�Ҳ��һ�ֽ��������顣��

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230100a01">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������������졣
������С�����������ܹ���

�����յ����硣������
��ɢ���ľ���������

�������˲���Ҫ�µĴ���һͬ�����
ֻ��ɢ�����ѣ����ѳ�ָ��ܵ�ϲ�á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md06/0230110a01">
�����������治������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230120a00">
���������һֱ����������Ҳ��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230130a01">
�����Ắ���𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230140a00">
���ǰ���һ���˶����䡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230150a00">
��ֻ�Ǳ����캮�ض������ȸ��ѶԸ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230160a01">
������ǰ�����Ắ�䡣
���������ǽ��У���������������ν����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230170a00">
���϶��Ļ����������ů������Ӧ����
��������ʱ�����ѹ��·����ǡ�
�������͡���
�����������Ǹ�ʱ����û���˵���ɡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230180a01">
����Ȼû�С���
����������⡣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230190a01">
��ֻ�ǰ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230200a00">
���ţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230210a01">
����Ļ���ʹ�û�����������
���Ƿ��û���������ǵġ�
�����Զ��죬Ҫô���ü���ʳ�� 
����ȡů�ľ���Ҫô��֮����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230220a01">
����˶��춼û����ʲô���õĻ��䡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230230a00">
��������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������ʱ��������ͬ������������֮����
���ִ�Ҳ�ж���Ϊ�����Ѻ�ȼ�Ϸѿ��յ�������
��ȼ�ϻ��������Ҳ��ƵĹ�ȥ����Ȼ�������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md06/0230240a01">
��������һ�㣬���뵽��������ȣ�
��������Ҳ�������ˡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230250a00">
������˼ά������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230260a01">
���ǰɡ�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230270a00">
���ţ���

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230280a01">
�����������϶��ͺö��ˡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230290a00">
����ȷ����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230300a01">
���ں��԰���ĳ������ 
����֮���ɣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230310a00">
���ǰ�����

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230320a01">
���������ֵط���ס�����Ҹ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230330a00">
���ǰ���
������Ҳ���е㡭����į�ĸо��ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230340a01">
��������ô��
���޷������ļ�����ʱ�ĸ��ַ��飬 
Ҳ����Щ�ź�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230350a00">
����������ҹ�Ͷ�������ܿ�ϧ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230360a01">
����֮�������Ҫ����ʼ����̫��
�Ļ��ͻ�û��û�ˡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230370a00">
���ǰɣ�
�����ſƼ���������������һ��
��������ѡ��ϲ���ļ��ڡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230380a00">
����ʱʲô��������������ʵ�֡�
�����������ǻ۵�ʤ������

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230390a01">
���ǰ�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230400a00">
���š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230410a01">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230420a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230430a01">
���Ǹ���������ȥ��ʤ���ˣ���ʵ�����˰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md06/0230440a00">
����Ȼ����ô��Ϊ�𡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230450a01">
���ƺ���������ء�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230460a00">
��������鰡������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����Ȼ��ζ�Ŀ�̸��

������˵��Ϊ��˵�������ڣ�����˵��Ϊ�� 
�����˵����
��
��Ȼ�󣬼������ߡ�

������Ŀ�ġ�

�����������ʱ�䡣
�����ǣ�����û�м�ֵ��

�������˼�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md06/0230470a01">
��ι����������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230480a00">
���š�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230490a01">
���Ǹ���ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230500a00">
����԰ô��
��������Ⱥ���ۼ���һ�𡣡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0230510a00">
��ȥ�����ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0230520a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ", 25000, "#000000");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("@mbgm*", 1000, 0, null);



}

..//������ָ��
//�Υե����롡"md06_024.nss"