//<continuation number="810">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_027.nss_MAIN
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
	#bg096_��ᦌm�����ҿ�_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_028.nss";

}

scene md01_027.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_026.nss"

//���m
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg096_��ᦌm�����ҿ�_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����·ͻȻ�����ˣ�����ǰ�����˹����Ŀռ䡣
�������Ǻ͵������Ƶļ��빬�

�������¹���

�������������������
���Ѿ������ò����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270010a05">
������ס��<RUBY text="��֮��">�ص׽�</RUBY>��
�������������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270020a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����컺�����ڡ�
���������������������ڶ�����˵�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270030a05">
����ɫ֮�����ڵصס���
����ʱ��һ������ʱ��������������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270040a05">
����ΪϺ��֮�����ɡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0270050a01">
������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270060a05">
�������θ��롣��

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270070a00">
������������

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270080a05">
������ڵص�֮������
���˼����ؽ��ڵ��¡����ƺ�Ҳδ�Ի���֮
��˵Ц����м����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270090a05">
������д˸С���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270100a00">
���ǡ�
����˵�öԡ���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270110a05">
���ߺߺߡ�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270120a00">
����������

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270130a05">
���겻�Ǵ���֮�����
�����ݳ���֮�뷨��һ�ﲻ������Υ
��֮��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270140a00">
���������̿֡���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270150a05">
�����������˵�����š���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270160a00">
������������ô��
����Ȼ�õ���������ɡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270170a05">
���š���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270180a00">
����ĳ��˵���������ԭ��Ϊ����֮�񡭡�
�����ǣ������һ����ΪѰ���¹�������֮
�ػ�������ʡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270190a05">
���롭����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270200a00">
�����ְ�����������Դ�����ʽ���ֳ�������
Ӧ�ÿ����������ǡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270210a05">
�����ڵ�����ռ�֮�¹����������������֮
�����硣
����Ϊ���⡣��

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270220a00">
���ǡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270230a05">
������Ϊ��ְ��
���˽����֮���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270240a00">
��������ǰ�Ŵ�ǳѧ������֮������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ǰ�Ҿ��Է���һ��ѧϰ�˺Ͱ�ᦹ�������һϵ��֪
ʶ����Ȼ�������ó���
���ٿ���ҹѧϰ�Ĺ���Ҳ����С����

���ղ���Щ������Σ�յľ��桭��
������ƽ���ȹ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270250a05">
�������һ�С���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270260a00">
������������

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270270a05">
���겻�ö������졣
����Ϊ������٣������������̽����ؽ���
�ֶ�һ�Բ�������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270280a00">
��������ʧ�񡪡���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270290a05">
������֮ʧ�ܣ����꽵���˴�֮��������
�����־���֮������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270300a05">
��������֮<RUBY text="��������">ն����Χ</RUBY>����ȻԶ�룬
�����������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270310a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������ˣ�
��������ʶ�ر�¶��ϰ��?!

����̫�����ˡ�
�������ڰ�ɱ���Ƿǣ�����û�п��ǵ�����Σ�ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270320a05">
����������������ˣ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270330a00">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270340a05">
�����̿�֮���������壿
�������ڽ��ͣ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270350a00">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270360a05">
���µ�����Ĭ����
��˵�����š���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270370a00">
��������ô��
������������������¡���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270380a05">
���룿
���̿��������ࣿ��

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270390a00">
����������֮�ˣ���һ�����⣬���۶Է�
��˭������ش𡣡�

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270400a05">
��˵����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270410a00">
���������������ߡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270420a05">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270430a00">
����Ҫ������������
����Ҫ��������������

//��������
<voice name="����" class="����" src="voice/md01/0270440a00">
����������������
������������Ҵ𰸡���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270450a05">
���ߣ��ߡ�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270460a00">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270470a05">
�����ź����̿͡�
���ಢ�޴���֮�𰸡���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270480a00">
��ʲô����

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270490a05">
�����Ϊ���ߡ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270500a05">
����һ�ж�ȡ��������ͳ�Ρ���
����Ϊ�������ϡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270510a00">
������������

//��������
<voice name="����" class="����" src="voice/md01/0270520a00">
����ô������Ŀ��ֻΪ<RUBY text="����">ͳ��</RUBY>��
������������֮�£���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270530a05">
��������ȫ��������
����ֻ��Ϊ������������֮�ֶΡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ߵ��ˡ�

��������˲���Ϊ�����ζ�����֧�䡣
��������Ϊ���֧����ֶΣ��������Ρ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md01/0270540a00">
����ô���Ѿ��ﵽĿ�����𡣡�

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270550a05">
���ߡ���������
���������������㡣��

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270560a05">
���ֽ���֮�У����������������߰�������
��Ȼ��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270570a00">
��������פ������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270580a05">
�����������������ҵ���ɡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270590a00">
������˵���Ҫ����ս�ˡ�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270600a05">
�����ǽ��֮Զ��
�����̿�ս����

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270610a05">
�����������ڰ�������֮ͥ�����ʴ�
���ཫǲ�䷵�ر˰�֮���ᡣ��

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270620a00">
��Ӧ��û��ʤ�㡣��

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270630a05">
�����ʤ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270640a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270650a05">
����ʱ��ͬ������֮ǰ����ʱ����������޷�
սʤ��
������ѡ��˳֮������

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270660a05">
���������޽�����ȡ�
���˴α�ʤ����Ҳ�����������ߣ�����
�������������ض�ʤ������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270670a00">
��������ô���ܡ�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270680a05">
���š�������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270690a00">
����������
������˵�����Ϊ���ۣ�
������ʤ��û���κ����壡��

//��������
<voice name="����" class="����" src="voice/md01/0270700a00">
����ʹ�ý�פ�����ˣ�����Լ�Ҳ�����������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270710a05">
��ȷʵ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270720a00">
������?!��

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270730a05">
���ް�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270740a00">
������˵����ʹ��ʲô��û�����µ�ʤ����Ҳ
��Ҫ��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270750a05">
�������¡�
��������ưԴ��֮��ʵ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270760a00">
������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270770a05">
������֮�£�������Ȥ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0270780a00">
�����졭��
������������Ϊ�����Ŀ�ġ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	CreateSE("SE01","se����_����_�᤺����01");
	StC(1000, @0, @0,"cg/st/st�o��_ͨ��_˽��.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStC(300,true);

	SetFwL("cg/fw/fw�o��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270790a05">
����ô��
����ȹ��������ʱ�䡣��

{	FwL("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270800a05">
����Ϊ��������֮�����ѹ��ࡣ
��Ҳ�á���˳����������һ����������

{	FwL("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0270810a05">
�����У���

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"md01_028.nss"