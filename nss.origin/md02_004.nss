//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_004.nss_MAIN
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
	#bg098_ܥԽ����������_01=true;
	#bg031_��ᦌm����_01=true;
	#ev924_�y�Ǻ��|�I���ħ����=true;
	#bg001_��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_005.nss";

}

scene md02_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_003.nss"

//���£ǣ�
//��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg098_ܥԽ����������_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm23", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ʹ���֪������ΰ��Ѿ�������ǰ���¡�
���ƺ�˯���൱����ʱ�䡣

���Դ��������Լ����壬
ȷʵȫ����˯��ͷʱ���е�ʹ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ݤ���
	OnSE("se�ճ�_ˮ_ע��01", 1000);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040010a07">
����Ȳ衪����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040020a00">
�������ǳ���л����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������н���������裬
����һ���������Ⱥ��ż�衣
������Ϳڸж��ܺá�
�������������������Ҷ�������غܽ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040030a07">
�������Ƕ��ƣ��治�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040040a00">
������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040050a07">
���Ǳߵ���ա�
�����ܿ��帻ʿɽ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040060a00">
��������������
���⳯����ͥԺ��Ϊ�˹��͸�ʿɽ���𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040070a07">
��û����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040080a07">
�����⸽�����ܿ�����ʿɽ<RUBY text="����">ɽ��</RUBY>�Ǳ�
�޴�Ŀ���������Ȥ��Ӵ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040090a00">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040100a00">
����ô�����¡���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040110a07">
���ң���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040120a00">
���ǵġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040130a07">
��������ô������˵����ʽҲ��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040140a00">
���������ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040150a07">
���ÿᡭ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040160a00">
�������ʡ�
��Ϊʲô����Ҳ������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040170a07">
����Ϊ�����������ֻ��ú��鷳��
������<RUBY text="����">����</RUBY>ֵ���������°డ����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040180a07">
����ᦹ��¼�����˵���ҵĹ�ʧ��
���ڱ��׵��Ǳ�׷������֮ǰ��
����������Ϊǿ�����ڸ��ݵ��ڡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040190a00">
��������ᦹ��¼�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040200a07">
�������������ˡ�
��һ����������Ҳ̫���ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040210a00">
���ǡ���ȷʵ�ǣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040220a07">
�����⻹��û�й�����
�ڲ���ʧ�������������С�
����ᦹ��ͻ�����ȫ���ˣ�
����ʱ���ȥȴ������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040230a07">
�������ǿ϶��ġ�
���������Ѿ���ʼ׼���̳��ߵ������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040240a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������Ǻŵĳ���±����ɡ�����˲�������������
������������ս��ᱻ�Ǻڰ������������ɡ�
��������û��������ž�����ˡ�

�����գ�������ͼ���Ǵ���ˡ�
�����ǡ����������޷���ȥ���棬
�����鱨���ʮ�ּ�ࡣ

����������ȷ�����������ֺ��ͺá���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0040250a00">
��֪������������ֻ�������������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040260a07">
������
���ܾ��ãǣȣѵ��ж��ܿ��ɣ�
��Ļ��Ҳ��ʼ��������������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040270a07">
�������Ѿ�й©��ȥҲ˵������
����������Ҳ������ؾ��ܲ�ס���¡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040280a00">
���š�
�������ǹ��Ҳ�̸���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040290a00">
���ղ������ѯ�ʹ�������
���Ҵ������������¡���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040300a07">
�����������²��ܻ�����ġ�
����磬���ǻ���㵱�ɰ�����
��ı�����д��̵�Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������޷�������ԩ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/0040310a00">
�����ǣ���ֻ�������Ҹ��˵��¡���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040320a07">
��Ҳ���ҵ�ԭ�򡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040330a00">
������������ô���£���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040340a07">
�������úȡ�����

//�������`��
{	OnSE("se����_����_��򤹤���", 1000);
	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040350a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040360a00">
����ô�����ո��µ������
����ҽ��Ǻ��ִ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��Ŀǰ�������

�����뾡������֣���Ѱ�ᦹ���
��������ȫ�����������𳤱��档
����ܥԽ������ͬ��Ļ���Ҳֻ��ǿ��ͻ���ˡ���

�������ǹ�����ۡ����Ȼ�Ǿ��»��ء�
��Ӧ�ò����ס������ڴ����ָ�ǰ���������������

�����ǿӲ���ַ����������öԷ�����Ϊ�á���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040370a07">
��ûʲô�ر�Ĵ��㡣
��Ҫ��������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040380a00">
����������

//��������
<voice name="����" class="����" src="voice/md02/0040390a00">
�������ҵ��뷨Ҳû��ϵ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040400a07">
����Ȼ��
���Ҳ������ְ��������˵����͡�
�ұȽ�ϲ���ڱ���֧�ֶԷ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040410a07">
���������鷳����Ҫʱʲô�����æ��Ů�ˡ�
��Ȼ�Ǵ�Ů����������Ҳ����
���������㿴��������ͦ����İɡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040420a07">
��Ư��С��������׬���ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040430a00">
����������
����������֡���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040440a07">
�������һ�ܼ�į����
������ʱ���ز�ȥ������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040450a07">
�������������������Ļ�Ҳû�취��
��Ҫ׼���г��� �����������Ƶ�Ҫ�ðɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040460a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��������
�����������������Ů���ҵ����к�Ҫ��

���ǵ��˻��ǻ�飿
�����׽��˵�С�����޷��е�һ˿����ͱ��ﲻһ��
���ǡ������������Լ������Ǻŵ�ӵ���ߡ�

��������ʵ��
���������ʵ����Ϊ��Ҫ��ô����

������������Ŀ�ľ�����ʲô��

������̫�����š�

����Ϊ̫�����֪�Ӻ�����
���뵽ʲô�Ϳ��ʰɡ�����ش����ж��ٿ��Ŷ��ء���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040470a07">
����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040480a00">
������ʲô����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040490a07">
���һ������һ��ʱ�䲻������ˡ�
���ѵ�����Ϊ��������˵�Ե�ʣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040500a00">
������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040510a07">
��̫���ˡ�
���ȵ�����������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040520a07">
�������ƽ��������¼���Ҳ�ܾ�û�й��˰ɣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040530a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	Wait(1000);


//����ǈ�

	StC(1000, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	FadeStC(500, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����������⡣

���ǹ⡣
���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm37", 0, 1000, true);


//������
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg031_��ᦌm����_01.jpg");
	CreateTextureSP("�}����200", 2100, -200, InBottom, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	CreateTextureSP("�}����300", 2200, 100, InBottom, "cg/st/3d�����˜�_����_ͨ��.png");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw��_�Ñ�.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/md02/0040540a14">
������Ӧ�þʹ�ն���Ž�һ�£��������˵�ʱ����
��˭������ѭ���������桢ս����ɱ¾����
��Ҫ����������ʱ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���⡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 2000, -240, -460, "cg/ev/resize/ev924_�y�Ǻ��|�I���ħ����l.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw��_ͨ��a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���⡿
<voice name="��" class="��" src="voice/md02/0040550a14">
����Ϊ�񣬾��ܽ��ҵ�����<RUBY text="������">������</RUBY>��
���������ƻ������ܽ�ű��˷������ĸ��ס�����

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040560a14">
��û���κ��������͸��׾�������棡
�����ܽ���ĸ�����ߵĸ��׶��������

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040570a14">
������ǹ�İԵ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���⡭��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg031_��ᦌm����_01.jpg");
	CreateTextureSP("�}����200", 2100, -200, InBottom, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	CreateTextureSP("�}����300", 2200, 100, InBottom, "cg/st/3d�����˜�_����_ͨ��.png");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw��_ͨ��b.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���⡿
<voice name="��" class="��" src="voice/md02/0040580a14">
��֪�������������Ľ��С���

//���⡿
<voice name="��" class="��" src="voice/md02/0040590a14">
����֪���Ļ����ϣ���Ϊ�ҵ��������

//���⡿
<voice name="��" class="��" src="voice/md02/0040600a14">
��Ȼ��Ҳ�������㡭����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040610a14">
��Ϊ��������֣���ĸ��ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md02/0040620a00">
����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��w�Ӓ줫�롣

	OnSE("se����_����_���S01",1000);

	SetVolume("@mbgm*", 1000, 0, null);
	Request("@StC*", Smoothing);
	Zoom("@StC*", 300, @2500, @2500, null, false);
	Zoom("@OnBG*", 300, 2000, 2000, null, true);

	CreatePlainEX("�}��д", 10000);
	Fade("�}��д", 0, 1000, null, true);

	Shake("�}��д", 500, 50, 50, 0, 0, 500, null, false);
	OnSE("se���L_����_Ź��01",1000);

//�������`������ؤ롣
	CreateSE("�������Ĥ�","se����_����_ߵ��02");
	CreateSE("�������Ĥ���","se���L_����_Ź��05");

	SetBlur("�}��д", true, 3, 500, 30, false);
	Zoom("�}��д", 300, 2000, 2000, Dxl2, false);
	Rotate("�}��д", 300, @0, @0, @180, Axl2,false);
	Wait(300);
	MusicStart("�������Ĥ�",0,1000,0,1000,null,false);
	MusicStart("�������Ĥ���",0,1000,0,1000,null,false);
	Shake("�}��д", 500, 50, 50, 0, 0, 500, null, false);

	Wait(200);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	OnSE("se����_�n��_ܞ��03",1000);

	Wait(1);
	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg001_��a_01.jpg");
	FadeBG(0,true);

	Wait(2000);

	FadeDelete("�}��ܞ", 1500, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�������ָ�������ʱ��
�������ڴ��ϣ��������컨�塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���⡿
<voice name="��" class="��" src="voice/md02/0040630a14">
����������������

{	SoundPlay("@mbgm30", 0, 1000, true);
	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040640a14">
������ô���ҵؿ��󣬲��������������鲻�ѣ�
������˵���ǹ��Ը����
����Ҳ�ÿ���ԣãϰ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040650a00">
������<RUBY text="�ԣã�">�ʲ����з���</RUBY>��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040660a07">
���������£���<RUBY text="�ԣУ�">ʱ��ص㳡��</RUBY>�Ŷԡ���

{	FwC("cg/fw/fw��_�֤�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040670a14">
������Ҫ����ԣУϡ���
�����ڻ������磬�����������ȣ���Ÿ���������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040680a14">
�����ǣ��������׽��Ĺ�ϵҲ�ö����ǡ�
���������糿���ʺ򡣡�

{	FwC("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040690a14">
�����������硣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040700a00">
�����������硣��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040710a07">
���簡���������¡���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040720a14">
�����硣
�������ܿ�����գ�������泩����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040730a07">
�����������������򰡡���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040740a14">
��Ҳ������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040750a07">
�������ʱ����ô��
���ټ����е����߰ɡ���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040760a14">
���á�
�������������µĹ��򡣡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040770a07">
�����ҲҪ������
��ȫ��װ�װ��򡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040780a00">
������ȫ��װ�ף���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040790a07">
����ɲ�����ͨ����ϷŶ����������Ͷ����
û�����ܴ��У�<RUBY text="���������">����</RUBY>ÿ��һ��͵�
��ҽԺ����������ڻ���Աλ�ý���<RUBY text="��������������">Ͷ��</RUBY>�Ļ���
����Ͷ��һ����������Ϊ<RUBY text="���������">���ݴ�</RUBY>����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040800a07">
��ȫ��ѡ�־��Ǵ��Ͻ��е����ߣ�<RUBY text="��������">���Ǻ�</RUBY>��
��������ٿأ���ǿ�ܽ��б�����
�������İ������<RUBY text="�������">����</RUBY>�С���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040810a00">
������������

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040820a14">
�������൱�˷ܵ���Ȥ����������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040830a07">
���˷ܹ��ȣ�����������ʱ�򣬽���һ���
ѡ�ֶ��޷�˫��ֱ����
����磬��������û����Ȥ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0040840a00">
��һ����ȤҲû�С���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040850a07">
�����ź���
�����������л����޸��У���Ҳû�취����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040860a07">
���������ǻ���ϲ������İɣ���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040870a14">
�����ǵ�Ȼ��
���������������൱������Ӵ����

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040880a14">
���ڵ��ؿɱ���Ϊ����ħ������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040890a07">
�����������ı���������

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040900a14">
��˵ʲô����
����������Ҳ��һ���أ��жϱ߼ʻ����Ƿ�
�ڽ����ⷽ����Ǵ��˼���Ŷ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0040910a07">
����������΢����ܵ��˰�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������Ϥ���
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	OnBG(100, "bg098_ܥԽ����������_01.jpg");
	FadeBG(0, true);

	StR(1000, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStR(0, false);
	FadeStL(0, true);

	OnSE("se����_����_�����Ϥ���_��",1000);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��һ�����������ĶԻ���һ��֧��������
��������������ɢȥ��

����Ҳ����ƽ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md02/0040920a00">
���⡭����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0040930a14">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);
	SoundPlay("@mbgm32", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���������֣���ˬ�ʵػ�Ӧ��

����Ĥ��

���������µ�̬�ȣ������˸о�Υ�͡�
��Ϊ�����������Ȼ��̬�ȣ�

�������������£��Թ���˵�����������ģ�

���������ж���֮ʱ�����޷��������ܵ���
�����Ĥ���������ʱ���Ӻ������ڡ�
����������ǰͬ����Ŀ�⿴���ҡ�

��������˵�����ҵĹ�ϵ���ɲ��䡣

�����ǲ����ܵġ���һ�ж����ˡ�

��Ҫ������û�䣬������ä�Ų��Ƿ��
�����Ȼ���ˡ�<k>
������ô��Ϊ��<k>
��<RUBY text="������������">���������Ϊ</RUBY>��

��ϣ����������Ϊ���ű�Ϊɱ¾�����Ǻš�
����ˣ�ֻ��̾Ϣ�ⲻ�ҵ����˾ͺá�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����¤��ݳ��򤹤뤿�ᡢ�����Υ�����ɥ��ϙѾ��������äƤ��� inc�Ѿ�
//������������ϡ��ϤΥ�����ɥ����ޥ��ĩ�ˡ��¤Υ�����ɥ��ȶˤ����������OK

	CreateColorSP("�\Ļ��", 50, "BLACK");
	Fade("�\Ļ��", 3000, 1000, null, false);
	FadeDelete("@OnBG*",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����ǡ�

������������û�з衣
�����籾����˵��һ����<RUBY text="����">����</RUBY>֮�¡�

����������

���ǰ�ɱ¾��
���ǰ��ֻ���

����������ʧ������

������Ը��������Ļ���

������ֻ����������䴿����ŵĻ���

�������ǿ�����

��û��<RUBY text="����">���</RUBY>��
��û��<RUBY text="����">����</RUBY>��

��ֻ��׷Ѱ��Ը����<RUBY text="��">��</RUBY>��ɱ¾���ࡪ��

���ٻ����硣

���������п�����

��������������ܡ���<k>
��
��
�������������������������Ҹ���ô����

����ĸ������
���Լ��ڹض�ɢ�����ֶ�

���������ڹ�����׶���ɵĻ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����

	ClearWaitAll(500, 500);

}

..//������ָ��
//�Υե����롡"md02_005.nss"