//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_009.nss_MAIN
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
	#bg088_�߼��ۥƥ�Υ۩`��_01b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_010.nss";

}

scene md03_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_008.nss"


	PrintBG("�ϱ���", 30000);
	CreateColorEX("�\", 5000, "BLACK");
	Fade("�\", 0, 500, null, true);
	OnBG(100, "bg088_�߼��ۥƥ�Υ۩`��_01b.jpg");
	FadeBG(0, true);

	FadeDelete("�ϱ���", 1000, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ⱡ�����ֵĿռ�����Ըо����м�����
���������˹�����
�����ˡ���ʮ�ˣ������ࡣ

�����ǼȲ��Ŷ�Ҳ�������ͣ�ֻ������ش���
��������ĵط���
�����ǣ���֪�ǲ�������ġ�����������Ҫ��
���Լ�����߼���Χס����ɢ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090010a13">
�������������ˡ���

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090020a13">
�����ˡ�������������������ͬ�顣
�����ȴ����ǿ�ʼ���ܣ�û������ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֡��Ѥ��Ѥ��Ѥ�

	OnSE("se����_����_����01", 1000);
	Wait(300);
	OnSE("se����_����_����01", 1000);
	Wait(200);
	OnSE("se����_����_����01", 1000);

	WaitKey(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���谵�����Է�������������Ŀռ��ֻ����
�ֵ������ص��š�
�������ڱ�����ͬ����˼�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm02", 0, 1000, true);
	SetFwC("cg/fw/fw�������_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090030a13">
���õġ�
����ô������ʼ����<RUBY text="����">����</RUBY>����

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090040a13">
�����ھۼ���������˿�˵����ݬ���롣
������˵����������������ǩ��ѧͽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D




//���衩��
	
	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300, true);
	
	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090050a13">
�����������������ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����

	StR(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(1000, true);

	SetFwC("cg/fw/fw�������_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090060a13">
�������е�������ͽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	DeleteStA(300,true);

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090070a13">
���Լ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������չ˫�ۣ�ʾ�����ڵĸ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090080a13">
����½���ý��Ļ����֡�
�������ڽ̵Ĵ�ɲ���
����Ӧ�ѱ����̵�����ɱ�˷���
�����˲�������Ļ���ǡ���

//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090090a13">
�����۾��ˡ���ǡ�������������˸��ߡ���
�������������ѧ�ߡ��񸸡��߼�潸�����
�ڵ�����ɮ������Ʊ�����ȴ��֪����ô��Ǯ
���ꡢ��������ˡ�ռ��ʦ������

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090100a13">
�����߰��㣬ȫ�����߰��㡣
���������ֺ͹�������ͳһ����

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090110a13">
���⣬�����Ǻ��ּ��ţ�
��ֻ�Ǵ�ȫ�����г�ǩѡ��
����������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0090120a00">
������������

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090130a13">
�����ǵġ���
����Ը�������Ǽ�����һ�𡣡�

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090140a13">
��Ϊ�˽���һ�����������Ǿۼ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0090150a00">
��Ϊ��ʲô����

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090160a13">
���񣡡�

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090170a13">
�����񣡡�

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v�������
<voice name="����㣯�v�����" class="����������" src="voice/md03/0090180e290">
���񡭡�û�����񣡡�

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����¡�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0090190e291">
�����������񣬺������������

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����á�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0090200e292">
����ֻ�������Ȥ������

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ġ�
<voice name="����㣯�v�����" class="������Ů��" src="voice/md03/0090210e293">
�����Ǳ�Ҫ�ġ�
��Ϊ�˽��������ص�����������ط񶨡���

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����š�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0090220e294">
�����˺���������ɱ����Ű�˶��Ѿ������ˣ�
������������˵Ķ�����������񣡡�

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ơ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0090230e295">
����ѽ����仰������Ц���ٺò����ˡ�
������Ĵ��ڣ�����

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ǡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0090240e296">
��ͣ����ͣͣ!!
����û���񣡡��о����˵k����

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ȡ�
<voice name="����㣯�v�����" class="������Ů��" src="voice/md03/0090250e297">
����һ���ᰮ�ҵġ���

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ɡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0090260e298">
���񡭡���

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ʡ�
<voice name="����㣯�v�����" class="������Ů��" src="voice/md03/0090270e299">
���񡪡���

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ˡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0090280e300">
���񣡡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md03/0090290a00">
������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090300a07">
����ô������硣
�����϶���Щ���ĵ������ɣ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090310a07">
�������Ѿ���������Щ�һ��������ˡ�
����ָ���������͹�����ȥ�ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090320a07">
��Ϊ����������ʲô����������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0090330a00">
������ʲô���ϣ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090340a07">
����������˳���Ŀ��֮�⻹��һ����ͬ�㡣
���Ǳ���<RUBY text="����������������">�ܵ�����Ǯ������</RUBY>����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090350a07">
�����ǻ����Լ���ʵ������Э����
��Э���Һ͸�������Ҫ�����¡�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090360a07">
��Э��ʹ���Ǻų�Ϊ��ļƻ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0090370a00">
������������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090380a07">
���������ԭ��ֻ������������Ϊ����ǲ��
�������о�ħ����������֮�������ѧ���硣
�����ǣ������е㲻һ��������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090390a13">
����Ϊ�����˼����¡���

//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090400a13">
�������������۳���ʵ�ʴ��ڡ�
����������ʱ���Լ������ĵ���ȷ���
ȱ�����š���

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0090410a13">
��������ֻ�ø��Լ�����������Ϊ<RUBY text="������">������</RUBY>��
�����ǡ�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090420a07">
���Ҷ����ֶ�������ġ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090430a07">
�����<RUBY text="������������������">��Ȼ���ܵ���Ĵ���</RUBY>���ҡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0090440a00">
�����ܡ�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090450a07">
������������
������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090460a07">
����Ϊ�Ҳ�������Ϊ��������ġ�
����������������������������

//��ŭ�����
{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090470a07">
���ڵص�<RUBY text="��������">����˻��</RUBY>�ļһ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0090480a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]  
��������Ұѡ��㾿����˵ʲô�����뷨ֱ��д����
���ϣ��������ڰ����ڲز�ס��

�������¶��һ���ǳ���̵�Ц�ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090490a07">
���������𣬸�磿��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090500a07">
��������ζ<RUBY text="����������������">��������������</RUBY>�𣡡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0090510a07">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se����_��x_�k��04", 1000);

	CreateColorSP("��", 5000, "WHITE");
	DrawTransition("��", 1000, 0, 1000, 300, null, "cg/data/zoom_01_00_1.png", true);
	WaitKey(500);

}

..//������ָ��
//�Υե����롡"md03_010.nss"