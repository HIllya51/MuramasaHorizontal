//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_027.nss_MAIN
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
	#bg091_ɽ�P��һ��_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_028.nss";

}

scene mc04_027.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_026.nss"


//��ɽ�P�ڡ�һ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg091_ɽ�P��һ��_03a.jpg");

	Delete("�ϱ���");
	FadeDelete("�\Ļ*", 2000, true);

	SoundPlay("@mbgm06",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ɽׯ��ҹ�����͡�
����������͡�����������縧���ţ�
�о��Լ��·�����������Ů�ӽྻ���ġ�


������������һ�������̶��ֺ�����Ϣ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/0270010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������Ľ����ˡ�
��
���ǵġ�

�����Ǻ��Ѿ���ȥ��<k>
���������Ѿ�������

����͵����������վ��޷�Ԥ�ϡ�
��ǰ·�����ڶ�ı�ʡ��ڶ�������ڵȴ���
��ʹ�����ػغ�ƽ����������һ���Ĺ����У�
�������ʻ���ֻ���С��������

��������Ѿ�û�дն�������ְ��
����͵�δ������Ҫ�ģ�Ӧ���Ǹ�Ϊ��ȷ����Ϊ�������ˡ�

����ʹû����Ҳû��ϵ��
����������Ӧ�����ҡ�

�������ظ�����ɱ�˴�����˺�����Ϊ���������
�������ʲô��Ӱ�졣
��Ҫ���������������Ļ�������Ψ��ֻ��һ����

���������̣������ټ͡�
��ֻ��������û�������κη�����

�������Ҳ�ϣ������ʰ��һ��֮������ʽ�ķ�ͥ��
�ܵ��þ���
�������������̣����ҵ����Ļ��������ˡ�

������һ�����Ҿ����������־��п����ź���
�������ǵ������Ц�����ϱ���ĩ·�˰ɡ�
�����ǣ��𳤺�����ȴû������ҵ�������

���������Ѿ�ȥ����������״��
Ҳ������������ȡ�ҵĳ��顣
��û�������þ��ҵ���񡪡�����Ҷ���
���������صľ�����

�����ǣ��ұ������ˡ�<k>
����Ϊ�д����ξ��

����֪���ҵ���񣬲��Ʋ��ҡ�
���ôն�����ӭ����ȷ��ĩ·��

��������������ᷨ�Ƶ�ִ���ߡ�
����ȴ�Ǹ���㡢�������ķ��������ߡ�

�������׳���
������ԭ��

����Ӧ�Ӷᡣ
���Ӷ���Ӧ�����Ӷᡣ

����һ������

����������֦�����������۷ɵĳ�ޡ�
���������֣���ɱ������Ĵն����������Ʋá�

��ɱ��ɱ���ߡ�
����ƽ������ִ������ӹ���ɵ����塣

������

���Դն�������û�б�������ʵ�������
������������ն��а��

��ֻ����������Щ��������ȴ����ȥ���������ǵ�
�ߺ޲Ż�õ�ƽϢ��
������������ֱ�ػ������ϣ�ȴ������Ķ�
����ȥ����

����������ⱨӦ�Ļ���������ȷ�ļ�ֵ�ͻᱻ�񶨡�
��������������ܷ�����

�������Ӧ���ܱ�Ӧ����Ӧ�ô��������ȥ
���ӱ������϶�ȥ�Ķ�����
����Ȼ��������ȥ������Ҳ���Ḵ����������<RUBY text="����">����</RUBY>��ƽ��
����������Ƶ�һ��������ʧ��

��������Ϊ��ĶԿ��ߣ�����ڵõ���ʾ��
�������ͺá�ֻ�������������������ܳ�����
�˵����вŻ���������ϣ����

�������д档
��
���ܹ����������ţ�����˵�ϲ�á�

�����Ǳ�������ɱ��
��
������ȷ�Ľ�֣�����˵Ŀ��¡�

�������ξ��
��
�����Ҵ���ϲ����־���������Ǵն�������ϣ����

����л��������֦�Ĵ��ڡ�
���Ҹ�л����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����󤳤�

	OnSE("se����_����_�ɥ��Υå�01", 1000);
	WaitKey(1000);
	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270020a03">
���������ˣ����Խ����𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270030a00">
���ҵĴ�����ԶΪ��������
����ξ���¡�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�룺�������Ť������ȣ���090930��
//��������
<voice name="����" class="����" src="voice/mc04/0270040a00">
�����ң����������á�
����Ҳ������Ҫȥ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������
//������֦


	OnSE("se�ճ�_����_���_��01", 1000);

	StL(1000,@0,@0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(300,true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��û�����������к��¡�����ξ�Ϳ���̤�������С�
����Ҳ���������κβ��ף���ǰӭ������

�������ף��Һ���֮�������ֻ��һ����
��ûʲô��Ҫ����ȷ�ϡ�

����������˵���ڣ�����������
��
����������ˣ���Ҳ����ܾ���

��������߿���һ�ۡ���ξ���ز��ס�
������ͣ���ڿ����ŵ�С���ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270050a03">
�����������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270060a00">
������ô�䡣
���о����ʿ���������������ˬ����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270070a03">
���ǰ������������Ȼ��������̫���ˡ�
����Ȼ����֮��ʲôҲû�С���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270080a00">
������û�еĺá�
��������ʲô�������ƻ��⾰�۵İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������顣
	OnSE("se�ճ�_����_���饤���_��03", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��˵�ţ��ҹ����˴���
����Ȼ�Ҹо�������ˬ��������������֦С���к���
Ů��һ���ǽ���ס����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mc04/0270090a00">
�����ֳ�������ѡ�˸��õط�����ׯ��
���ڴ������½�סһ�ܣ��˼���Ȥʵ���ñ���
��ϧ����֮�ʡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270100a03">
���������Ⱥ�����֮ͨ���ɡ�
������үүҲ��ϲ�����ɽׯ������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270110a03">
��ÿ�괺���＾�����������һ�ܡ�
����������������һʱ�ڣ����ϰ��
Ҳ���ò��ж��˰ɡ�����


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270120a00">
������æ�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������ǺS���н�ѡ���Ĵ������أ�����
���˳����¾��ӷ��ѣ�ʹ�ô˴����һ������
ϴ�����ڲ�һ��Ļ��Ҿ���
�����ڴ˷�Ӱ�죬��λ����Ҳ��Σ�Ѳ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270130a03">
�������ϻ��Ǻ�ƽʱû���κθı䣬����
��Ȼ�Եõ����
�����Ǿ�������˵�������ﲻ��������
չ�����ж�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270140a00">
���ǡ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270150a03">
����������ڽ������ҡ���Ҳ
���ǻ�֦���ܱ߰ɡ�
����Ϊ��λ���ˣ�
�ӹ�ȥ��ʼ�͸��������õ����顣��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270160a03">
����������ϣ�����ڱ���֧����Ϊ�������Ҷ���
�����ߵĻ�֦��
�����ҿ϶����Բ��ᱻ�����ֵ���ʽ���С���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270170a00">
��������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270180a03">
�����Ѿ���������ˡ�
������û��Ҫ�������ĸ���Ը����Ѱ���ա�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ξ���ط���һ�����Ÿп���̾Ϣ��
��������̾Ϣ������������У���û����⡣

��װ����֪���ؼ����Ի���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc04/0270190a00">
�������ĸ���Ը�����࣬��Ҳ����е�ƣ��ɡ�
��ֻ����Щ�����Ƿ������ǿ���ѡ���

//��������
<voice name="����" class="����" src="voice/mc04/0270200a00">
����Ϊ����ļ�����������ͻ��������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270210a03">
���š���
������үү�����������Щ������
���ľͺ��ˡ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270220a00">
����˵���ˡ�
�������ξ�������Ǻ��ʵ���ѡ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270230a03">
��������


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270240a00">
���Դ�ξ���¶��ԣ�ϣ���������õ��������
û�иı䡣
����ô�������ֳ������ԣ�������ͬ�ж���Σ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270250a00">
��������ˣ���λ���˼��ϵ��ص�Ҳ�ܼ���
���ְɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270260a03">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270270a00">
������һʱ���죬
�����ڱ��˿�������������֮�١���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270280a03">
�������Ҳ����Ǹ����̰����ߡ�
������������ȥ�Ǻ��Ӻ�үү���ԣ�Ҳֻ���Ϊһ
������з���ռ�ط��ļһ�Ŷ����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270290a00">
�����������������¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ҿ��Զ϶���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270300a03">
����Ҫ̫�߹����ˣ��������ˡ���


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270310a00">
��������ξ��
�����˺����ס���

//��������
<voice name="����" class="����" src="voice/mc04/0270320a00">
���һ��ǵá�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	SoundPlay("@mbgm18",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150a]
�����ס��ǵá�
��������ξ��ʶ������������һ�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(4000,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	StL(4100, @-80, @0,"cg/st/stС̫��_ͨ��_˽��.png");
	StCL(4110, @80, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	StCR(4100, @-80, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	StR(4110, @80, @0,"cg/st/st����֦_ͨ��_�Ʒ�a2.png");
	FadeStA(0,true);

	CreatePlainSP("�}��д", 4900);
	SetTone("�}��д", Sepia);
	Fade("�}ɫ�\", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150b]
����ΪѲ��ٳ������Ǹ�С��Ĵ�ξ����Ļ����
�ط���ԱΪ�У���ͼ���ȴ�ׯ��
��������֪�Լ������Ľ�פ��ϣ������Ҫȥ���档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ�\", 1000, 1000, null, true);
	OnBG(4000,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(0,true);

	StR(4100, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	StL(4110, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStA(0,true);

	CreatePlainSP("�}��д", 4900);
	SetTone("�}��д", Sepia);
	Fade("�}ɫ�\", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150c]
��������ϣ���������ṩЭ����Ҳ����Э�������
�Ǻ��¼���ί�У���Ҳ���ݽ��ܡ�
��������˵���˲�Ϊ������֪�ģ����Ǻŵ������ֲ�֮����
ϣ���������ڣ���ȴû�гɹ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ�\", 1000, 1000, null, true);

	CreateTextureSP("�}����", 4000, Center, Middle, "cg/ev/ev173_����׏�������.jpg");
	StL(4100, @0, @0,"cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	StR(4110, @0, @0,"cg/st/st����֦_���_�Ʒ�.png");
	FadeStA(0,true);

	CreatePlainSP("�}��д", 4900);
	SetTone("�}��д", Sepia);

	Delete("@OnBG*");
	Delete("�}����");
	DeleteStA(0,true);
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev182_܇��ͻ�뤹�뾰���ȴ��B����.jpg");

	CreatePlainSP("�}��д�r", 3900);
	SetTone("�}��д�r", Sepia);

	Fade("�}ɫ�\", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150d]
�����������������ϵ�������˵ļ��Ҷ���֮�С���
����ξ�����˽�פ���ľ�����Ϊ��ֹ�����׵�����Ͷ
��Ϯ�����н���<?>
{	FadeDelete("�}��д", 1000, true);}
�ڻ���ڴ��ҽ���������ʱ��Ϊ����
���ң�������ս����ʨ�Ӻ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ�\", 2000, 1000, null, true);

	OnBG(100,"bg091_ɽ�P��һ��_03a.jpg");
	FadeBG(0,true);

	DeleteStA(0,true);
	Delete("�}��");
	Delete("�}��д*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150e]
�������ĸ����ǶԴ�ξ���˺���ʵ�棬������Σ
�յ���Ϊ��
��������ˣ���������ô���ϡ�

���ڳ�Ϊ�ػ�����Ķ�����������ϣ�û���κγ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStA(0,true);

	FadeDelete("�}ɫ�\", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc04/0270330a00">
����ξ���£������������Ĺ��塣
����ӵ�������ʸ�ȥʵ��<RUBY text="��������">��������</RUBY>��
�ְ���ͳ�ε��ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270340a00">
�����Ĵ��ڶԴ���ң�������������˵�
���������޺�����������
��������ӹ���ɵ��¡���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270350a03">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0270360a00">
����ξ���¡�
�������������ֵط�ͣ�Ͳ�ǰ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������ʶ���Լ�����˵������Ļ��
�����ǣ�Ҳ��ȫû���жϵ���˼��

��Ӧ��˵���ڵ�ʱ���Ѿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mc04/0270370a00">
����ִ�жԴն������Ĵ�����
��֮����ص���Ҫ�������ĵط�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��û�лش�

����ξ�����߱ܿ��ң�Ͷ���˴��⡣
���ǰ��ͨ͸�Ĳ���չ��������ǰ��

����ĺ�����
���µ�����һ���̹�ʵ������롣

������γ���������ò����ɫ�ʣ��޷��������顣
��Ȼ���Ⲣ������û�С��������ԭ֮�³����Ŵ��һ�㡣

��Ȼ�����������
��˫�������ż�����˿��������̬��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270380a03">
���������ֻ����Ҳ���㽹�����

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270390a03">
�����ǡ�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0270400a03">
���������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	OnSE("se����_����_�ɥ��Υå�01", 1000);
	DeleteStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������Ҳ�㲻�ϵ������жϣ���ξ����ת��������ߡ�
�����յ���Ƥ֮�£�����һ���Ŀ��̴����ҡ�

����ԡ����ʵ��ɱ���У�ȫ��ֱ��
������֫�Ĳ���������ӡ��


�����������Ҷ���ԭ�أ���ξ����������������
  �·���ȫʧȥ��Ѫɫһ�㡣�ޱȵġ����԰ס�


{
	CreateSE("�Ϥ䤢�뤭","se����_����_ľ����ä���i��01_L");
	MusicStart("�Ϥ䤢�뤭",0,1000,0,1000,null,false);
	CreateColorEX("�\Ļ��", 15000, "BLACK");
	Fade("�\Ļ��", 3000, 1000, null, false);
	SetVolume("@mbgm*", 3000, 0, null);
}
����ָ���������
�����䡣

�������и��ܵ���������


����ξ�������һֻ�֡�

����һ�������صȴ������ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�Ϥ䤢�뤭", 0, 0, null);
	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_028.nss"