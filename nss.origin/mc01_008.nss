//<continuation number="690">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_008.nss_MAIN
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
	#bg056_���L�����Tǰ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc01_009vs.nss";

}

scene mc01_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc01_007.nss"

//��������ǰ
//��܇����������ֹͣ��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	OnBG(100, "bg056_���L�����Tǰ_01.jpg");
	FadeBG(0, true);

	CreateSE("SEL01","se�\��_܇_ֹͣ01");
	MusicStart("SEL01",2000,1000,0,800,null,false);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1000, true);


	WaitKey(6000);
	SetVolume("SEL01", 1000, 0, null);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����衿
<voice name="����" class="����" src="voice/mc01/0080010a04">
�����ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080020a03">
���������ˡ�
��������Ȼ�ǵ�һ��������������������ɵ�
�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm18",1000,1000,true);
	OnSE("se�\��_܇_�ɥ��_�]01", 1000);

	CreatePlainSP("�}��д", 10000);
	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_˽��a.png");
	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//�����衿
<voice name="����" class="����" src="voice/mc01/0080030a04">
��������ˡ�
������ǽ��ڴ�Ͳ������ܵ�����Ȥ�ء���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080040a03">
���뺺��ֺ�Ķ������Ų�ͬ�ķ�ζ�ء�
������Ū�����᲻���е��ϧ�أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080050a04">
�������ƺ����ղ��Ź�������
������С�Ĳ����������¾ͺ��˰ɡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080060a03">
����ȷ�ء�
������С�ġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080070a04">
�����ھͳ�����
�����ǣ����Ե�Ƭ�̣���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080080a03">
�������Ե�Ƭ�̰ɡ�
�����뽫���е�һ�ж�һ����ʰ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080090a04">
����������
����ô������Ϊ���㱭��ɡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080100a03">
���������ˡ���


//�������㤫���㡣
{	OnSE("se�ճ�_ʳ��_����ʂ�_L",1000);
	DeleteStL(300, false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080110a04">
��������֪���Ǹ��˻᲻�����ء���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080120a03">
����Ӧ���޷�Į�ӡ�
��������Σ������Ǿ������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080130a04">
�����˽����𣿡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080140a03">
����Ȼ�ˡ�
���ҴӺ�����ǰ����һֱ������λ���˵����ˡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080150a03">
����������������������£���Ҳ���������
�������ˡ�
����˵��һ��ԭί�ε�����֮ʱ����λ���˻�
���������ķ�Ӧ������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080160a04">
����λ���ˣ����������������ķ�Ӧ�ء�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080170a03">
��һ����е��ޱȻںްɡ���
����Ϊ��һ�ж�������λ���˵ı����ء���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080180a03">
���������뷸��������
����ȴ�Ծ�Ҫ���ܱ�Ӧ����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080190a03">
����������û�������ء���


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080200a04">
�����ǿ������ˡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080210a03">
������û�취��
��<RUBY text="��">��</RUBY>�޷�ԭ��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080220a04">
���ǡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080230a03">
��������ʲô���ɶ�����ԭ�¡�
���޷�ԭ����ɱ��<RUBY text="��">��</RUBY>����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080240a03">
������ǧ�����˵���������˻�ȣ���Ҳ����
ԭ�¡�
����������ȵ�ǧ�����˶��뾰������Ϊ�飬
��ô�Ҿͽ�����һͬ���ܡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080250a03">
��������˭�涨���ء�����
�������˵���������һ�˵����������ء���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080260a04">
��������˭�ء�����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080270a03">
���������Լ��涨��Ҳ�Ͱ��ˡ�
����������ˡ������������Լ�����־ȥ����
����<RUBY text="��������">����ɱ��</RUBY>�ġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080280a03">
�������˾������������ļ�ֵ��Ȼ��ɱ���ˡ�
�������Ҳ���ԭ�¡���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080290a03">
����ԭ�´ն���������


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080300a04">
�����������־������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080310a03">
�������վ������λ����ͬ����������Ҳ����
Ҳ��������ͬ�����飬��������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080320a04">
�����������ͬ�������顣��


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080330a03">
���š�
������������Ҳһ��������������
���Եأ��þ������е�����ȡ����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����衿
<voice name="����" class="����" src="voice/mc01/0080340a04">
������������ǲ����ѵ������𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080350a03">
���㲻������ֻ��ɱ���ߵ�����Ϊ����
��������жԷ���������Ҫɱ�㣬����ɱ����
�����ɵģ�����������⡱��ʲô���𡣡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080360a03">
����ɱ���ˣ��ڱ�ɱ֮����޷���ȥ����ĳ��
�ˡ�
����<RUBY text="������������">ɱ�����Ǹ���</RUBY>��<RUBY text="������������">��ɱ����֮��</RUBY>Ҳ���ᱻ��
�������ޡ���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080370a03">
��������������������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080380a04">
��ԭ����ˡ�����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080390a03">
�������Ұ�����ĺܸ�л�������ˡ�
����Ϊ��������<RUBY text="������">�ܹ���</RUBY>���ء���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080400a03">
����Ϊ��ִ��ɱ���������ż������ҵĸ���֮
�ġ�
�����������޾���ɱ�⡣��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080410a03">
�����������Լ�����Ը�������˵Ļ�������һ
����֪������Ǻ��ˡ�
���Ҳ��������ͷ��Լ������ĵط�������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080420a03">
������û�з�չ����������Ҫ������������ء�
���԰ɣ������š���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080430a04">
��������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080440a03">
�����ԡ����һ������ɱ������
��û��ʹ���ء�һ�������������ࡣ��������
˯��һ�㾲������������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080450a03">
�������Ļںޣ������޶á�
������ء�ֻ���ҵ�����ȫ������������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080460a03">
���߾�ȫ����ȡ����������
��һ�߻��������е�������һ�߽����̤����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080470a03">
��Ȼ�󡪡��Ҿͻᱻ�����ޡ�
��ĳһ���ҵ����࣬Ҳ�����ҶԾ�����������
��������������ĵ��йᴩ����


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080480a04">
���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080490a03">
����������<RUBY text="��">��</RUBY>�á���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080500a04">
��������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080510a03">
���������������
����ֹ���������ţ�ɱ���������ѭ��������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080520a03">
����һ��˵���Ļ���֪�����ʲô�𣿡�ɴ������


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080530a04">
���������塣��


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080540a03">
��û��
�����˿����л���Ҫ������ռ�ı���Ҳ�վ���
����ȥ�������ձ��һ���ɷ�����


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080550a04">
����Ȼ���ս��������͵��±�׼��δ�ػ��
���������塣
��������������¶�������װ�Ρ��վ�Ҳֻ
�Ǳ����ϵĶ�������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080560a03">
���š�
�����ĵ�������Զ������ı䡣��


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080570a04">
������ı䡣��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080580a03">
�������Թ�֮�ˣ�����ű��������ձ�����塣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080590a04">
���ǡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080600a03">
�����أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080610a04">
�����Ͼͺá���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, true);

//�����ݤ��ݡ�
	OnSE("se�ճ�_ˮ_ע��01",1000);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080620a03">
�����㰡����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080630a04">
����С�㡣��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080640a03">
��ʲô����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080650a04">
���������𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080660a03">
���ţ��ǳ����ġ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080670a04">
����������ʧȥ�˹���֮��ʱ�ı���
�Ǳ���һ��ġ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0080680a03">
����ȷ�ء�
���������ʲô�أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0080690a04">
���ⱻ��Ϊҵ��
�������������ĵĴ�С�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc01_009vs.nss"