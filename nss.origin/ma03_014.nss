//<continuation number="670">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_014.nss_MAIN
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
	#bg035_�`�}���`���åȸ��a_01=true;
	#bg039_��������ϯa_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma03_015.nss";

}

scene ma03_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_013.nss"

//���`�}���`���å�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SoundPlay("@mbgm22",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ڶ��죬�������
���ұ�������������һЩ���ﾺ��������Ϊ��������
�𳤰��ŵ��Ǽ�������ȷ�ϡ�

���Һã��������û��ʼ��
��������û����Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStA(0,true);

	FadeDelete("�ϱ���", 1000, true);


	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140010a02">
���������뾯��ӣ��𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140020a00">
���ǰ���
���Ұ����𳤰������Ȱ��ź��ˡ������Ժ�
������Ϊ����ӳ�Ա���ж��ˡ���

//��������
<voice name="����" class="����" src="voice/ma03/0140030a00">
������֤��֤����
�����Űɡ��޹���Ա����ĳ�����ֻҪ��ʾ��
��֤�����ܹ�������ؽ��롣��������������
������Ǳ���ˡ���

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140040a02">
���ǡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140050a03">
���ж���÷�������ء�
����������Ҳ��������ǵз�������˶�����
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140060a04">
����ʱ������Ӧ��ɡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140070a03">
��Ҳ�ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_���`���å�02_L");
	CreateSE("SE02","se����_����_���`���å�04_L");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������˵�Ż�ʱ��������֪ͨ�������ʼ�Ĺ㲥��
�������ǿ�ǹ�졣
���Ѿ�����׼���Ķ����Լ��ʮ��֧�����ǽ��ɳ�����
������������������

{
//�������SE��Ҫ������`���Фέh������`�׌��꡹
	MusicStart("SE01",2000,700,0,1000,null,true);
	MusicStart("SE02",500,1000,0,1000,null,true);
}
��ת�ۼ�����ǹ������źſ�ǹ���ƽ�����������
����ǹ����ʼ�������ϼ��ۡ�
�����������Ǻ���������ʧ������ϯ���������ͺ������С�

�����ٿ�ʼ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140080a02">
��������ô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������Ϥװ�׾�����һ������Ǳ����������˶��䣬һ
���������Ŷ���һ���ʵ���
�������˽⾺�ٵ�����˵���տ�ʼ��Ļ����ǳ�ʶ����
������һ������Ϊ�⡣

���Ҽ��������ˡ�
���辩����嶼û������

�����ǿ϶����������տ�ʼ��Ļ��һ�ʹ�����⵽��
�ˡ�����ϰ�ߴ��ֳ���ľٶ���
����ʵ�ϣ�����������ڵ�һ�������ײ�������ɣ���
������<RUBY text="Escape Zone">������</RUBY>չʾ�����ģ����

������һ��һͷ������ɳ���ϰ���
����Ӧ���Ѿ�ûϣ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma03/0140090a00">
��������������״����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0140100a01">
������Ŀ���
������˳��˵һ�䣬��̨����ǽ�ڵ���Ҫ����
��Ԯ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140110a00">
�������ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 2500, 1000, null);
	SetVolume("SE02", 2500, 500, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ʹ�ڿ��������ݶ��ϣ��Դ��������������ܿ��塣
���ҿ�����Ҳ�ܴ�ײ����״�����������

�����ǣ������Ĺ�����Ա�Ѿ�ϰ����������̬�� 
�������кü��˷ɳ�����������������������
<RUBY text="Afterburner">�����ƽ���</RUBY>�Ļ��棬�ȳ����֡�

���������ӣ�Ӧ��û������Σ�ա�
����Ȼ����ȫ�٣���ȫ�������м��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/ma03/0140120a01">
���������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140130a00">
������������û�취����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���һش��˴����Ծ�������ĵ��
����������ս������Ķ���ʦ�������Ӹ߿�׹��Ҳ����
�ˣ��������ڵ�������ײ���̶ֳȱ��𻵵Ľ��У�
����û�����۵ļ�ֵ��

���뾺���ý�������ĵͿջ��������෴�����ǵ�����
ǿ�����ܡ�װ��ǿ�ȵ�ս�����������ʮ�ֵ��ӡ�
�����ɺܼ򵥣���Ϊ����Ҫ��

���������ڷ��Ϲ涨�������ײ������ײ�¹��б�����
����������װ�ױ��㹻�ˡ�
��������ȫ����������ٶȺ��˶����ϡ�
���������޷�����ܻ�ʤ�����塣

��׷�����ٶȵĽ��У���װ�׵ı���������ѹ�������
���ǳ��е��¡�
����һ��ҡҡͷ��ʾ�ش𣬼����۲콫һ�м����ڵ�ͬ
���鳵���ִ��ڵľ������ǡ�

����Ȼ��������ǿ����Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����衿
<voice name="����" class="����" src="voice/ma03/0140140a04">
���Ѿ���һ���������ء���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140150a03">
����͵ĳ�����Ȯ����
�������������޵��˰ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140160a00">
����ֻ�����壬����Ҳ��һ���ġ�
���Դ�ʽ������Ŀ��ƺܺá���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140170a03">
��������������������ٶ����Կ��ƵĲ��֡�
����ʽ�������ս��Ҳ�ǳ�Ư������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140180a02">
��ι����
����������Ĺ�����ʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140190a04">
�������������ͬ���ڹ涨ʱ���ھ���
<RUBY text="Best Lap">��쵥Ȧ�ɼ�</RUBY>��
��ǰ��ʮ������Ի������μӾ������ʸ񡣡�

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140200a02">
���ǣ�Ѹ�ٿ�ʼ�Ķ��鲻�Ǹ�������
����û���ֵĶ����кܶ�ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140210a04">
���������������������׻�˵�����򲻴
��̫��������п�����ղ������⵽���ҡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140220a02">
��������������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140230a04">
����������Ĵ����϶���ȷʵ��ʵ���Ķ��飬
��ʱ������ָ�Ӧ�õ��ǵ����¹ʡ�
����׼ʱ���μӣ�ȫ�������ɼ���Ѹ���뿪��
�����<RUBY text="Theory">׼��</RUBY>����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140240a02">
�������������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140250a04">
��û������������
  ���Ǻ�Ͱɡ��ɼ��ǡ���һ�ֶ�ʮ����һ�š�
ԭ����ˣ�ԭ����ˡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140260a02">
���ǲ���ĳɼ��𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140270a04">
�������ܽ���ǰ��������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140280a02">
��������
���ţ��������ڸ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140290a04">
����ѽ�������ڻ��ź��졭��
����С�㣬��֪������ʲô��˼�𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140300a03">
����������������Ч���е���˼�������ǵڶ�
ʮ��š������޶���������ŵ�ذ�׼����š�
��������Խ�����ȡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140310a02">
��Խ�����ȣ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140320a03">
�������ϲ��ǽ��кܶ�<RUBY text="Arch">����</RUBY>��
�������߹涨Ҫ�ӹ������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140330a02">
����������ԭ����ˡ��������ˡ�
����Ϊ�������ڿ��з��еģ����û�����ֹ�
��������û�����ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140340a03">
��û��������ȵĻ����ڴ�֮��ķ��оͻᱻ
����Ч��
��ֱ�������߻�������������ȡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140350a04">
��������Ԥ��ʱ�Ⲣ����ʲô�����⡣����һ
Ȧ���ע������ˡ�
�������ھ�������������Եġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140360a00">
����������׼�����������嵽ʮ���ʱ���˷ѡ�
����һ�����޷���ʤ�ˡ�
�����������ٷ�������ʱ�������ۡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140370a02">
��������
����˵�����ҷ����������ˡ��ն������Ѳ���
ϲ��<RUBY text="Armour Race">װ�׾���</RUBY>�𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140380a00">
��ϲ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ѧ��ʱ������������װ�׾����о��ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140390a02">
��������Ȼ��
�������ǡ��Ǵն����������ܽ̽����𣿡�����
���ٵĸ������顣��

{	SetVolume("SE01", 500, 500, null);
	SetVolume("SE02", 500, 0, null);
	SetVolume("@mbgm22", 500, 0, null);
	SoundPlay("@mbgm25",500,1000,true);
	FwC("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140400a04">
����С���Σ����
�������á�������������Ȥ�������˽�����
��һս����Ȼ��ȴ��ץס�������ⷽ��ʮ
�֡��ǳ�����Ч����

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140410a03">
����˵ʲô����!?
�������²���ԭ�£���

{	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140420a02">
���������������ǵ�!!
����ֻ�ǡ������������˽�Ļ����ܻ�Ե���
�����а�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140430a04">
��Ư���ĳ��滰��
����ô�����Ļ���ʲô�أ���

{	FwC("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140440a02">
���ף����š�������˽�ն���������
{	SetComic(@0,@0,15);
	FwC("cg/fw/fwһ��_ŭ��a.png");}
���Ź�!!����������˵ʲô!?��

{	DeleteComic();
	SetComic(@0,@0,13);
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140450a03">
����Ů����

{	DeleteComic();
	SetComic(@0,@0,13);
	FwC("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140460a04">
����Ů����

{	DeleteComic();
	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140470a02">
���쵰��Ҫ����������Ϳ��ˮŶ!?
���ա��ն�����Ҳ˵��ʲô�ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140480a00">
�������𡣡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140490a02">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140500a00">
�����ھ��١���
���ӷ�Դ��ʼ����ŷ�޵ı��������У�����
��ʼ�ڴ�ͳ��֡���չ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140510a00">
��<RUBY text="���ף�">��������</RUBY>������<RUBY text="Afterburner">�����ƽ���</RUBY>�ǳ����������
ի��ΰҵ����͵Ĺ���������Ȯ����ŷ�ޡ���
���ֵܵĿභ������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140520a00">
��Ҫ���Ļ�һСʱҲ�����ꡣ��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140530a02">
�����������Ǹ�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140540a00">
��������Ҫ��һ����������
��Ҫ˵������������ʽ�������ʽ�������Ե�
��ȱ�㣬��ͼ��˵�����ĩ��Ͳ����ƽ����Ĺ�
�졣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140550a00">
����Ҫ�͹�����ж�������ϵ��ʵ��Ӱ�����
���޷�����ת��������ķ�������������
�����ɵ��������ù���Ĺ���������������ܡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140560a00">
�����������ǰ����Ʒ���бȽ����۲���˵��
���������ģ����������Ļ���Ҫ�������
<RUBY text="���ף�">��������</RUBY>�����ϵ�
����ȸ������ۿ�ʼ������

{	SetComic(@0,@0,17);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140570a02">
���ǡ��Ǹ������ն���������

{	DeleteComic();
	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140580a03">
���������ˣ�������������
���ܾ��ú����Ը񶼱���һ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140590a02">
���������Ҳ����𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140600a04">
����λ������һ�����ܰ��µĿ��ء������䡢
�˸���ȫ�޹ء�
�����ע�⡣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140610a00">
��������֮���������ĵǳ�������˵������
����ʱ������ˡ�����һ���棬Ҳ����˵����
�辩����֮��Ĳ�౻�����̻��˳�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0140620a04">
���������ʱ���ܣ���������أ���

{	Move("@StL*", 200, @-300, @0, Axl1, false);
	DeleteStL(200,false);
	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140630a03">
��Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateTextureSP("�}�ӣ�2000", 2000, -1024, middle, "cg/st/resize/st����֦_ͨ��_˽��a_l.png");
	Move("�}�ӣ�2000", 0, @0, @+210, Dxl1, true);

	Move("�}�ӣ�2000", 300, @1024, @0, Dxl1, true);

	CreatePlainSP("�}��", 5000);
	Wait(1);
	CreateColorSP("�}�ե�", 5500, "#FFFFFF");
	SetVolume("@mbgm25", 300, 0, null);
	SetVolume("SE01", 300, 0, null);
	OnSE("se���L_����_Ź��02",1000);
	Wait(10);
	FadeDelete("�}�ե�", 100, false);
	FadeFR2("�}��",0,1000,300,0,0,10,Dxl2, true);
	Delete("�}��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����Ӱ���һ����ȭ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�ӣ�2000", 200, @-60, @0, null, false);
	FadeDelete("�}�ӣ�2000", 200, true);

	StL(1000, @-30, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma03/0140640a00">
����������ʧ���ˡ�
���ոպ����е����ҡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0140650a03">
����ѽ�������������ǵġ�Ŷ�Ǻǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0140660a00">
��һ�������Ժ��п����İɡ�
����������������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0140670a02">
���ǡ��ǡ�˵��û����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



..//�øжȷ��
//���øжȷ�᪡��øжȤ����ߤ��ҥ���Υߥ˥��٥�Ȥ˽ӾA���롣
//����������ȫ�ҥ���һ�������_���Ƥ��ʤ����Ϥϥ��٥�ȟo���Υ�`�Ȥ�

..//������ָ��
//���������ΤΥ�����ץȤ��v���ơ��ҥ���e�˥�����ץ��ڤǷ�᪤��ޤ���
//�Υե����롡"ma03_015.nss"

}


