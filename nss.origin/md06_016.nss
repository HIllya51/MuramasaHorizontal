//<continuation number="1100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_016.nss_MAIN
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
	#bg016_���@c_01=true;
	#bg112_���ؤ��ε�a_01=true;
	#bg112_���ؤ��ε�b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_017.nss";

}

scene md06_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md06_015.nss"


//���y�񥭥���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	OnBG(100, "bg016_���@c_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	DrawDelete("�\", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetNwC("cg/fw/nwС�����y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160010e228">
�����š�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160020a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se����_����_����᤯01_L");
	MusicStart("SEL01",0,800,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ٶ���õ��ң����ŵ�����һ��
�������ˡ��ı��顣
�������ٷŵ���һЩ�����ģ���������
֮��Ҳ½������

�������ҵĻ������˽�¶����֪��������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);

	SetNwC("cg/fw/nw������y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160030e227">
���ؽ������𡭡�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160040a00">
�����ǡ�
��ľ�ĺ͵��ߵĻ�����������ˣ�
�����Ŀ���ȥ��롣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160050a00">
���ʽ������赣�ġ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160060e228">
����������ô˵������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160070e227">
��Ϊʲô����һ��Ҫ�������£�
���ƻ������ŵ��ֲ������ǣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160080a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����˵���ֻ��ƾֱ��������ͬ�����ǵĹ۵㡣
�����»ٻ������ŵ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/0160090a00">
����������Ϊ������ٽ�����

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160100e227">
������Ϊ��ʲô����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160110a00">
��Ϊ�˳��⡣��

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160120e228">
���������⣿��

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160130a00">
���ǵġ�
����Ҫ��Ϊ�����������׸������
��Ϊס����һ�¹��׵����顣��

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160140e228">
������������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160150e227">
��������Ϊʲô��
�����Ǳ�ս�����𣬺ò�����
�����������ﰡ!?��

//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160160e227">
��������û����ʲô��
��Ϊʲô��Ҫ����
�����Ŀ��۲��ɡ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160170a00">
���������������ǵ����顣
��ֻ�ǣ���Ϊ���ǵĵ�����
�������ԭס���������ö��ӣ�
��Ҳ����ʵ����

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160180e227">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160190a00">
�����ǲ�û�����Ρ�
��ס��Ҳͬ����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160200a00">
��ֻҪ˫��������ִ������
�϶��Լ�û�д�������޷������
������Ҫ���������ò�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160210a00">
�����ǡ�����

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160220e228">
��Ҫ�������ò����������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160230a00">
�������ǵġ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160240e227">
������������Ϊʲô������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160250e228">
�������ơ�
����Ҳ������֮�٣��Ͼ������Ǻ����ߡ���

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160260e228">
��Ϊ�˱�ס����ܶ�������Ҫ��Ŭ����
�����쾭����ġ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160270e227">
��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160280e228">
����������ס�������ȥ����
���ǳ���ᱻ����
�������Ļ���
����ֻ���ڻĽ�Ұ�����»�Ұ���ˡ���

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160290e228">
�����ǣ�����ܺ�ס���Ǻͽ�Ļ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160300a00">
����ʵ�����Ҳ����Ӱ��������������
�������жϡ�
��һ�������ɣ�Ҳ���Ϊ���ұ�������
�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������Ϊһ�鹫��Ա����Ȼ������һ�����Ƽҡ�
�����ǣ����̶�Ӧ������ĶԲ�ʱ������С���ס��
��ϵ���á���һ��ʵ���ڵĻ����;����ᱻ���ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160310e227">
����������ؽ���ס�񷽾ͻ�
��ͬ�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160320a00">
���޷���֤����

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160330e227">
�����ܱ�֤������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160340a00">
��ʮ�ֱ�Ǹ��
�������ܱ�֤���ǣ�����һ�����
����ͬ����Ӱ�졣��

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160350e227">
��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160360e228">
�����ŵ�ֻ�������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160370a00">
���ǵġ�
����Ҳ�������������Ӧ������
��Ԯ�����ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160380a00">
������רҵ��ʿ�Ļ���Ҫ�����൱�����Ľ�Ǯ��
���Ҿ�������֮���ؽ�����û���������𡣡�

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160390e228">
��ȷʵ��ˡ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160400e227">
��ι���������ȥ���𣿡�

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160410e228">
�������ǰ���
�������������¡���

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160420e228">
���㲻Ҳ�ǣ�һ��һ�εĶ̹����Ǻ�
û�²�ࡣ��

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160430e227">
������������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160440e228">
���������˿��ܻ�ͽ�͡����������Ļ�
Ҳֻ�����ĵ����ʱ�⡣
����Ȼ��ˣ��Ǿͳ���һ�¿��ܻ�ɹ��ķ���
Ҳ������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160450e227">
��������

//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160460e227">
����Űɡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160470a00">
�����������𣿡�

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160480e228">
���ţ��Ҽ��롣
��������ȥ�Ķ�����������ͬ�顣��

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160490e228">
��ֻ�ǣ�������֯������ô���ˡ���
����̫��ϣ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160500a00">
���Ѿ��㹻�ˡ�
���ǾͰ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ؤ�

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg112_���ؤ��ε�a_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md06/0160510a01">
���ɵò������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160520a00">
��������˰ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0160530a01">
��������������С����
���ź����Ѱɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160540a00">
����Ҳ��ô���á�
��������ľ��������˾ͺ��ˣ�ֻ�ǡ�����

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0160550a01">
����Ҳ������æ�𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160560a00">
����������
���ǵ����ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0160570a01">
����Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����������ľ������������ʻ���е�����������
���ض��ܶ��ŵ��ؽ������������档
��
��������Ҫ�����ʩ��ͬ�������һ�С�

��һ�龯�ٱ��������Ž��С�
�����ӲҪ������ȥΨ�����»��ɣ��ò�����̸�õ���
�������˻�Ϊ��Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md06/0160580a00">
���б����Ҫ�����㡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0160590a01">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ؤ�

	CreateColorEX("�\Ļ��", 25000, "#000000");
	Fade("�\Ļ��", 1000, 1000, null, true);

	DeleteStR(0,true);

	Fade("�\Ļ��", 1000, 0, null, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������׼ʱ�õ��˹�Ӧ��
�����վ����̶�����

���м����������ܹ���������
����ʵ��Ӧ��Ҫ�������֣����޷�
����̫�ࡣ

�����ȿ�ʼ�ֳ����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0160600a00">
����Ȼ���������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160610e228">
�����м�һ��������ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160620a00">
��˵�������и���ĵط�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ºӿ��첻���ż����ӣ������򵽴˵�
Ϊ�β����ú�������Ϸ��
��̫Σ���ˡ�

����������ף�����ˮ���ļ���
��û������Ҫ���ţ�Ҳû����ʱӦ���ĸ���
�����Ҳ�ǿ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwС�����y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160630e228">
����Ҳ֪�������ף�ֻ�ǡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160640a00">
�����������ž�������𣿡�

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160650e227">
������û������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160660e228">
��������Ȼû�аɡ�
���Ѿ�ȷ�Ϲ��ˣ������أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160670a00">
��û�о��顣
���뽨����صľ��鵹����һЩ����
�����ŵĻ���û���ˡ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160680e227">
��ͻȻ��ǰ;�������ء�����

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160690e228">
��������ѽ����Ҳ�����
�����������⺺Ҳûʲô����ɡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160700a00">
���ǵġ�
���������ܻỨ�ܳ�ʱ�䡣��

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160710e227">
��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160720e228">
�������ȷ���һ�ԡ����𣿡�

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160730e227">
������֪������
��һ�����ر�ԹҲ���ǰ취����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);




	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SetNwC("cg/fw/nw̫�ä���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0160740e109">
��������
��ι���죬�����ں�������أ���

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0160750e110">
�����������𣿡�

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160760a00">
������
��Ϊ���ؽ���������Ҫ�Ƚ��п��졣��

{	NwC("cg/fw/nw�R�����.png");}
//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0160770e110">
���ؽ�������
�����𣿡�

//������㣯ס��¡�
<voice name="����㣯ס���" class="����������" src="voice/md06/0160780e110">
������Щ�һ��

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160790e227">
������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0160800e109">
����������Ҳ�á�
�����������һ�����

//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0160810e109">
�����ƻ��ŵļһ��������
�������˲�������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160820e227">
��ʲô!?��

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160830e228">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160840a00">
�����ǵġ�
�����Ǻ��ƻ�������û�й�������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160850a00">
���������ǲ�����Ϊ�ҵ��������
���ｨ����
��ֻ�ǳ���������Ҫ�ؽ��������ѡ���

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0160860e109">
�����Ⱑ����
��������������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160870e227">
������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0160880e109">
��Ҳ�ա�
�������ƻ��Ķ����������Լ��ؽ���
��Ҳû��Ҫ���Է�������

//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0160890e109">
���Ǿ;���Ŭ���ɡ���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160900e227">
��������������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160910e228">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����������ȥ��
�����������ǵľٶ����������ܱ�ס��
�ۼ����������ߡ�

��Ŀ���䵭��û��һ˿��ů��
����ȷ�������ӵ�ӡ�󲻿�����ô���׸Ĺۡ�

�������Ȳ�ȥ�������ǡ�
��֮��Ҫ����Ĩ�ǵذ�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0160920e307">
������������

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0160930e307">
�������ߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ؤ�
//���Ȥ�Ƥ󤫤�
	Fade("�\Ļ��", 1000, 1000, null, true);

	Wait(1000);

	CreateSE("��", "se����_����_���O��01_L");
	MusicStart("��", 0, 1000, 0, 1000, null,true);

	OnBG(100, "bg112_���ؤ��ε�b_01.jpg");
	FadeBG(0, true);

	Fade("�\Ļ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������һ�ζ�������ʩ����û�ж���չ��
��˵��ʵ������ȷ�ǽ��̻�����

����Ҳ�޿��κΣ��Ͼ�����һȺ���С�
��������ˣ��������ĵײ����ǽ��ɳ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("��", 1000, 0, null);


	SetNwC("cg/fw/nwС�����y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160940e228">
����Ȼ������Ҫ�����𣿡�

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0160950e227">
��Ҳ���ܾ��ڻ������̼������
�����깤�˰ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160960a00">
���š���ȫ�Ե�ȷ�����⡣��

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0160970e228">
����Ҫ�����м佨��<RUBY text="������">֧����</RUBY>�𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0160980a00">
�����������ô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���Ӻ����ȿ������о�������Ҫ��
�����ǣ�������Ļ��ȹ��Ի��á�

����������ʣ�ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md06/0160990a00">
������һ��Ҫ�죬����һ��Ҳ�á���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0161000e227">
���ǰ���
������Ҳûʲô��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0161010e228">
����̨��ú�����Ͽ�ʼ�ɡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0161020a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ȥ󤫤�
	CreateSE("��", "se����_����_���O��01_L");
	MusicStart("��", 0, 1000, 0, 1000, null,true);

	WaitKey(800);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0161030e307">
������������

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0161040e307">
��������ι������

{	SetVolume("��", 1000, 0, null);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0161050a00">
������������ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ѭ��������΢�ĺ���������ͷ������
��Ȼ�и�����վ�����
��һ����������ķ�װ�����Ÿ��̹��������

���̹ܲ�û������ð�����������ƺ����пյġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0161060e307">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0161070a00">
���������˼ң���

{	NwC("cg/fw/nw����.png");}
//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0161080e307">
������û������

//������㣯���ˡ�
<voice name="����㣯����" class="����������" src="voice/md06/0161090e307">
��ûʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0161100a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_017.nss"