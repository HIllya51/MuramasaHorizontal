//<continuation number="1750">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_018.nss_MAIN
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
	#bg067_���ӘS�����ܘS��_01b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_019.nss";

}

scene mb02_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_017.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg067_���ӘS�����ܘS��_01b.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����̨�Ͽ�ʼ���ݿ��ԡ�
���ݳ����ǡ��޲�ʩ������ʩ�귨�¹�Ȼ�ã�
����Ϊ��ʩ����Ҫ��������õõĲ�ʩ�������ѵ�ס
�ֻ���������

����������δɢ��������ɵı���ǡ��ͺ��һ����裬
��͸�ļ䣬ƽ����ӿ�����س���
���������Ǽ����ں������Ҳ���̾����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������
	CreateSE("SE01","se����_����_����᤭02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb02/0180010a00">
�������ţ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0180020a02">
���ף�
��������λ��Ա����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0180030a00">
���ǲ��ǡ��������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��Ŀ��ת��ͻȻ�����ɧ��֮����
����λ����һ���ݳ�������ʦ�������˿�ϯ֮�䡣

�����ң�û�л���Ϸ����
��������Ϊ���¡�

�����������⣬�ڳ������˶��е�����˼�顣
�����������������һ̽������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb02/0180040a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������Ѹ�������ˡ�
  ��δ���ѡ������������񣬶���һ���Ż�ģ����

��������Ա�����ų�������̬֮��ƮȻ������ǰ�С�
��˳���Ƿ���ľ�ͷ�����ǸԲ��ҵ�ĩ��ǧ��

��Ҳ���Ǿ����ҵĽ�ʿ�ɣ��������ܵ�������˲������
���ڵ�վ��
���������Ǻ�¶�̿�֮ɫ���ջذ�ס�������֡�

�������˸�������״̬�£���������վ��ӣ����ǰ��
����ȥϷ����ժ��ͷ���ֽ����桪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�����p��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180050b28">
������������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0180060a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͯ��
	StL(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����������ͯ��!?

����ô���ܡ�
����ô�����������˰���������Ӿ����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������霔�
	CreateColorSP("�}�\Ļ", 5000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}�ݱ���", 2100, -1024, -463, "cg/bg/resize/bg067_���ӘS�����ܘS��_01bl.jpg");

	StR(3000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(0,true);

	DrawTransition("�}�\Ļ", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������˭��
����λ�������ӡ�

����Χ�侪��ȴҲ�������ѣ���������ʲô����֮�ˡ�
������û�м��������Ǿ���ζ�������ǹ�Ϊ��֪��Ļ��
�߹١�

��������������λ���Ӵ���ͷ��װ������ͯ�ĸ�ɮ��
���ǲ�������ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}�\Ļ", 5000, "BLACK");
	Fade("�}�\Ļ", 300, 1000, null, true);
	Delete("�}��*");

	StL(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	StR(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��b.png");
	FadeStA(0,true);

	FadeDelete("�}�\Ļ", 300, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180070a09">
����ѽ��ѽ����
���ŵ����˰ɡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180080a09">
�����Ǳ�Ǹ��ӣ��С�㡣
����Ȼƶɮ��֪������ˣ�����ԭ����ϲ����
Щ����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180090a09">
��ƶɮ����Ե����������Ѿ��Ĳ���ඡ�
����С��͵����������˵��������֣�������
ˮ�ɣ���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180100b28">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��С�������Ȼ�������Զԡ�
���������ϣ���ϯ�߾��Ǵ˷�ģ����

������˭���ϵ���
����Ϊ�źӹ�������Ȼ��Ȼ��������ʦ�У�����������
�ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb02/0180110a00">
��������˵���֮��Ҳϲ�����֡���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0180120a02">
��������������Ц�����Ǹ����С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��һ���ı�Թ������Щ�󣬵����ھ������������϶�Ҳ
����ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180130b28">
������ͯ�ĸ�ɮ����
����ɮ���ǡ�����λ��������������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180140a09">
��ȷ�ǡ���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180150b28">
��������˼����
��Ϊʲô����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180160a09">
����֪ƶɮ׾�ӵļ��տ����������ٹ���
��������


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180170b28">
���������޴��¡�
��������ɮ�������˳��档��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180180a09">
���ޣ��ޣ�
����Ȼ�ܵõ�ӣ��С�����ͣ���������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���������˱�����չ�����ֳƿ졣
��������ǰ��С�㣬ȴ��������

������û����ȷ�����ļ��վ��ʾ��ס�
�����ԲŻ����������⡣

�����ո߳�����Ϊ�������˽�֪������޹���������ֵ
�þ��ȡ�
��������С���

��Ϊ�����ǰ��������������н�����֮�˵ı�����
����λ�����޵Ĵ����䣬�ӵ��������ϣ���������������
�������й����ǡ�������Ϊ�Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180190a09">
����˵����
��ӣ��С�㡣��


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180200b28">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180210a09">
�����Ÿ������Ŵ���С��ѯ�ʶ��޹����ա�
���ر����ʼ�ǰ��ս��һ�Σ�С������ؿ���
ƿ������


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180220b28">
��������Ϊ������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180230a09">
��������С�������ƶɮ�����˽⡣
��������Ȼ�տڲ��ԡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180240a09">
��һ�����ڱ��˵������֮��
����ս��֮�������������к��á�ֻ�ᱻ�˳�
ЦΪɥ��֮Ȯ����֪���ܣ����Ƿ���һζ��
��������������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180250a09">
�����һ����������Ծ�Ȫ֮�µ�ͬ���ֵܡ�
������С�㣬��˵�Ŀɶԣ���


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180260b28">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ǡ�
���Բ�ӣ����˴������

��������Ϣ�����Լ���С�㣬����ͯ��ת������
��ɨ�ӿ�ϯ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180270a09">
���������ˣ���λ��
��ӣ��С���Ϊ��²����ڲ��ԡ���Ĭһ����
������Ϊս�ܶ��߳ܣ������Ϊ�����䱧�з�
�ޡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180280a09">
��������Ϊ��Ĭ���������ػ�ս�����������
֮����
�����������𣿡���Ȼ�����䳰ЦΪ��ȫһ��
��Ů�ˡ�����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180290a09">
��������˵����Ҳ���ǶԹ���ս������ʿ�ǵ�
���ͣ�
��ÿÿ������λ��װ���ǳ����Ů�ӣ����˱�
������Բ��ҵ�������ʿ����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180300a09">
��С����Ϊ���иԲ�֮���Ҳ�����ҫ������Ը
�����Լ�����


{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180310b28">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������Ȼ��
����һ�㡪����һ��δ�����ǡ�

��ӣ��С�������Ǹ��뷨��
��������������ȥ��û���޷���֮ͨ����

��ȷʵ����λС��Ҳ�����Ǳ��������ľ��Ļ��ŵİɡ�
��ĬĬ��������������������գ����һ�����ٸ���
�ף�Ҳ�վ�û����¶������

����ô������ͯ����������ǿ��¡�
������Ȼ�ܿ��������ĵ׵����ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180320a09">
�����丸������Ů��
���������������µ����ٹ�������ŮӰ�����
֮����ǻ�����Ȯ�ӡ�����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180330a09">
������Ҳ���������˺�
��������!?����λ!!��


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180340a09">
����Բ�ѧϰ���úý���һ�壡
�����ʢ˥����ʱ���������ҵ�������Ҳ�ջ�
ӭ���ٻ�˥�ܵĽ�֡�����ʱ�в���������û
����֮�١�����


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180350a09">
����ʱӦ�����֮��������׳�ң�
������������ľ�û���������֮��Ҳ������
�����ʵ֮ʱ����


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180360b28">
������ͯ�Ĵ��ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�������ǡ�
������������

����ͳ˧�������ź����У�����������顣
����������ߵ�ݡ���Ҳ�����⡣

��˳��һ�ư���һ�����Դ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0180370a02">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0180380a00">
��̫��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0180390a02">
����Ǹ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����������⣬��Ϊ����Ļ��һ���˵ȣ����ǲ�û��
����ߵ��������
����Ҳֻ��װ�����Ӷ��ѡ�

���������ǡ�
����Щ��������ĵ�������������˰ɡ�

���ֳ�ֻ��һ�ˣ�û�д����Դ���
���Ǿ����������ɰ��ϡ�

������ͯ��ת����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180400a09">
��ƶɮ�ڳ����ԣ�˵��Щ�������Ļ���
��������¿�ˡ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0180410b49">
�����������Ǹ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ı���ȴ����������
����ʤ����֮�£���ͥ�Ǻ졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0180420b49">
��˵�úð���ͯ�ĺ��У�
�������Ҷپ�������������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180430a09">
�����¹�����
��ʵ���������١���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���źӹ������������������
��Ȼ���ٴ�ת������С�㡣

����������������
��������λ���������������¶��

��������������Բ�С�㹲ͬ���������졣
����������һ����֪���������ĵ�·����������ͯ����
��������������顪����������·�ߵ���ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180440a09">
��ӣ��С�㡭��
��С��ᶨ����ʵ���ѵá��ҵ������ޣ�����
�����С�㡣��


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180450b28">
������������


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180460a09">
����Ĭ�ţ���������ȥ����
���ػ�������˵���ҫ�ɣ���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180470b28">
�������ǡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180480a09">
�����ǣ�
���ҵ�Ҫ����Բ�������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180490a09">
����֪���ˣ�������˽ܳ�һ�塭��
����Ȼ�������ҵȷֵ����𣬱������������
�Ǿ���һ˿а��һ��˽������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180500a09">
��ֻ��Ϊ�᳹��֮������
����Ա���֮սȴ��δ��ȴ��׳��ս��������
��Ҫ�������������Ӣ�ۡ���


//�룺������Ҋ�����⣩��090930��
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180510a09">
������������������
�����գ�ƶɮ����������˵��С��Ҳ������
��֮�ʡ���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180520b28">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180530a09">
��ӣ��С���Ƿ�֪����
��ƶɮ�������ٹ�������սһ�¡�����


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180540b28">
��ʲô��
���������������á����ζ��š���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180550a09">
�����Ѿ��ǡ���������ǰ�����ˡ�
�������˹�۹���ս֮ʱ����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180560a09">
���ҵ���ʱ������ľ������Ӫ��
�����ˣ�������ս�Ļ����ѹʵĴ��ˡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180570a09">
���������˵�ʱ��ֻ������½��ʿ�١�����


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180580b28">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180590a09">
�������Ի��ε���
�����Թ��ݵ���˳Ҫ������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180600a09">
���Ϻ�֮�У��Ծ���Ϊ�ţ���ʿ��ͻ����ǰ��
ÿ����ʱ����
������Ѫ���������ã��������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180610a09">
��Խ��Խ�����Զ���Ѿ��ĺ��ǡ���
��ս��Ƭ�߲��ã���ɭ����ĳ�ǽ�������𡣡�


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180620a09">
��������ĺ�ըϮ������Ч������
�������з����䣬����ø���ҩɢ��ͬ������
������


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180630a09">
��������������һ�㡣
������һ��Զ�������֮������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180640a09">
��ƶɮ�����ء�
����Ϊ��ʿ�����д˾ٶ��������������ޡ�
ս��������͸���ģ����˲�����Ȼ���¡�����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180650a09">
��ʮ̫�ɡ���Ŷ��Ҳ���Ǵ��ˡ���ʱ��
�����ƺ����˵ġ�
�����ѿ����е�ƶɮ����һ�١���˵�������
Ϊ��ʿ��ս�����ᣬ�Ǿ�ȥ�����аɡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180660a09">
�����ٹ�ʲôҲû˵��
��ֻ��ĬĬ�����š���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180670a09">
�������Ƕ������ߵء�
��ʿ������ͻ����Ȼ��ֻ�к��ǲ��϶ѻ�����
�þõ���������ɽ�𡣡�


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180680a09">
����ҧ�����촽����
����Ѫ���˳���������Ѿ�ҧ���˰ɡ�����


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180690b28">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180700a09">
�����ǣ���֮��
���ص�˾������ٹ����������
ӣ��С�㡭��֪����ʲô�����𣿡�


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180710b28">
����֪������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180720a09">
���������ߵ��ǹ۲����ڻ��ľ��ѳ�����
��ֻҪռ�ݴ˴����Ϳ��ҵ����������ǰ����
в�ҷ��ƿ�Ȩ�����Ǿ�֮�ϡ�����һ��������
Ȩ���䵽�Ҿ����С���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180730a09">
���ʴˣ��ڻ�����ɽ������ʱ�����ѡ�������
������˵��
�������������ﲻ���е��ˣ����ۼ����ڶ���
��������


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180740b28">
��ʲô!?����ô����������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180750a09">
����ľ������Ȼ���¾;ܾ��ˡ�����˵���ҵ�
��ô�����ڻ��������
�����ǣ����ٹ�û����˷�����������������
��ִ���Ը����ʱ�Ϳ�ʼ�ˡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180760a09">
����˵����������Ϊֹ�������������������
ֵ��
�����Ǵӽ��Ժ�ĸ��£�����������������
ҫ֮��������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180770a09">
�������Ƕ��Ž����ڳ������š�
����������ţ����վ�������һ����ٰ�����
���������۷�����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180780a09">
������Ƭ��������ľ����Ϊ֮���ݣ���������
�ڻ����Ҿ����ڹ����Ƕ������ߵء�
��һҹ֮��Ťת��ʤ�����ơ���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180790a09">
���������ٹ��������ǡ���
������λ���ӣ�֪�����˵����С�������


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180800b28">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180810a09">
�����ٹ�û�н���Щ�½���С�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180820b28">
�������ǵġ�
���Ҹ����ٽ�����ս�����¡�Сʱ���һ���
Ϊ�����������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180830a09">
������Ҳ�ǣ�����Ҳ�ǡ�
������Ҫ���Ĺ��������������ٹ�����������
ȴ��δ���⵱���Լ��Ľ�������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180840a09">
���������⵱���Լ�һ���ĳ��衣
����Ȼ�����򽫾����Խ���Ѫ��ͬ��֮�£���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180850a09">
������δ��ڡ���
����һֱ�Դ�Ϊ�ܡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180860a09">
�������������ľ��Ӱ���
������С������𡭡���


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180870b28">
���������ס�����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180880a09">
��ƶɮ�и��뷨��ӣ��С�㡣
�������ɽ����ٹ�����Щ�¼���û����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180890a09">
��Ҫ�����ں�����Ǹ����Ӻ�һ��֮ΰ������
����Ȼ����������ͬ����ʱ����ƶɮ�������
���Ρ���


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180900b28">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180910a09">
��������ӣ��С�㣿
���ҵȿ��������˴������ٹ��𡭡���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180920b28">
�������ǡ�����


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180930b28">
�����ԡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����λС������У�������̱���ľ��롪��
������ѿ�ʼҡ���˰ɡ�

�����������������Ҳ�޷����Լ�����˵�ĸ���֮ս��
���˿����������޴��

���������źӹ�������˵���ˡ�
��һ�����裬ʤ��ǧ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180940b28">
���밴������˼�����¡���
��ͯ�ĸ�ɮ����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180950a09">
���ţ���������������
����лС�㡣��


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180960b28">
�������
������ֻ�ǡ�����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0180970a09">
��ʲô����


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180980b28">
�����š�������ʹ�ࡣ
�����񷽲š�������ɮ������������֪���ĸ�
�ס�����


{
	SoundPlay("@mbgm27",2000,1000,true);
//���潻����
	FwC("cg/fw/fw�@��_��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0180990b28">
�����롭����
���ټ�һ�Ρ������ס�������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181000a09">
��Ŷ��Ŷ������
����Ҳ�ѹ֡���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181010a09">
����Ǹ����С�������ˡ���
�����壡��


{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb02/0181020b21">
���ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
������С�������Żŵ�ģ��������ͯ�Ľ����˲�֪��ʱ
��վ��������ͯ��
�������Զ����Ҳʮ�ֿ�������ͯ��Ѹ�ٽ�����ݸ���
�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181030a09">
������ʱ�������õ�ѡ��
��ӣ��С�㣬����һ����Ρ���


{	FwC("cg/fw/fw�@��_��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181040b28">
��������Ц�ˡ���
��ʵ�ڱ�Ǹ����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181050a09">
��˼��׵�Ů������������ʲô��֡�����
ʲô����ء�
�����øе����������ɣ�С�㡣��


{	FwC("cg/fw/fw�@��_��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181060b28">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��ͯ�ľٺ��ս�ӣ���������롣
����������ע���˾ơ�

��С��һ��������
�����������������е��˶�ע�����ⷬ�⾰��

���˳�Ļ�����µİٹ١�
�����ǵļ��ˡ�
��ͳ�����ǵ��������ɰ��ϡ�

�������˶�ע���š�
������һĻ������Ϊ�����ԵĻ��档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mb02/0181070a00">
������������ô�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
���ҿ��ղ��ѡ�
��<RUBY text="����������">������ô��</RUBY>��

��ǰ��ʿ�����������жϸı���ս���룬ԭ�����ǲ���
����ġ�
�������ڣ��ƺ��������Ҫ��

�������ļƻ���������˵��֮���������������������
���𡭡�
��
����֪��ξ��ϣ��ҿ���һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/mb02/0181080a00">
������������ô�ˣ�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0181090a02">
��ʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0181100a00">
��������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0181110a02">
���������ǵġ�
���ܾ��ã��о�θ��<RUBY text="������">�����</RUBY>��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0181120a00">
��������û��ʲô��ֵĶ����ɣ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0181130a02">
��û�а���
����ô�᲻����ء�����


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0181140a02">
������ƫƫ������ʱ�򡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����Ȼ�Ѿ�С�����£�������������ͷ�Ӷ������ǻ���
����Χ�����˵Ļ��ɡ�
���˿�Ӧ��ע�ӹ�����С����һĻ�Ŷԡ�

����ת�����塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0181150b37">
��������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0181160a00">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
���������ҵġ������������
����λ����������ղţ������ڿ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181170a09">
��������Ϣ��
����ˮ���ա���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181180a09">
����ȥ������ô����Ҳ�������������������
������˹¼š�
�����������ǿ��Ի������ߵ����ݡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181190a09">
��ʥ��֮������Ϊ��·�ꡣָ������֮ˮ
������ȷ�ķ��򡣡�


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181200b28">
�������ǡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181210a09">
��ӣ��С�㡣
���������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��˵�꣬ͯ�ı㽫�ƺ�������ͯ��������һ��������
�����档�Ƿ������Լ�����֮�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181220b28">
�����ǡ�����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181230a09">
������������棬
����ƶɮ׷˼��ȥ�����ٹ����̵ġ���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181240b28">
��ͯ�Ĵ��������Կ̵�!?��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181250a09">
���š�
����Ȼ����׾�ӡ�����ƶɮ�������п�������
���ٹ������ֻ��䡣��


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181260b28">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181270a09">
���������Ϊ�ѣ�ƶɮҲ��ǿ��
��С��Ը�������𣿡�


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181280b28">
���ǡ��ǡ���
���ǳ����⡣��


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181290b28">
���ǳ����⡭�����ɶ��͡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
��С�����ض��ŵ��������档
���Ĳ����ɵش����

����������ظ������������档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181300b28">
��������
����ġ������Ƹ��׵����ա�����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181310a09">
��С������������𡭡���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181320b28">
���ǡ�����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181330a09">
�������Ȼ������


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181340b28">
������������


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181350a09">
����Ϊ�����桪��<BR>{	WaitKey(2000);}
�����ô�����ʬ���ϰ�ȡ�Ĺ�ͷ���ɵİ�����


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181360b28">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(1000);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/mb02/0181370a00">
��������


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0181380b49">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0181390a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(2000);

	SetFwC("cg/fw/fw�@��_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181400b28">
��ʲ����
������ʲô������


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181410b28">
������˵ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
��ӣ��С�㣬���ѯ�ʵ�����
������<RUBY text="��������">��ɬ��Ӳ</RUBY>�����綬��
��ϴ��֮���ɹδ�յ����

����ʶԼ�оųɱ��һƬ�ձ࣬��ʣ��һ�ɣ�������ʶ��
����˾��εȳ�ª��
��С��ǿ���ż��������߽��Ц�գ�����ò��������ȥ��
ô���ࡢ��ô��ª��

���˾�Ȼ��¶�����ֳ�ª�ı�����
��
����֮��ԣ������ɮ��ȴ���仪����

������ϲ�á�
����������������׵İ���
������һ�������Ա���ǡ�����΢Ц��

���������ȷ��潵���˼䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181420a09">
���ǹ�ͷ����


{	FwC("cg/fw/fw�@��_�ֲ�.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181430b28">
����ͷ������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181440a09">
�����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
���źӹ�����������ͯ�ĸ�ɮ�Ȼ���ڶг������
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181450a09">
���þ���
����֨��֨�ء�����


{	FwC("cg/fw/fw�@��_�ֲ�.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181460b28">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181470a09">
�����ϵ����п���
����������������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181480a09">
�����ţ��ô����ӡ�
�������˵أ�һ�½���һ�¡���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181490a09">
��Ϊ�˿̳�ü������ƣ����Ƿ��˲��پ��ء�
����Ȼ�ⲿ���ڳ�����ʱ������ͷ��֮�£���
ǡǡ���ⲿ�֣����͵�����ϣ���һ�оͶ��׷�
�˰�������


{	FwC("cg/fw/fw�@��_�ֲ�.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181500b28">
��������������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181510a09">
��֮��������У��ú��ۺͶ��ｺ����ͿĨ��
����ɫ�ʡ����������ɡ�
����ѽ����ͷ������Ū������


{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181520a09">
�����֮�£�����ɾͺ������ˡ���


{	FwC("cg/fw/fw�@��_�ֲ�.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181530b28">
��������


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181540b28">
������!?��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181550a09">
��������и���ͷ�ǹǵ�<RUBY text="����">ͷ��</RUBY>���֣�ֻ����
����Ϳ�����ɡ�
����Ȼ���ǵ����Ҳ��Ҳ�������������ӣ���
������ԭ������״�ͺ�������ʡ�˲����¡���


{	FwC("cg/fw/fw�@��_�ֲ�.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181560b28">
���������⡭����


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181570b28">
�����Ҳ�ǡ������׵ġ�����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181580a09">
������Ŷ��
��������������ͬ���ֵܡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181590a09">
���Բ�ʮ�����Ĺ�ͷ����


{	FwC("cg/fw/fw�@��_�ֲ�.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181600b28">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181610a09">
�������ţ�ӣ��С�㡣
������С���������ں��˾ưɡ���

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181620a09">
���о���Ρ�����
��Ѫ����еĸ��Ĺ��裬ζ����Σ���


{	FwC("cg/fw/fw�@��_�ֲ�.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181630b28">
������������������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


//���ܥ����Τߡ��ƥ����ȳ����ʤ�
	CreateVOICE("�@��","mb02/0181640b28");
	MusicStart("�@��",0,1000,0,1000,null,false);

/*
	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181640b28">
��ѽ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//������̨
//�������}ͯ�ġ�����Ŀ�ηg�䤫�ʱ���
//�����ä�Ŀ��Ҋ�_���Ƥ���ä�Ц������˥�����

	WaitKey(500);

	SetFwC("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181650a09">
����������������������������������������
����������������������������������������
������������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���gȡ���ݳ�
//������̨����̨���å�
	WaitKey(2000);

	CreateTextureEX("�}�ݱ���", 2100, -467, -418, "cg/bg/resize/bg067_���ӘS�����ܘS��_01bl.jpg");
	Move("�}�ݱ���", 600, @30, @0, DxlAuto, false);
	Fade("�}�ݱ���", 1000, 1000, null, true);

	SoundPlay("@mbgm36",3000,1000,true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181660a09">
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
��Ц�˺�һ�������
����һ���������������У������ش�Ц���ѡ�

���Ƕ�ħ��ĳ�Цû���ܵ��κθ��ţ����ţ�
�����������������С����֣�����̨��ȥ��

����֪��ʱ������ʦ���Ѿ�ȫ�����¡�
���԰׿ռ�֮�У���վ��С�����ɮ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181670a09">
���ķ�Ŀ�����ܱ��ݡ���
���侫���ڿ�Ů���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181680a09">
�����ɣ�
��Ư�����������ɣ�ӣ��С��!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ф���
//��ͯ�ġ����m��_
	CreateSE("SE01","se����_����_�����p��01");
	CreateVOICE("�@��","mb02/0181690b28");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("�@��",0,1000,0,1000,null,false);

/*
//���ܥ����Τ�
{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181690b28">
��ѽ��������
*/



	SetFwC("cg/fw/fwͯ��_�m��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181700a09">
������������ô�ˣ�
����������������Ŷ����ĸ�������Ŷ����

{	CreateVOICE("�@��","mb02/0181710b28");
	MusicStart("�@��",0,1000,0,1000,null,false);}

/*
//���ܥ����Τ�
{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181710b28">
�����������ף������ף���
*/

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181720a09">
���еø�����Щ�ɣ�
���������������ĸ��Ŷ���ٴ�ӡ�������
��Σ���

{	CreateVOICE("�@��","mb02/0181730b28");
	MusicStart("�@��",0,1000,0,1000,null,false);}

/*
//���ܥ����Τ�
{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0181730b28">
������������������������!!��
*/

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181740a09">
�����ˣ�
������������������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0181750a09">
��������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

}

..//������ָ��
//�Υե����롡"mb02_019.nss"