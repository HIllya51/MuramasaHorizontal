//<continuation number="540">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_004.nss_MAIN
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
	#bg032_��ᦌm�������b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_005.nss";

}

scene mb01_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_003a.nss"
//ǰ�ե����롡"mb01_003b.nss"


//������

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg032_��ᦌm�������b_01.jpg");
	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeBG(0,true);
	FadeStR(0,true);
	Delete("�ϱ���");
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040010a10">
����˵��ᦹ���ʧ���Ǻ��⣿��


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040020a11">
����ȻΧ��ʩ���õ��Ļ��
�����濴��������������
��������Ȼʮ��ɭ�ϡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040030a11">
�����������ɲ��³ɹ�Ǳ�롣
�������ƺ��ǲ����ˡ���


{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040040a10">
�������ˡ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040050a11">
���ǡ�
��ȫ�������ˡ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040060a10">
��������ᦹ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040070a11">
���ǡ�
�������ܱߵ����ء���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040080a10">
��������


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040090a11">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040100a10">
��������ô���¡�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040110a11">
��������
����̬��Щ̫�����桭����


{	FwC("cg/fw/fw�H��_����.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040120a10">
��Ҳ���и��Ȱ���
��̫�Ź��ˡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040130a11">
�����������£����ڡ�
������Ҫ���ǣ����Ĵ��㡣��


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040140a11">
��������������������Ӱȫ�ޡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040150a10">
���š�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040160a11">
����̬�������أ���Ȼ���ɲ��顭����������
Ϊ�����·��ģ��ͻᵢ��ʱ����
�����ڣ����밴��ԭ���ƻ���ȡ�ж�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040170a10">
�������ǰ���
����̬��չ���ҷ���Ը����


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040180a10">
�����ܲ���ȡ�ж��ˡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040190a11">
���ǡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040200a10">
��Ļ������Ķ������ȳ�������
��ͷ��մ�һ�����ӵ��ĸ���������ʲô����
������ִ����


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040210a10">
���ҵĽ�����֮��֮���Ի��ϵ���ô��Ҳ��
���Ե�ʡ�
����Щ�һ�����ȫ�����ף�һֱ���Ұ����ڳ�
��Ҳ���ǰ취����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040220a11">
��ԭ����ˡ���
�����ϵ����أ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040230a10">
��̫�����ˡ���˵��λ���½��ڽ���Ϊ
�����߱����ϴ���֮λ��
��������<RUBY text="��������">���ĸ���</RUBY>ȫ������Ψ���Ǵӣ�
������ô˵�����ζ�̫���ˡ���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040240a11">
������
������ͬ�顣��


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040250a10">
��û������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040260a11">
���Ĺ���֮�У���˭��Ϊ��������𣿡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040270a10">
����������
���ܺõر������������⡣��


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040280a10">
��������ս��������ɹ���Ⱥ�Ĺźӹ�������
���������ͯ�ġ�
�����ߣ�����֮�ӡ�ͬʱ���ǰ����常������
���������ҵĽ��׵�����


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040290a10">
��ܥԽ����������������ؿ��ƾ��÷��档
�����S����������ʨ�Ӻ����ؿ��ƾ��·��棬
ӵ������֮������ʵ��������


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040300a10">
����Σ�
��ʮ�������ɡ���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040310a11">
��������ȷ��
����Щ���ǻ��ϵ��Ų�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040320a10">
��û����ֱ��ϵ�̫���ˡ�
���и������ڿɿ�����Щ�һ��ˡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040330a10">
���Ի�����˵��Ϊ���������Ĺ����ƾ�����֮
���ơ�
������ȴ�������ҷ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040340a11">
�����������мƻ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040350a10">
���š�
��ʵ���ϣ����ж��ߡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040360a11">
���������Ѹ�١���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040370a10">
��ֻ�ǡ���
��������Է�Χ����Ȼ������ӵ��ʵ������


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040380a10">
��������˵Ҫ�ɸ���������
���ؼ�ʱ��ֻҪ��һ���ɫ�����ߣ�����ͻ��
Ϊ�Ĺۡ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040390a11">
������������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040400a10">
����������֪���������᲻��Э���ҷ�����


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040410a11">
��������ֱ�Ǹ��
�������£��벻Ҫ��Ϊ�����ˡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040420a10">
�����ǶԸ����Ǻž�Ӧ�Ӳ�Ͼ�𡣡�


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040430a11">
���ǡ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040440a10">
������Ҳ�ǡ�
���������ͰѾ����������Ǳ߰ɡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040450a10">
������û�С���
�������˿��á���


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040460a10">
�����������ǿ��������ʧ��ͳ����
����û��ʲô�취�أ����𳤡���


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040470a11">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040480a10">
��û���𡣡�


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040490a11">
��������һ�ˡ�
��Ҳ����˵��ȫû�С���


{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040500a10">
������
���������棿��


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040510a11">
���ǡ�
������Ϊ�������ڰ�ɱ����֮�£��ʵ�ʱ������
δ�ʱ�������


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040520a11">
�������йؽ��֮�£��������������һ������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0040530a10">
���ǡ���˭��˭��
�����������ˣ���˵����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0040540a11">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_005.nss"