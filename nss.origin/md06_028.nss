//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_028.nss_MAIN
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
	#bg033_���Lլ����˽��_03b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_029.nss";

}

scene md06_028.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_027.nss"

//��ҹ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	OnBG(100, "bg033_���Lլ����˽��_03b.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

	SoundPlay("@mbgm32", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������Ȼ�󡭡�
����ƽ�˾���ƽ����һ�����չ�ȥ�ˡ�

������ů֮�˺�����һ�������С�
 
</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md06/0280010a01">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0280020a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0280030a01">
��������˵����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0280040a00">
���š�������

{	FwC("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0280050a01">
������ȥһ��ңԶ�ĵط��ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0280060a00">
��������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0280070a01">
��һ�����������ĵط�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0280080a00">
�������ǰ�������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0280090a00">
������ô��ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0280100a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ȴһ�а㣬��������ġ���
  ��˯֮�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����

//�����ݡ�ҹ��

	CreateColorEX("�\", 15000, "BLACK");
	Fade("�\", 1000, 1000, null, true);
	WaitKey(1000);
	FadeDelete("�\",1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md06/0280110a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���Ƕ��ǿտ�˵�׻����ڿ���֮ǰ��һ�������

������ƽ��֮����
��û�з����ĵط����޴���Ѱ��

��Ѱ���������޵Ķ�������
�����������ӱܣ������ܶ���ʼ���ӱ�֮�á�

�����ǣ�������������
��
����������ˣ���Ӧֹͣս����

��Ӧ����ȴս���ػ���ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md06/0280120a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����˵����Ų��ɡ�
������ȷ�ŵĸо������Ҳ���̾Ϣ��

�������ôն�����������޷���ȴս����
�������أ��ǻ���ʲô��

����������
���ǽ��С�

����<RUBY text="��">����</RUBY>��

��ֻҪ������һ�����;��������� 
ս�������ǹ�ȥ�ļ��䡣

����������ĶԻ���
����˵����׷����˳�Ϊ��������� 
��·��˵�˴�δ��ڡ�

���Ƕ������Ļ���
������񡭡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md06/0280130a01">
��������Ըı䣩

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������ɱ�Ķ�����
���������������������

����������Ҳ���ǵ�����

��������ɴ˿�����֮�ˡ�
��������������ӵ��֮�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_029.nss"