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

scene mc03_003.nss_MAIN
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
	#bg068_���ӘS���ڲ���_01=true;
	#ev176_ʮ�E�~؛_a=true;
	#ev176_ʮ�E�~؛_b=true;
	#ev176_ʮ�E�~؛_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_004.nss";

}

scene mc03_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_002.nss"


//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	OnBG(100, "bg063_���}ۡ����_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1500, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����衿
<voice name="����" class="����" src="voice/mc03/0030010a04">
������λ�أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030020a00">
��ʧ���ˡ����Ǵն���
��������̽����ξ���µġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030030a04">
��ŶŶ������������
�����������ã���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030040a04">
��������ɡ�
����С�㣬�Ǵն��������ˣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030050a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦�β��ݡ�ͥ���椷�����ҡ�bg068���ä���
//���£ǣͣ���ʹ�äݤ���

	OnSE("se�ճ�_����_���饤���_��04", 1000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg068_���ӘS���ڲ���_01.jpg");
	FadeBG(0,true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SoundPlay("@mbgm31", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ξ���ڷ����
������ɫ�԰ף����������Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc03/0030060a00">
����ξ���¡���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030070a03">
�����������������ˡ���
���������ء�����


{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030080a04">
������̫���˰�����С�㡭��
��һ������һ��һ���˼��ﵽ�����ϡ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030090a03">
���š���̫���ˡ���
��������󡭡����������㡭����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030100a00">
��ΪʲôҪ˵���������Ļ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030110a00">
���ҿ�����������𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030120a04">
����ɣ���ɡ�
�����������档��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030130a00">
�����ͷ��ġ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030140a03">
���Ǻǡ������Լ������壬���Լ����˽⡭��
������������ʵҲ�����׵İɡ�������




{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030150a00">
������������


{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030160a04">
�����ǿ���������С�㡭����


//��ǰ��̨�~��ͬ���{�Ӥ�
//�����衿
<voice name="����" class="����" src="voice/mc03/0030170a04">
�����������������ͷ�����𣬴ն����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc03/0030180a00">
�����������ޣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030190a03">
��������������֮ǰ����
���Ѿ�û�ж���ʱ���ˡ���������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030200a00">
����˵Ц�ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030210a04">
�����ǻ��ͳ���ز�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030220a00">
�������ѵ�����ð������ʢ�ĵ��ĵ���е���
��Ʒ��ս�𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030230a04">
����ʷ����׷�ݵ������ƽ�ҳ�����������֮
������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030240a03">
������Ϊ���������һ���������Ц�𡭡�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030250a00">
���ѵ����ǡ�������Ц�𣿡�


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030260a04">
����������Цһ������ʵ������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030270a03">
���뿴ͥԺ����ǿ������������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030280a00">
������
�������ǿ���Ҷ����ô�ˣ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030290a03">
����ʣ��һƬ��Ҷ�ɡ�������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030300a00">
���ǡ���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030310a04">
����˵���������ٶ�����ǰ����֮����Ϊ��Զ
����ʱ���������뵽�ġ�֮��������֮���Ļ�
���Ʒ⣬һͬ�������������


//�����`��
{	OnSE("se�M��_���ߥ���_���`��01", 1000);
	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030320a03">
������������һƬ��Ҷ���µ�ʱ�򡭡�
����һ��Ҳ����ȥ�ɡ�����


//�������`��
{	OnSE("se�M��_���ߥ���_���`��02", 1000);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030330a04">
���������ԣ�������Ҳ����ȫ��ͬ�ĵ�����Ϊ
��ͳ����������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030340a00">
����ô�ᡪ����Ȼ�������£���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030350a04">
���������������޷����Ⱑ����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030360a03">
���⵱Ȼ�޷��������š���
�����ǡ�������֪���ġ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030370a03">
����������һƬ��Ҷ����
�������ҵġ�����������������


//���L�Ԥ�`��

{	OnSE("se�M��_���ߥ���_�L�Ԥ�`", 1000);
	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030380a00">
��������������


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030390a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��ʤ󤫤�����Щ`���l���i���ƥ���Щ`�Ȏ�߀

//˲�g�Ĥ������¤��� inc�Ѿ�
	SetVolume("@mbgm*", 0, 1, null);

	StL(1000, @0, @0, "cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(0, true);
	DrawDelete("@StL*", 300, @1000, "slide_01_01_1", true);


	CreateSE("����Х�", "se���L_����_��ͻ�M02");
	MusicStart("����Х�", 0, 1000, 0, 1500, null,false);
	Wait(230);
	CreateSE("����Х�", "se���L_����_��ͻ�M02");
	MusicStart("����Х�", 0, 1000, 0, 1500, null,false);
	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(0, true);

	DrawDelete("@StR*", 300, @1000, "slide_01_01_0", true);

//�졩�ˑ��� inc�Ѿ�
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw����_ͨ��a.png");
	
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc03/0030400a00">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030410a03">
����������������ʱ���������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030420a00">
�����Ǻ���ɣ��ղ�ȷʵ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030430a04">
�������ն����ˡ��볢һ���ɡ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030440a00">
����ô�������ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030450a00">
��������
�������Ƕ��صķ�ζ����


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030460a04">
���룬�룬�롣
��������ǿ�����Ժ�Щ��Ŷ��
������ñȽ�Ũ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030470a00">
���������á���
����ϸƷ��һ�£����Ǻ�����ء�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030480a03">
���������������ˡ�����
��������������ʱ�����ء�����


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030490a03">
�����������󡭡�������˵�ɡ�����

//�����ߣ������Ϥ碌����
//����늹���礭�٤���ͥ���w�ӳ������~��
//Ԫͨ��ˤ��Ƥޤ��l�����ä������ޤ����
//������������ξ�
{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030500a00">
���ղţ���ξ���µ��ʯ�����ͥԺ������
Ҷ�ָ�ԭ״֮���ּ��ۻ������ǰɣ���



{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030510a03">
���Ǻǡ����벻Ҫ˵�����λ�������


{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030520a04">
���ն����ˣ���С������������ӣ������ֹ�
���Ļ�Ҳ�������ѹ�����ͷ��߻��У�������
����ΪʲôҪ�����Դ���С�㡭������



{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030530a00">
�����������ˡ�
��ζ��ϰ��֮�󣬸о���������ζ������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030540a03">
���������ˡ�����һ��������
��������ͷ����Ŷ��������Ƭ��ҶƮ��֮ǰ��
������һ����Ը�ɡ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���L�Ӥ太�`��

	OnSE("se�M��_���ߥ���_�L�Ԥ太�`��", 1000);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc03/0030550a00">
������������


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030560a03">
����������������ʱ����Ʈ�䣡
���ҵ�������������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030570a03">
���ҵ���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030580a00">
����������ȫû��Ҫ���µ����Ӱ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030590a04">
����С�����Ҷ�Ż�ȥ��ʱ�����ҵ��׽�ճ
��ȥ�ˡ�
��ֻҪ���ǹ�����̨�磬Ҷ�Ӵ����һֱά��
ԭ���ɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030600a03">
���������ˡ�����һ�����������Ұɡ�����



{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030610a00">
����ʲô�ÿ����ġ���


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030620a03">
����ʹ�����ң�Ҳ��Ҫ������
��ֻҪ���Եء���������һ�¡�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030630a03">
����������˵�����������˵��ؿ��С�
�������š���������أ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030640a00">
�����顭����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030650a03">
�������ҵġ����������顭����



{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030660a00">
��û�С���


{	OnSE("se����_Ѫ_��Ѫ01", 1000);
	FwC("cg/fw/fw����֦_����å�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030670a03">
�����ۡ���!!��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030680a04">
������
����Ҷ�������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030690a00">
���ҿ�����Ҫһ�����𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030700a04">
���롣��


//���ȤݤȤ�

{	OnSE("se�ճ�_ˮ_ע��01",1000);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030710a04">
�������ţ���Щ̫Ũ���ء���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030720a00">
��������Ҫ������


//������å�����
{	FwC("cg/fw/fw����֦_����å�.png","Monoc");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030730a03">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_�@��.png","normal");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030740a03">
����!?��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030750a03">
�����������������ˣ�
���������������Ů��������Ը������һ��
��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030760a04">
���ƻص��������ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030770a00">
������Ϊ��ξ������Щʲô�𡣡�



{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030780a03">
���еġ���
��ֻ�о������ˡ������ܹ������ġ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030790a00">
������ʲô���ء���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030800a03">
����������֮��Ҳ��һ����ҪЦ�ҡ�����



{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030810a00">
��������Ц����


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030820a03">
����Ȼ�µ�����Ȳ����ѣ�������ΪŮ�ԡ���
����Ȼ���������������飬ʵ��������������
��ֱ���Գ��ܡ�����


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030830a04">
����С�㡪��������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030840a03">
���ţ�
�������������ˣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030850a00">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030860a04">
���ţ���������ͷ��ʣ������
���ն����ˣ�������ԵĻ������ͳԵ��ɡ���




{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030870a00">
��ʮ�ָ�л����


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030880a03">
�������һ���һ����������
�����Ǹ���ͷ����֮ǰ��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030890a04">
���Ѿ��������ˣ���С�㡣��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030900a00">
������û�е���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("��OnSE*", 1000, 0, null);
	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030910a03">
�������ˡ�������


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030920a04">
���ף����ղ�ȷʵ������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030930a00">
�����������ǡ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030940a03">
�������һ��Ҫ�þ������˵��֡�����


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0030950a04">
����ͷ������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030960a00">
������Ҷ����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030970a03">
��������öʮԪӲ�ң���������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0030980a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����󤬤󤬩`��ʮ�EӲ؛��k�e����ö��һö���ġ�

//���S˲�g�Ĥ�1�ˡ�inc�Ѿ�
	SetVolume("@mbgm*", 0, 1, null);


	OnSE("se�M��_���ߥ���_Ӳ؛�e��", 1000);

	CreateTextureSP("1ö", 12000, @0, @0, "cg/ev/ev176_ʮ�E�~؛_a.jpg");
	Wait(70);
	CreateTextureSP("2ö", 13000, @0, @0, "cg/ev/ev176_ʮ�E�~؛_b.jpg");
	Wait(80);
	CreateTextureSP("3ö", 14000, @0, @0, "cg/ev/ev176_ʮ�E�~؛_c.jpg");


	CreatePlainEX("�}��д", 15000);
	Fade("�}��д", 0, 1000, null, true);
	
	SetBlur("�}��д", 8, true, 400, 200);

	Fade("�}��д", 0, 500, Dxl1, true);
	Zoom("�}��д", 100, 1000, 1000, Dxl1, false);
	Fade("�}��д", 100, 1000, null, true);

	Zoom("�}��д", 500, 1500, 1500, Dxl1, false);
	Fade("�}��д", 500, 0, null, true);
	Zoom("�}��д", 1500, 1500, 1500, Dxl1, false);

//���� inc�Ѿ�
	SetVolume("@mbgm*", 1000, 1000, null);



	SetFwR("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0030990a03">
�������ˡ�����������������������!?��


{	FwR("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0031000a04">
��������������������������������!!��


{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031010a00">
����Ϊ��������������ܡ���


{	FwR("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031020a03">
��Ϊʲô!?��


{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031030a00">
���ҵ����ú��ó�������Ҿͺ��������ˡ���



{	FwR("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0031040a04">
�����������ú���ְ�!?��


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031050a00">
��˳��һ�ᣬ�ҵ������ܹ�����ʮö����


{	FwR("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031060a03">
�����ǳ��˰�!!��������������Ӯ����!!��


{	FwR("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0031070a04">
�����侲һ�°ɣ���С�㡣
�����ò衣��


{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0031080a04">
��Ҷ��Ҳ��ʣ��һ������


{	FwR("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031090a03">
���š������������ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("1ö");
	Delete("2ö");
	Delete("3ö");
	Delete("�}��д");
	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�������`��

	OnSE("se�M��_���ߥ���_�������ɥ�", 1000);

	Wait(500);

	SoundPlay("@mbgm18", 0, 1000, true);


	StL(1000, @0, @0, "cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw����_Ц�a.png");
	
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc03/0031100a00">
������ô�о����ҷ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������֦��ë����������ҿ�������˵����̹
�ϵ��뷨��
��жױ֮�����ļ���������Ѫ��ͨ���Ľ�ȫ
��ɫ��

�����������Ѿ�û�б�Ҫ˯�ڱ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc03/0031110a00">
�������ƺ�����Щ̫�о������ء���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031120a03">
�����𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031130a00">
���������������Ǳ��ӵ����к�û���������
�ӡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031140a03">
��������û�л���Ҫ���ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���̴�ɴ���뿪�ˡ�

������ֻʣ���Ƕ��ˣ����Ҹе���Щ�տ���������ȫ��
�Ǹ������������������Ǹ�������
��������ҩζ��û�С�

��Ҳ����˵�����ٴ�����ʼ����û�б�Ҫ�ٶ�����֦
���������ˡ�
�������������˾��ȵĻָ�������


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc03/0031150a00">
�������Ҿ�֪��û�л���Ҫ����
����ʹ��ˡ�����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031160a03">
���������Ϊ�ص��˹���ɡ�
����Ȼ��Ҳ��������ô��ң�������֮�󣬹�
Ȼ���ǻ����ˮ�Ϳ���������е����ʡ���



{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031170a03">
����Ҳ�ܺóԡ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031180a00">
��ԭ����ˡ�
��ȷʵ����������Ӱ��ܴ󡣡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031190a03">
������Ӧ�þ�����ԭ�������ж��ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031200a00">
����һ����Ҫ��ǿ�Լ���
������������Ҳ���ڷ����ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031210a00">
������˵�ܾ�̽����ʱ���Ѿ��ܵ����ˡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031220a03">
��������Ϊ���뵽���㿴�����Բ������ӣ���
���������ĵ��ģ������Ҳ������������ǵ�
����
������û�б������ء���


//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031230a03">
��������㵣���ˡ�
��ʵ�ڱ�Ǹ���������ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031240a00">
������������ξ��
����������ȫ���õ�Ǹ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031250a00">
����������ξ�������˾�����Ϊ�ҵĲ�С�ġ�
�Ҳ��Ǳ���Ҫ֣�صص�Ǹ��
����������



{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0031260a03">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0031270a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	ClearWaitAll(1500, 1500);


}

..//������ָ��
//�Υե����롡"mc03_004.nss"