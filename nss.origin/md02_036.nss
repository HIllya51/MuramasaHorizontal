//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_036.nss_MAIN
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
	#bg097_ܥԽ�����ھ����β���_01=true;
	#bg001_��b_01=true;
	#bg039_��������ϯa_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_037.nss";

}

scene md02_036.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_035.nss"

//���
//��ʳ׿

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��һ�����¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @30, @0,"cg/st/st�衩��_ͨ��_��װ_b.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0360010a07">
������ȥ�棬��׼��һ�¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0360020a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0360030a01">
��ȥ�棿��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 2000, 1000, null, true);

	Delete("@OnBG*");
	DeleteStA(0,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Сʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ա����`�ä�܇��������
//����奵�`���å�
//�����`�}���`���åȤ�����or΢������󥸤ǡ����⡣

	CreateSE("܇", "se�\��_܇_�k܇01");
	MusicStart("܇", 0, 1000, 0, 1000, null, true);
	OnBG(100, "bg001_��b_01.jpg");
	FadeBG(0, true);
	FadeDelete("�\Ļ��",1500,true);
	WaitKey(1500);
	SetVolume("܇", 1000, 0, null);

	OnBG(101, "bg039_��������ϯa_01.jpg");
	FadeBG(1500, true);
	Delete("@OnBG100");

	SoundPlay("@mbgm25", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������ڿ��ӹ�С¹������ҵֱӪ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md02/0360040a01">
�����������ðɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0360050a00">
���������á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ϰ�߳˳����У���΢�е��γ���
����Ȼ��û��Ҫ��ȥ�����ĳ̶ȣ�����Ұ��Щ���ȡ�

��Ҫ��<RUBY text="����">����</RUBY>�лָ���������Ҫ��ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_��װ_b.png");

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md02/0360060a00">
��˯�߲���Ҳ��Ӱ�졣��

{	FadeStL(300, false);
	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0360070a07">
����ѽ���������Ҳ���𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0360080a01">
��Ҳ����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0360090a07">
������Ҳ�ǡ�
���������������ϰ�ҹ��ԭ��ɡ�
��������ڷ��û������������ӣ�
�Ҿͷ�����û���ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0360100a00">
����������������


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��Ҳ����˵���Լ����ڷ���˯�����ˣ�
����Ӧ������Ϣ���ɵ��������Ŷ԰�����
�����ڻ���ͬ�ˡ�

��Ҫ��˯�����Ļ����Ҳ��ڵ����ʱ�䣬
��ҲӦ�ò��������Ǻ�һ������ɧ����
����Ӳ��������������û�������ȥ��

��˵��<RUBY text="��">��</RUBY>������ʵ�������������������ܥԽ����������
������˵��׼��
����������������˼�ȽϺá�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_��װ_b.png");
	FadeStL(300, false);

	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw�衩���װ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0360110a07">
��Ҫ����ط���Ϣһ���𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0360120a00">
��û�¡�
����˵���¡���ΪʲôҪ�������

{	FadeStR(300, false);
	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0360130a01">
���ǰ���
��Ϊʲô�ҷǵ���������һ�߸���·����
�ṩ����һ�������ֵط�����

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0360140a07">
����û���㣬ֻ�����Լ�ӲҪ�����İɡ�
{	Wait(500);
	FwC("cg/fw/fw�衩���װ_Ц�.png");}
��������磬���ǽ�����ʲô�������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0360150a00">
�����졭������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0360160a07">
���������Ļ��
�������ս��������Ӵ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��˵������
�����ڶ��¶˵ķ�������ȫ�����ˣ�ԭ���ǽ��찡��

�������ս��������ҵ��������˾ÿ�깲ͬ�����
��������ô˵��Ҳ�����⼸�����
�����Ǹ�װ�׾���������
����ģ�Ļ�Ҳ�����

�������μӵĸ��Ŷ������Ķ�����׼����ʤ�������壬
���Ҳ���ܰ����ߵĹ�ע��
����Ҳ��Ϊ�˵õ��ۿ�ϯλ���Ĵ����ܵľ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0360170a07">
�����룬��ϲ��װ�׾����ĸ����˵��
�ǲ������Ļ�ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0360180a00">
���ţ�ȷʵ��
��������Ҳͦ�˽��ҵ���Ȥ����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0360190a07">
������Ϊʲô�ء���
������˼��ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	SetVolume("@mbgm*", 1000, 0, null);
}

..//������ָ��
//�Υե����롡"md02_037.nss"