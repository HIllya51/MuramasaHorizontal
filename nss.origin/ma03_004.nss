//<continuation number="1700">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_004.nss_MAIN
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
	#bg031_��ᦌm����_02=true;
	#bg032_��ᦌm�������a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���m=true;

	$PreGameName = $GameName;

	$GameName = "ma03_005.nss";

}

scene ma03_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_003.nss"

//����ᦌm��Ϧ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg031_��ᦌm����_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm19",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ᦹ��ɳ�֮Ϊ���ֵ����ġ�
������Ҳ�ã���ʷҲ�ã�����Ҳ�á�

������һ�߶���������һ���������꣬���ϵ����Դ��
��������֮����Դ���壬������������غ׸Լ��롪��
Լ���������������԰�ᦹ�
Ϊ���Ŀ�����ʿ֮�������֡�

�������˰��꣬���ֵİ�ᦹ���ΪԴ�ϵ��ػ��񡭡�����
����ʿ���ػ�������ڡ�
�����ִ�������Դ��֮������������һ�嵱�У�
����Ҳ�����˷�ͬһ��ĳ羴��

������ÿ�����ι����ΰݣ�ÿ��ϲ��ɥ��Ҳ���м�����ʽ��
��������������ʢ�󣬲����ò������������ε�ɫ�ʡ�

��Ƶ�����޽����������ݵ�װ��Ҳ����Ϊ��ͬ�����ɡ�
�����ϵ�װ�ε��������ϵ�װ�Ρ�
������ңң������������ĳ�ˡ�
����Ҫ˵�Ļ���Ҳ����װ��֮һ��

����ᦹ�����ž���С���
����˵���������븽��������ȥҲ�����
������������

��С��֮���ƺŵ�����Ҳ���⴫�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���H����ǰ
	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������������
���ȵ۵�ĩ�ӣ���λ�̳����μ̻�����̫��֮�����еڶ���

�������ΰ�ᦹ����볤��һְ֮�£�
Ҳ����ʾ�������޵��������ڻʾ���
������������Ҳֻ�Ǳ�����ѡ�

��ʵ���ϡ�
����ֻ�������������ҳ�ԱҲ�����ɲ��ݵ�Ȩ��֤����
Ȼ�󡪡���Ϊ���ʶ��ѡ�
�������򷢸������޵�����Ʒ��

�����Ӷ���ҡҷ�ŵ�Ӱ�ӣ����������Ĵ��ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040010a11">
�������¡�
���ҽ��ն����������ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040020a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������Թ�ݡ�
����������Ϊ���˵�������������Ի���֮ʱ��
Ҳ������˵����

���ȴ��Է�������
��������û���ȴ��ĳ̶ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm19", 300, 1, null);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

	#voice_on_���m=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050a]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040030a10">
����λ���Ǿ�������
���ճ��𳤾���̸�����ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateSE("SE01","se����_����_��Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetVolume("@mbgm19", 1000, 1000, null);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050b]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040040a10">
��������ô�ˣ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040050a11">
��������⣬�����¡�
��ֻ��ߵ����ѡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040060a10">
������������
������ò�ĺ��Ӱ������ǣ�
��ɲ�����˾н�ม���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040070a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ͳ����پн�һ���𣿻ʵܵ��¡�
�������������ش𣬲���֪��ͼ���ظ��𳤴������š�
��ΪԲ��������Ȼ���Ҳ�������ʡ���������ʾ��л��
�ٶȵ������Դ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma03/0040080a00">
��������ּ��
��ɱ������ʮ�˼����������е�
���ɷ����ն�������Ӧ��ǰ���������

{	FwC("cg/fw/fw�H��_Ц��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040090a10">
���۹�����������
������Ȥ������������ӣ���

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040100a11">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040110a00">
��������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040120a10">
����������

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040130a10">
������������

{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040140a10">
����⣡�����ڲ���Ц��ʱ�򣡡�

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040150a11">
��ȷʵ�������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040160a10">
����Ǹ������������
����Ϊ�����ֵ��ʺ���������Ϊ
��ʲô�־��Ц�ˡ�
�ж�����˼����֮���ע�⣬�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040170a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������֪Ϊ�ηǳ�������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma03/0040180a00">
����Ȼ����֪������ô˵��
��������¹������Ļ���
��᲻���е㲻̫�����أ���

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040190a11">
����������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040200a10">
�����ǵġ�����˵�����������Խ��ء�
������������ǰ��һֱ���������ø�����ᣬ
�Ӿ��Ǳ����ߣ�
����������һֱ��Ļ����Щ�һ��Ʋ��𡣡�

{	FwC("cg/fw/fw�H��_����.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040210a10">
���������˲����鷳��
������Ҳ�ܱ�Ǹ����Ȼ�µ�����˵����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040220a11">
���鷳ʲô�ľ���û�С�
�������¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���𳤳���������һ��
�����Ƕ���Ϊ���ε�һ˲�䣬�����Ͷ�����ߡ�

�����ס�
������ԭ����ˡ�Ҳ����˵����λ��������ʵ�Ǹ�
<RUBY text="��������">��������</RUBY>���ˡ�

��Ļ���Ծ�����͢Ƶ����������Լ��
Ϊʲôֻ���������źܺõع���أ�
Ϊʲô��ѡ���������Ϊ����Ķ���
�����ƺ��õ��˴𰸡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma03/0040230a00">
��ʧ���ˡ�
�����������¸���Ԯ����
���Ե�˵Щ����֮�ԣ�
�����Եص�Ǹ����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040240a10">
����Ҫ��ô˵��
�����ܰ��������ҲŶ԰�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040250a00">
��ɱ�˵�������Ӧ�������е��ң�
��α������ͣ�
����׷�����Ǻ�Ҳ�Ƕ�������º��𳤵�ͬ�⡣
������������������𱨡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040260a10">
����ѽ��ѽ��
����Ӧ���Ǻ��¼���һֱ�����������ˡ�
��ί����Щ�������£�ʵ�ڱ�Ǹ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040270a00">
���������ˡ�
�������Լ����¹�ȻӦ�����Լ��е�����

//��������
<voice name="����" class="����" src="voice/ma03/0040280a00">
�������ޱ���������δ�����Ӧ�ܵ���Ӧ�ĳ���
������ֵ�����͡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040290a10">
�������ճء���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040300a11">
���ǡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040310a10">
��������ĺ��Ӱ�������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040320a11">
�����Ƕ�����
��ʧ��ĵط�������ԭ�¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040330a10">
�������Ⲣ�����ѡ�
����Ȼ�������ѡ�����

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040340a10">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040350a00">
���ǡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040360a10">
������Ϊʲô�������أ�
��Ϊʲô���������ˣ��������أ�
����Ҳ̫��Ū�˰�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040370a00">
��������

//��������
<voice name="����" class="����" src="voice/ma03/0040380a00">
�����£����ⷬ����
�����Ǹ�����Щ����ȴ���������ϵ���˵����

//��������
<voice name="����" class="����" src="voice/ma03/0040390a00">
�������ҡ�
�����������ǡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040400a10">
��������������������
�������ǰ�����������

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040410a10">
���ţ�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040420a00">
���ǡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040430a10">
������Ҫ����������ֱ�Ӵ��������˵��Щ�¡���

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040440a10">
�����Ѿ�������ˡ�  
������������ܾ��ò����С�û��ʵ�а��� 
������������֮�£�ȴ�������Թ��ߵĸо�����

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040450a10">
�������˻̿֡�
������Ӧ��֪���ġ��úø����ң�������������
���������¡�
��������������������

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040460a10">
������֪���Լ�����˷��˵�����
����Ȼ֪������

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040470a10">
�������������Լ������Ρ���
����Ȼ��<RUBY text="����">����</RUBY>�������Ǻ����¼�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040480a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Ȼ����������ϣ���رܵġ�
������ܾ���Ҳ������ǿ�İɡ�

�����Ǻŵ����⣬������˵��ȫ����˽�¡�
����������ô��Ҳ���ᶯҡ��㡣
�����ҵ�ϣ����������˵������
<RUBY text="����">�Թ�</RUBY>�ľ���С�����û�����̵ı�Ҫ�ԡ�

������
����ղ���˵�������������³�Խ����������Ҳŵ���
�뿪����׷�����Ǻš�

�����仰˵���ҵ������뿿������Ԯ��
�ŵ����ж���װ���������졣
�������������ߵ�Ҫ����Ȼ���ݷֱ硣

��������˳��ʼ������
�������о�����������顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�ȥ֥�å�������
	CreateColorEX("�}��ܞ", 15000, "#000000");
	Fade("�}��ܞ", 1000, 1000, null, true);

	Wait(1000);

	FadeDelete("�}��ܞ", 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ϣ����������˲衣
����������Ĳ�ϯ����Ȼ��������̫���淶��
���������𳤶�û�и������⣬����ƽʱҲ��������

������Ȱ˵������΢���˸��������ƣ��Ѳ���������� 
��ʢ��������Ҳ�����ֱߵ�λ�á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040490a10">
��������ʹ�����ĸ�������˰ɡ�
��ֻ�������Ե��޴����ѡ���

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040500a10">
����˵�йصİɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040510a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ɱ�ʲô��Ҫֵ�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040520a10">
����һ�����ǺŻ������
������ѩ��������������� 
�ƺ���ǿ�ҵĲ��������Ӱ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����֣����������Ҹ���̸����������ͬ��
��������Ҳ������֡��鱨���������£�
�õ���ͬ����Ҳ��������Ȼ�ġ�

����̫Ѹ���ˡ�
����Ȼ����ô�������⹬��������������ͷ�ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040530a10">
��ֻ��������å��ȴ������ҡ�ε���
�ִӽ�פ������õ����С���
��ʵ���������Ⱑ����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040540a11">
�����Ǻŵ��µ��������
�������Ǹ����������е㴧�⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����������˵������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040550a10">
���ޡ�ʲô���ܶ����˵������ô��
�����ˡ�˵�ɣ�����Ļ�ų�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040560a00">
������Ļ�ţ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040570a10">
���ǰ�������������֪���� �𿴱���������
��ǰҲ�Ϲ�ս���İ���Ҳ���ǵ��ҵ�����
����ʱ���չ��ҵľ�����ճ��𳤡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040580a10">
��Ǧ����ɵĵ�������ĸ������
ʲô�������Ĵ򽻵�����
�����û�������ܸɵ�Ļ�ų��ڣ�������
����¡���һ���ӵĶ��˰�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040590a11">
��û�ǻ��¡�
���Ҳ��ǣ�û�е��µ��չˣ�
���ۺ���޷��õ�����һְ��
��ͷ���������˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��˵�������µĶ��ˡ�
��������ǰ������ϵ���� 

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040600a10">
����Ҳ��ಮ�ٰ���
����Ӵ�������ܿ��ˡ������Ʋ���ʲô����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040610a11">
���ǡ�
�����룬Ҫ����ѩ��������˵ı��⡭��
���ȱ���ѣǣȣѵĴ��ڷŵ���Ұ���

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040620a11">
�����ԣ����塪����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040630a10">
���ȡ��ȡ���
����һ�º����𳤡���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040640a11">
���ǣ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040650a10">
���������Ժ���˵��˵�����µĻ���
�ͱ����Ƚ�������
�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���������֣��������̡�
��С���طԸ���ʲô��

������Ѹ��Զ��ĽŲ����ٶȷ���֮ʱ��
�Ų�������Ŀ�����������Ű徲���������ż��򿪡�
�������ȴ��ŵ��ǽ��̰ɣ�����û�п�������Ӱ��
ֻ�������¼������λ�����ڴ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦�Ȥ���


	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040660a03">
���յ������ٻ���ǰ�������
�������¡���������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040670a03">
����ѽ����

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0040680a04">
��������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040690a00">
���������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��û����������������������ӡ�Ҳ�������ױ��������ˡ�
��ȷʵ�����˾������Ĵ�������֦��ξ�����̴ӣ�
����ɴ��Ůʿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040700a10">
����Ȼ����ʶ����
���ղž�����˵���ģǣȣѵ�
����Ѳ��ٱ������ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040710a00">
���ǵġ�û��
����Ϊ�Σ������������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040720a10">
����ѽ���͸ղš��������ϵ��°�����
����������֦�Լ�ɴ�����Ǳ������ɡ�
�����������ϲ衣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040730a03">
���벻�ؿ�����
����������������һת���ּ����ˡ��������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040740a00">
���ǡ�����

{	FwC("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0040750a04">
�����Ǻ����������İɡ���

{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040760a03">
��ѽ�����������ᡣ��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040770a00">
��������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040780a10">
����ѽ�������൱�����
�������������������ӡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040790a11">
�������£���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040800a10">
���������š�
�����磬����ǰ���������һ�������⣬
ԭ������Ϊ������ᦹ��ľ��������εġ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040810a11">
�������ǡ�
��ԭ����ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040820a10">
��֮ǰ����ǣȣ�Ҫ�������Ĺ�Ա����һ�°ɣ�
����ѡ���ھ����ɴ˶���ǰ������

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040830a10">
��������ȫ�����ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040840a03">
���ҷ��Ĳ����������´������㡣
���ǳ���Ǹ����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040850a10">
�����ò��ã�������⡣
�����㱾���ǽ�פ����Ԫ˧����Ҳ����̫�����ҡ�
˭Ҳ����ȥ������û�õı���������

//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040860a10">
������֦Ҳ���࣬
���鵽����ǩ�ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040870a03">
������û������¡�
����פ��˾��Ե������������
����������±�ʾ���ġ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040880a03">
���ҵ�ְ���Ǵ���˾��ڹ�������߹�����
Ϊ���ܷ��㴦�����¡�
����������ְ�ء������������ǣ�
����ʲô���ܷԸ�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040890a10">
��������������
����ֵ�ø��˰����԰ɣ��𳤣���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040900a11">
���ǡ�
����ȷ�����˸����˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������Ц�Ž�̸�����ˡ�
����������������˰����ſ��ơ�

�������˵Ĺ������������ΧҲ��û�취�ġ���
��ԭ����ˣ��ֲ��øղ���̸���ǣȣѵ��£�
�����ʹ�ס�ˡ�
��ǽ�ж����������˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040910a10">
����Ȼ�������ף����ƺ���Ҷ���ʶ��
���ҽ���һ�°ɡ�
���ն����������������԰ɡ�
��λ�����־�����ľճ��𳤡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040920a03">
���ǡ�
��֮ǰ������ʽ�ϼ���һ�Ρ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040930a11">
��Ŷѽ��������������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040940a10">
���ճ��Ǳ�����������Ѱ���
�����������䲿�£�
���Ǻ��¼����Ѳ����ڰ�æ������
����״�������������е㸴�ӡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0040950a03">
������ʽ�ľ��죬����ô˵�İɣ�
��ǰЩ���Ӽ���ʱ����ô˵�ġ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0040960a10">
���Ǿ��С��ǣ��𳤡���λ�Ǵӣǣȣѵ�������
������ᦹ��ľ��٣���������֦��ξ��
������������ɴ����һֱ������֦����̷
��������ְ��Ա����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0040970a11">
���ǡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0040980a00">
����ξ��
���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������ת������֦С��Ľ׼��½���ȷ�ϡ�
���滻��һ��ȫ�µġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma03/0040990a00">
����ϲ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041000a03">
��лл��
����Ȼнˮû��ô��ߡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0041010a10">
���ǿɲ��а���
������ʲô���أ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041020a03">
�����ź�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0041030a10">
���ðɡ����������ˡ�
�������ǰﱾ�����£�
Ҫ���Ƿݲ������ɱ��������ɡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041040a03">
����ѽ�����ǿ����Ĵ��ˡ�
����Ҫ�������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0041050a04">
��������������С�㡣
�����͵�����ص�����
Ҳ��Զ�ˡ���

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041060a03">
�������£��ԴǸý�����
���ղŵĻ����շ����������ܻ�¸����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0041070a10">
���⡢�����������汧Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����������ػ���ʲô�� 

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041080a11">
�������ξ��
���������һ�¡�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041090a03">
���ǣ�ʲô�أ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041100a11">
���ղ���˵�Ļ����ڹ�������߹�����
Ϊ���㴦�����������ְ��
��������˵��ʲô����

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041110a11">
�����仰��˵�����ְȨ��ΧҲ�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����������˵��������İɡ�
�����˵�������ⲿ�˽Ӵ�ʱ�ض�ͬϯʲô�ģ��������ܡ�

������ʵ���Ͼ͵�ͬ���ǣȣ��������
����������Ҫ��ȷ��һ�£�Ȼ�����öԲߵķ�����

������ξ�Ļش�ȴ�Ե������ں���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041120a03">
��û��ʲô�ر�涨����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041130a11">
�������ǣ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041140a03">
���ǰ���ְ��Ȩ�޿���˵����ȫû�аɡ�
���Ͼ��ǻ�û�������´��̾����µ�ְ�񡣡�

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041150a03">
��һ���ӹ�������ô�����Ҫ��ְȨ�ء���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041160a11">
�������⣬Ҳ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
����������˵Ҳ������ô���¡�
�������̶ֳȵĵ�����ӵ��ǿ��������Լ�
�������屳���µģǣȣѣ�
����ǿ������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041170a03">
����ӱ����ϵ���˼���ɡ�
���ҽ���ӵ��µ�Ҫ���Լ������ϵ�֧Ԯ���ѡ�
�Ҳ�����ϸ�ط������˵�ָʾ����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041180a11">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
����һ�������ı����Ĭ�š�
����ǵ���������˵�������Ѱ��ˡ�

���𳤵��뷨�����ܹ���⡣
�����ְȨ����ȷ�綨�Ļ����������ж�ô�Ͼ���
�����п��ܷ��������á�

����ְȨ��Χ�Ļ���Ҳ����˵ֻ����ְȨ��Χ�ڰ��¡�
������û��ְȨ��Χ������˵ͼ�����±��������Ľ���
���������⣩��ְ�񡭡�

������������Ӧ����
����˵û��ǿ��ʲô�������ǵ��˴�������ϵ�Ļ���
�Ͳ��ò�ʱ��˼ǰ����ȥ����

�����������ξ�Լ���������վ����ֻ���ƫ�����
�������˾��Ƿ��׾����ҳϵİɣ� 
Ҳ�п��ܲ�һ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0041190a10">
�����������ڱ����������ṩ��������
�⻰�ð���
�������������˴��絽�����跿�����ѣ�
һֱ��һ�𡭡���������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041200a03">
���ţ������¡���Ȼֻ�Ǵ���һ���������ܣ�
��������ա�
������ʲô���뾡�ܷԸ�������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041210a03">
���������š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0041220a04">
����֪���ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0041230a10">
������!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0041240a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
������סʧЦ��
�������Ӹղſ�ʼ����������ʩС��ˣŪ�����ξ
�Դ���̽�����������ذ��ѵ���Ҳ�ͺ��޳ɹ���

���������è���໥��թ��
����������èͷӥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041250a11">
������������Ϊ�ǹ��ʹ�֮��İɣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041260a03">
����������
����������ô���Ҳû��ʲô���⡣��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041270a11">
���������ˡ�
�����ǣ��������ǲ���ʹٵĻ�������ͼ
Ҳ�͸�����ǲ���ֱ��к�����ͼ�������� ��

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041280a11">
����������һ�´�ξ��
���ǣȣѶԴ�ͱ�����������ͼ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����Ͷ��ֱ��
��֪��С�ֶζ���û�á�

����Ͷ�������ֱ��������
��������ȫ�ӻ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041290a03">
�������ߡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0041300a10">
������������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041310a11">
������������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041320a03">
����ȥ�Լ�δ���ġ�
�������š�<RUBY text="����">δ��</RUBY>����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041330a03">
�����ڣ��ǣȣѶ�����ҵ�����
�����ϲ����κθ��档
����פ�������ǽ�פ��
��̸����Ҳʢ����������ʲô�ġ�����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041340a03">
����Ȼ��û�ǻ��¡�
������<RUBY text="����">���</RUBY>��֪���ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0041350a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041360a03">
������ǰ��������
���������˾���������������ͳ�δ��Ϊǰ��
��Ͷ������ս���Խ�������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041370a03">
�����Ǹ����˾�����˵���˾��Ǵ�Ӣ����
�������Ľ���кܴ���졣��������Ϊ��������
��������˵����ȫռ��Զ������Ǳ���ġ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041380a03">
��Ϊ����ֹ���ĵ��ˣ��������������ȥ��
�������֮����Ļ������п��ܳ�Ϊ�������
������������ѳ��ڡ�
�����������ֻ�ͬ�˵���ʽ������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041390a03">
�������Ļ�����Ӣ�����������ģ�ԶԶ��
�𽥳ɹ��ķ���Ҳ�ữΪ��Ӱ��
��������Σ�������ǲ�����ӵġ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041400a03">
������������ˣ���Ӧ����ս������Ϊ��
���������޵ĺ�ƽ�᰸�����˸���һ����
���ǵ���ս��������޿����ơ�ǰ��
���Ҳƣ���˰ɡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041410a03">
���ټ��ϡ�
�����ڵ�״���£�������ǿ��ռ���͵Ļ���
Ԥ�����һ�γ��ڵĳ����ֿ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0041420a00">
����������Ҫռ��Զ���ͷ���Ĵ�Ӣ������˵��
�������ס�����˵����Ч����ͬ��
�ڶ���˹��ǰͶ�����˶��ϵĻ���
��Ч��Ҳ�������� ��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041430a03">
���ǣ�ȷʵ��
��������ˣ�����ǰ����ͳ�������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041440a03">
������Ȼ����Ӣ������ǣȣѲ����Ƿ�����
�����ڣ�Ϊ��һ�����Ͷ�����<RUBY text="����">��ȫ</RUBY>
ռ���Ͷ������С���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041450a03">
��Ĭ�������޵ı���Ҳ�ǲ���֮һ��
���ǣȣ��ڵȴ�����͹����Ļ����
������ڵ�˲�䡣
�������ۺ���<RUBY text="����">���</RUBY>��͵�˲�䡣��

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041460a03">
��˭Ҳ���ᱻ�ڱ���ָ��
�ҿ�������ս������սĻ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0041470a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
���������ǡ�
�������Գƺ�Ϊ���ȵ����ࡣ

������΢�˽�Щ�������Ƶ�����˵��������˵�ǳ�ʶ��
���⻰��Ȼû�ж�����˵���ڡ�

������
�����������ˣ����Ǵ��ֽ�פ���ڲ���Ա�������������
�����ܲ����ܵ�����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041480a11">
�������ǳ�̹�׵Ļش𰡡�
�����Ǵ�ξ���ղŵķ��ԣ��ҿ������������
�ǣȣѵ�������ʶ���������𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041490a03">
���⣬����˵��
���������������������Ϊ���ֻ��߳�Ϊ
����ĸ�������ȫ����������ũū����������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041500a03">
���������Ŀ�������ȣ�
���������ڴ�Ӣ����Ļ����õ㡣
�������<RUBY text="��������">������·</RUBY>�Ļ���
�����ֻ᲻һ����Ŷ���������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0041510a10">
������������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041520a03">
����������Ϊ����
�������𳤡���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041530a11">
�������ǡ��ǳ���л����ξ��
����<RUBY text="����">�Ǹ�</RUBY>��˼���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
���𳤵�Ŀ�����ơ�
�������������Ķ����������˰ɣ�

�������ı���������ӣ��޷����ӡ�
�����ƺ���Լ����������������ǡ�

������ί��ȴ��ֱ�ף�����ֱ��ȴ��ί��
�������ξ���ֶΣ�Ҳ������ãȻ�˰ɡ�

����Ȼ���ǹ����������İɡ���
�������ֻ���ֻ��������Ȼ���ж����ѡ�

���ֻ�������֪��������������������
����˼�����ж���û�취�İ취��
��������Ȼ����Ҳ���Ի��ˡ�

��������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041540a11">
��Ҫ�������Ļ�����ξ��
���и���������ζ���Ҫ�����㡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041550a03">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���е㾪�ȡ�
���𳤵������ܾ�Ȼ��

��û��һ˿�Ի�
�����ɵ��ж���̬�ķ���㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041560a11">
���������ƺ��Ѿ��õ����֪���������á���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0041570a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
��Ϊʲô�ᵽ�ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041580a11">
�������ξ��
����������Э������ն�����
��������Ǻ��¼�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0041590a00">
��������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041600a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
���Ҹ���ξͬʱ����ס����������
����νͻ������������������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041610a11">
����������֪�����Ǻ��¼��ǿ��µ����ѡ�
��������Ͼ�ס�������ˣ��޲��س�Ϊ�ն���
ʵ�˲��ұ�ʡ�
�������¸������ۡ�����

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041620a11">
��ð�ű������޶��ϵ�Σ�գ�
��ξ��������䴦��
���������ܻ������ޣ�ֻ�����Խ������

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041630a11">
�������Ҫ����˼���ܵ��˸�������
�������Ӹղŵ����ӿ�����
���ξ������˼���ǵ��������ʵ��ˡ���

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041640a11">
����Ҳ֪������������ʮ�ֺ���Ƥ��
��������Ϊ��Σ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041650a03">
��������������
���õ���ĳ����Һ����ң�
���������Ҳ����⡣��

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041660a03">
���վ���������ǲ����������ߵ��ˡ�
��û�е��µ�����Ļ�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0041670a11">
�������£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
����Ͷȥ���ߡ�
��������һ�˵�������
Ҳ���Բ��������΢�����ͼ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//�����m��
<voice name="���m" class="���m" src="voice/ma03/0041680a10">
�������ţ��С�
���������������ˣ�����֦��
�������Ǻ��¼����ô�Ұ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
��ģ����ͶӰ���˵�ͷ��
������˲������˾�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="����" src="voice/ma03/0041690a00">
������������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0041700a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_005.nss"