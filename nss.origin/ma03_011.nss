//<continuation number="1880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute))
	{
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
	#bg037_����������`��a_01=true;
	#bg036_������ͨ·_01=true;

	#ev113_���`���å��F�eϯ_a=true;
	#ev101_�ץ��`��_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_��·��=true;
	#voice_on_��·׿=true;

//�룺�ե饰�{����090923��
//	if($ma03_011_routeFlag==true){$ma03_011_routeFlag = false;}
//	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_010.nss"

//���`�}���`���åȡ����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma03/0110010a00">
��˵��һ�µ��鷽�롣��

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0110020a02">
���ǡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0110030a03">
�����ޡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0110040a04">
����С�㡣������ǿ�ر��ָ������˸о�
��Щ����Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ԥѡ�ν����󣬾������ڹ㳡��
����׼�����˺Ͱ��˶����뿪��ʱ�̣�
����Ҳ׼����ʼ�ж���

�������о�����<RUBY text="����">��ζ</RUBY>��Ȼ�����������ܱߡ�
��û��Ҫ�ٹ��Ѿ��뿪�����塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma03/0110050a00">
����Ϊ��ҪĿ��ĵ��������û�вμӽ��쾺
���Ķ��顣
�����Ӧ���ڼ��޴��Ļ����ڣ�Ϊ���������
ʽԤѡ���������顣��

//��������
<voice name="����" class="����" src="voice/ma03/0110060a00">
��Ҳ�����н�������������ϰ���еĶ��飬
�Ǳ߾ͽ���������
������αװ�ɾ��������Ա������������ڵ�
����Ӵ��������鱨�ռ�����

//��������
<voice name="����" class="����" src="voice/ma03/0110070a00">
�����ڵľ���Ӧ��û�о�������ô�ϸ�����
ֻҪ����ȡ�ǳ����ɵ��ж����Ͳ�����
��ʲô���⡣һ�������ɾ��뾡�쳷�ˡ��м�
�������ɡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0110080a03">
�����ʡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110090a00">
���ǣ���ξ���¡���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0110100a03">
��Ҫ���ĸ���������أ�
���㣬��ʶ���Ǻ��������ĸо������𡣡�

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0110110a02">
����Ҳ̫��ί���˰ɣ�ι����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110120a00">
��Ҫ�Ǳ����ɾ�ȫ���ˡ���������ͣ��������
�˴�ֵĶԻ������鱨�ռ��ĳ̶Ⱦͺá��ڲ�
�������̸�еõ������ջ������Ҳ�൱��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110130a00">
��ֻ�ǣ������Ҫ˵���巽��Ļ�����
��������Ҫ̽������������ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0110140a03">
������Ϊʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110150a00">
���������Ǻ�����������ѡ������ģ�
Ӧ��˵�ǡ�������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣��ϯ
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����", 8000, Center, Middle, "cg/bg/bg039_��������ϯa_01.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw����_ͨ��a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma03/0110160a00">
����������ͼ����ڿ������Ͻ��м��ӡ�
��������Ӧ�û��м������������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110170a01">
���˽⡣��

//��������
<voice name="����" class="��������" src="voice/ma03/0110180a01">
����������
���Ǹ�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110190a00">
��ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110200a01">
�������ҵ��뷨��
����Σ����Ǻ��������߸����ѡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϣС��Ѥ�b���y�ǺŤΥ��å�
	CreateTextureEX("�}�ţ�20",9000, -833,-80, "cg/ev/resize/ev101_�ץ��`��_cl.jpg");
	Move("�}�ţ�20", 5000, @-100, @0, DxlAuto, false);
	Fade("�}�ţ�20",300,1000,AxlAuto,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/ma03/0110210a01">
���������ѵ������У������Ѿ��ҵ����ˡ�
�������˶԰ɡ�
������֮���й�֮ͬ������������Ϊ�𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110220a00">
��������֮ͬ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110230a01">
�����Ƕ�Ѱ����<RUBY text="����">����</RUBY>��������������
��Ϊ��������������ʵ���Լ���Ը������

//��������
<voice name="����" class="��������" src="voice/ma03/0110240a01">
���崨��������Ҿ�����ħС̫�ɡ���
�����������ɣ�����Ȼ�̶Ⱥ����ʻ�����
����ͬ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110250a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110260a01">
��֮ǰ�����Ǻ����¡��ѡ���ʱ��û��
���������
������ȥֻ������Ŀ�ĵ�ѡ������塣ʵ����
Ҳ����˰ɡ���

//��������
<voice name="����" class="��������" src="voice/ma03/0110270a01">
������������Բ�һ����
����������Ϊ����εġ��ѡ�ӵ�н��ҵ�����
�ָ�������ĸ��Ӽ�ֵ����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110280a00">
�������ѵõ�������
�����Ǹ���Ҫ���˱ȽϺã������˼����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110290a01">
���š�
����������<RUBY text="����������">��ѡ�����</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110300a00">
����Ȼ��ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110310a01">
��ֻҪ̽������������˾ͺá�
���ҳ�����������б�˭��Ҫ�����������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��͎�
	EfRecoOut1(300);

	Delete("�}����*");
	Delete("�}�ţ�20");

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @-60, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	StCR(1000, @60, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0110320a02">
�������������ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110330a00">
������������ˣ���������������
��ÿ���˶�����ٶ������������
һ���̶ȵ�����ɡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0110340a03">
��Ҳ���ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0110350a04">
����Ҫ������ȼ���쳣ִ�����Ӧ�û��
���۰ɡ�
������Դ˶��ע�⻹���м�ֵ�ġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110360a00">
���ǵġ�
����ô����ǰ�����뿪ʼ�ж���Ϊ��
���Ч�ʣ����ͷ�ж�����

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0110370a02">
���ǣ����һ�Ŭ���ģ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ����ȥ��
	CreateSE("SE01","se����_����_�ߤ�01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	SetVolume("SE01", 3000, 0, null);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0110380a03">
��������Ҳ�߰ɣ����š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0110390a04">
���ǡ�
���ţ��������ǻ���������һ���ж��ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦�����衢ȥ��
	CreateSE("SE02","se����_����_�}���i��01_L");
	MusicStart("SE02",0,1000,0,1000,null,true);

	DeleteStA(300,true);

	SetVolume("SE02", 8000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma03/0110400a00">
�������õġ�
������Ҳ��ʼ�ж�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110410a01">
�������С�ġ�
����Ϊ����ʲô�����ɣ���Ҳ�������������
�ľ��䡣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110420a00">
�������Ƕ���ġ�
��Ҫ���������Ļ��������Ѻ��ദ��������
ֱ���練�ơ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`��
//���ӣţ����ĩ`���䤿������һ��

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	CreateSE("SE01a","se����_����_�i��06");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01a");
	WaitKey($�Еr�g);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma03/0110430a00">
����������ӵ��Ų�ֱ�ա���

{	NwC("cg/fw/nw�T�}ֱ��.png");}
//������㣯�T�}��
<voice name="����㣯�T�}" class="����������" src="voice/ma03/0110440e280">
���ţ���

{	SoundPlay("@mbgm04",0,1000,true);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110450a00">
���Ĺ����Ĺھ���
���ɾ����˶���Ϊ��ȫ��ǿ���Ƽ���
������û��ʤ�㡣��

{	NwC("cg/fw/nw�T�}ֱ��.png");}
//���ʡ��ʤ���褤���ʤꡭ����
//������㣯�T�}��
<voice name="����㣯�T�}" class="����������" src="voice/ma03/0110460e280">
����ôͻȻ˵���֡�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110470a00">
����Ҫ�����𣿡�

{	NwC("cg/fw/nw�T�}ֱ��.png");}
//������㣯�T�}��
<voice name="����㣯�T�}" class="����������" src="voice/ma03/0110480e280">
��������������
���㣬�����ǡ�����

{//��������Ц�����˥䡣���֤��Ф���
	FwC("cg/fw/fw����_Ц�c.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110490a00">
����Ҫ�Ļ������ܸ��㡭��
������˵�Ļ��������ô������

{	NwC("cg/fw/nw�T�}ֱ��.png");}
//������㣯�T�}��
<voice name="����㣯�T�}" class="����������" src="voice/ma03/0110500e280">
�������ס��ޡ��ޡ�������!!
����ħ����ħ��Ȱ���ҡ�������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф��Ф���
	CreateSE("SE01","se����_����_�ߤ�03");
	MusicStart("SE01",0,1000,0,1250,null,true);
	WaitKey(2000);
	SetVolume("SE*", 1500, 0, null);

//��ͨ·
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitPlay("SE*", null);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma03/0110510a00">
������������������⡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110520a01">
��ȫ���������⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110530a00">
��������������ô���ء�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0110540a01">
������õöࡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
//������`��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ı��ַ����������顣
����̽��һ������Ļ��⣬��������־�ͽֽǶ���
���������ļ���־��

����ζ������ҵ�ı�־��ơ�
����������ʼ��սǰ���������飬��幤ҵ�Ļ��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�����å�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110550e010">
��������λ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110560a00">
��ʧ��
�������Ӳ���顣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������ڸ����Ĺ�����Ա�������ʣ������̵�����
�ش�
�������߳����ԡ���������£���ȡ��Ե�Ȼ��̬�Ⱦ�
������������Ļ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�����å�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110570e010">
���������Ǿ������ӵ��ˣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110580a00">
�������������ǡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110590a00">
����Ȼ�Լ��ǵ�һ�βμӡ���
��һ�۾ͱ����������𡣡�

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110600e010">
����������ı�����ô���£�����ǲμ��ߵĻ���
Ҳֻ���Ǿ������ӵ����˰ɣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110610a00">
����������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����Ȼ�Ժ����������ѵ��Ĳ��֣�����˵������
���Ұ��Ե�ͷ��
�����Ļ������ҺܺõĽ��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma03/0110620a00">
������
����ô���ƾͼƺ��ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������Ͱ������ʽ�ж��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�����å�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110630e010">
�������״����Σ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110640a00">
�����á�
���Ǹ�������ĺܰ�����

//��������
<voice name="����" class="����" src="voice/ma03/0110650a00">
������Ϊ��ʽ����������������������ɶ�
���˲��ò�������͡�
����������������һ���ѵ㡣��

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110660e010">
������������˵�ء��������Ǹ�ʱ����Ƕ���
һ��û�취����
���������ܹ���������������ô��ϧ��ʹ�ã�
����Ҳ�ܸ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������Ա¶�������Ц�ݡ�
����Χ���˹���Ҳ�������ǵĶԻ������Ҷ����������
��ԱҲû���ֳ���������Ϣ��

����������ʹ�õĻ����������Ʒ��
����ƾ��㣬����������ǵ��ˣ���Ҳ�����Ƕ�������
�Լ��˵���ʶ����ǰ���ռ��鱨���Ҷ��ԣ������ٺò�
����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma03/0110670a00">
�����첻�����𡣡�

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110680e010">
���š���ϰ�����Ͼͽ����ˡ�
��������ΰ�������������֮ǰ��̫���ñ���
��������Ŷ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110690a00">
��Ҳ����˵���������𡣡�

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110700e010">
���з�������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110710a00">
����⡣��

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110720e010">
���ţ�����ú��ڴ�����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���Թ�����Ա��ζ���Ц�ݵ��ͷ�����ƶ������ߡ�
���������Ǹ�������еʦ����ȻҲ������������Ȥ��
���顪���������ұ���ȥ����һ���������ġ�

�������Ҳ�����<k>
��
�������ǲ��ǲ��ڵ�ʱ���ٴ�תͷѰ�ң������
�ڷ���Ŀ�ꡣ

�����Ҽ���Ѱ�ҵ������Ǹ�С���ӡ�

������Χ��������Ĺ�����Ա����ȣ�����ҪС������
Ȧ��
������λ�ڶ����к˵������γ��������ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma03/0110730a00">
�������Ǹ����ǡ���

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110740e010">
���ţ����ǵĶ������֡�
���������ʶ�ɣ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110750a00">
����Ȼ������־�ϼ�����Ρ�
����ô������΢ȥ�����к��ɡ���

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0110760e010">
����ɡ�
��������Ϊ�Ǹ�������ϸ�ĺ��ӣ�
�벻Ҫ�ŵ���Ŷ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110770a00">
�������õġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���������޶��⣬��ȴ���Ҷ������۵��Ҹ棬��
�����Ǹ�������ȥ��
��������������ǽ���£��������ּӹ�ʲô�����ӡ�

���ڴ�ĥһС������������ǽ��е������
���ַ���Ϊϸ�¡���Դ���ʯһ�㷴��������ĥ�Ǹ�
�����飬ȷ��״̬֮���Բ����㣬�ּ�����ĥ��

��û�в������Լ���������֡�
����˵��ˣ�����������ע�������ϵİ�����ǳ�
��һ�ȡ����������Ը��������Ҳ˵������

�������У��ƺ����ҵĽӽ�Ҳû�з��֡�
�����������ܾ���Ӱ�쵽���Ϲ����Ļ�������ˡ���
���ط��Ե���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma03/0110780a00">
������ʧ�񡣡�

{	#voice_on_��·��=true;
	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110790b42">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��һֱ�����ڴ�ĥ�����У�������̧����ͷ��
��������Ϥ�����ס�ֻ�ǵ�������ʶ��������ȻҲ��
�ú������

��˫����׽ס���ҡ�
��������ϡ��ְҵ���еģ����������ܸе�һ����
���ľ�ȷ���ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st��_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma03/0110800a00">
����·��С�㡣
�����λ��档��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110810b42">
���������ǣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110820a00">
���������ӵ������Ա���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��ʹ����΢��ı�﷽ʽ��
������˵����Ҳ����Ȼ�ǻ��ԡ�

������ͻ��ʹ������С���У�����ΪͻȻ����һ��
�·���˫�ۿ�̽��������Ĵ����
�������������˫ͫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma03/0110830a00">
���������ң�ϣ���������ʶ����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110840b42">
�������š���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110850a00">
��������˵�˺ܶഫ�š�
��������ȥ���ս�������£���ù���
ʮʤ��ս������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110860b42">
�������š�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110870a00">
������������Ǳ����ȻҲ��һ�����أ�
��������¼�Ĺؼ��������������������
����ڵĵ������似�ɡ���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110880b42">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110890a00">
����̵���·ѡ�����С�ļ��ٷ��ȡ�
����������Щ�¸��ı�﷽ʽ����ȷʵ
ֻ��˵��һ����������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110900b42">
������лл������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110910a00">
������˵����������죬��˵������ϰ�з���
�Ӵ��¹ʶ����ˡ�
����ʲô���𡣡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110920b42">
������û�¡�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110930a00">
����������
���������ٺò�������������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110940b42">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���Ҹ�˵�꣬��������·�ٵ����о�¶���·���˵����
�����𣿵���ɫ���ص��˹����С�
������ȥ��û�������ҵĴ��ڡ���˵��������ϸ����<k>
������Ҳ����ϸ��һ�ֱ�����

����̬���䵭��
���������������ʿ���е����ֲ�����һ���˳�
�Ϲ�ϵ��̬�Ȳ�ͬ��

����������һ�����磬������������ʵı�﷽ʽ��
������ס�����磬���ң������������������������඼
��һ����

���·�ֻ�Ǿ������������������ĳ�������
��ͨ����·���������ǵ��ԶԻ�һ�㡣
���������˲�������뷨�����ʡ�

����һ������ľ���
����������Ĺ�����

������������ͨ������ȴ�޷����㣬�����Ҳ���޿���
�Ρ�

������������ˣ���������ô�����ء�
�������������лᱻ���ѡ�ѡ�������������ˣ���
�˲��ݽ���֮�ˣ���������������ѡ��

�����ڲ�ͬ�����û�취ʲô�ģ�Ҳ�����������ɴ��
�뿪�ɡ�
�������ٽ�һ��������̸��

��������Ȼ¶��ѯ������򵥵ġ�
�����Ƿ����Ѿ�ʧ�ܹ�һ�Ρ�

������ͨ�����˴�ֵ�̸������ȡ�鱨����
��ע����æµ��ҵ���еĹ�����Ա�����ˣ�˼��ǡ��
�Ļ��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma03/0110950a00">
����������������豸�������ء���ȫ��װ��
�����Բ���˵�����⻹�пռ�õ���ֱ�֤��
ά��վ�����޳���ѡ��������Ͳ�����������
�й�԰����

//��������
<voice name="����" class="����" src="voice/ma03/0110960a00">
��ʵ���Ǳ���ѧ��ʱ����δ����ľ���
����Ȼ����ʱ��ʼ��ϲ������װ�׾���������
�볡��ս���ɵ�ʱ�ľ�����ʵ�����൱<RUBY text="�������">����</RUBY>����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110970a00">
��û�й���ϯ��������Ȼ�ģ�һ�㶼���ڲ�ƺ
����ϯ�ӵ���λ��
��������ʲô��Ҳû���ء��μӶ��鶼���Լ�
����񡣡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0110980b42">
������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0110990a00">
���ɱ������Ǻܰ�����

//��������
<voice name="����" class="����" src="voice/ma03/0111000a00">
����ɽ�����Ǿ�������ɡ������ֵܡ����ԣ�
������ĸ��ף���·׿��
������ȫȻ���˶��ӵĻ�������ɫ�ط�����
�����С���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111010b42">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111020a00">
����·׿�����ٽ�������ʱ�������һ���
�ú��������Ȼ�Ǹ�ʱ��ı�����ģ��
��С���ɾ�����ս���粻Զ��Ӣ�ۻ�
�������ǿ�������ȫ���Ը��ķ��С���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111030a00">
��������ƽʱ������������
������������ѡ��˦���������ǰ�˹¶�
��������ˣ�ֱ�������Ȼ�������ҵ��۵ף�
��֮��ȥ����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111040a00">
��ÿ���������������ʱ���˷ܾͻḴ�գ�
������ĹĶ����١�
��ͬʱҲ���ĵ�ӿ��һ���ź���Ҫ��û��ս
���Ļ�������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111050a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��ͣ�»��
����Ϊ�����Լ��������ڽ��ж��ס�

����ȫû�л�Ӧ��������
��
�������Ҿ�������ʲô��

����ָ�ⰴ�˰���������������۾���
��ת�����顣

���������ǵõ���ֱ���ѯ����
����Ȼ���޽�չ����Ҳû�취��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st��_ͨ��_˽��.png");
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0324]
���������ţ��ٴν�Ŀ��Ͷ���·�١�
������һ����

�����ڿ����ҡ�
��ҡҷ����˫ͫ�е�ɫ����֮ǰ��ȫ��ͬ��

����������һ�����磬������ͬһ������
��׽ס���ҵ����ˡ�
��
��������ʶ���Լ�����⡣

����<RUBY text="����������">������˵��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���١�
<voice name="��" class="��" src="voice/ma03/0111060b42">
���������
������������ԵĻ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111070a00">
�����������õġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
������������˫ͫ��û�����ҳ�����������ͷ��
����������ص��Լ��ķθ�֮�У��Ҽ���˵����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma03/0111080a00">
������Ϊ��·׿�ķ��м����뵱ʱ����һ��ѡ
�����Ҳ����ѷɫ��
�����������Ĺ��䡭����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111090a00">
������ͬ���вݼ������һ������ؼ����ڴ�
�������д����ʡ�
����ģ����˼������ˣ������ǹ�ȥ���ǵ���
�������ڡ���

//��������
<voice name="����" class="����" src="voice/ma03/0111100a00">
������������������Ů�����㡣
�����ҿ���������ʱ�����ƣ���ķ��м�����
��Խ��Խ�ӽ����𡣡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111110b42">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111120a00">
������������������ഫ�ĳɹ��ɣ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111130b42">
�������š���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111140a00">
������������
������������ο����Ȼ��·׿�����벻���жϣ�
���������̳��������Ļ��������ź�Ҳ���
���ֲ��ɡ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111150b42">
����������𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111160a00">
���ǵġ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111170b42">
�������š�
����Ҳ�ǣ�������ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111180a00">
��Ŀ���������𡣡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111190b42">
�������š�
�������ڹ���ʤ������Ȼ�󡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111200a00">
����ô����δ�������Ҫ�ء���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111210b42">
��������ʤ���ġ�
���ض��������Ϊ��һ��ȫ�����ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
����������ٶ��۷�ΪĿ�����Ů���ս���СС
��ȭͷ��
���޷�������жϣ����������˶�ôǿ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/ma03/0111220a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111230a00">
���п��������������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
������������˼������������Լ��е��Ӷ�
�����������ǳ���Т�Ĳ�����˵�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma03/0111240a00">
��������Ϊ��ǿ�еĶ����𣿡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111250b42">
��������Ȼ�����辩�ɡ�
�����У���͡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
���辩��������峤����޵С�
����͡�����ɭ������Ȼ�ڹ������۵�������
�辩������������ս��ŷ��ȷ���˵߸����Ƕ�
���޵Ĵ�ͳƫ�������������ԣ�������Ƕ���һ�ġ�

����������ض�׼���˿�ν��ǿ�����塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma03/0111260a00">
��ȷʵ���������������ء�
���������辩����Ϊ�п��ܻ�Ͷ�봫���м�����
ϵ�е���������͡�����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111270b42">
�����������Բ��𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111280a00">
��ʲô����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111290b42">
�������������ӡ����Ǹ�����
����������Ҳ����ϲ���������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111300a00">
������������ûʲô��
���ǳ���л����Ҳ��ϲ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��Ϊ������ķ�ʽ���Ա�׾��
����������ȫ����е����졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma03/0111310a00">
����Ҳû�취��
��Ҫ�ڱ�����ʤ����Ǯ�Ǳ�Ҫ�ġ�������Ա
��ô���㣬���ʽ��㣬�еĵط���������
��Ҳ�޷��ֲ��ġ���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111320b42">
�������š�
��Ǯ�����⣬��ĺ��鷳����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111330a00">
���������ӵ���Ӫ����������������־֮ʿ��
�������޷�ָ��������ʽ�
�������ܴӾ����Ԥ���е�ȡ���õĻ���
����һЩ��������Ȼ�����ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����������˵����������������
����Ϊ��ν�ľ���Ԥ�����ǹ����Ѫ��˰��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");


//�룺������ʹ������090930��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/ma03/0111340a00">
����ξ�������Ϊ����Ͱɡ�
����Ϊͬ��ʹ����彣�е��ˡ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111350b42">
������лл����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111360a00">
���ղţ��ӹ�����Ա����������
������ƺ�ҲҪͶ���������ء���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111370b42">
�������š������͡�
���㼯���ȫ�������ġ����ᾧ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111380a00">
���������ڴ���
����Ȼ�����������죬�ҾͲ���һ��������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111390b42">
���������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111400a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
��������һֱ�������е����塣
�������顪�����������õ������

������ԭ����ˡ�
������Ҳ�ǵ�Ȼ�����ղ�����������������
��ʹ�õı������塣

����Ȼ���е������Ǽ�ʦ�Ĺ�������Ҳ����û��
ȫ��ר��֪ʶ���޷����ֵ�רҵ������
���򵥵Ĺ�����ʹ��������Ҳ�ܰ�æ��û���Ĳ�
���ɹ涨���ֲ����������

���Ƿ�Ҫ�������Ĺ���ȡ�������ֵ��Ը�Ҳ��
����Ϊ��ȫ������������ֵ���֡�
����������<RUBY text="����">����</RUBY>�����͡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/ma03/0111410a00">
���������������
���ѹ֣��������Ҫ�ضԴ�����

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111420b42">
�������š�����Ҫ��
�����ҵ�����������Ҫ��Ҫ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111430a00">
����������
��һ�������˼������������ɡ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111440b42">
�������š�
�����ǣ����׵�Ѫ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111450a00">
����������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111460b42">
�������һ���֡�
�����ԡ���Ҫ��Ҫ�ضԴ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111470a00">
��ʧ��
��Ī���Ǹ�����������𡪡���·׿
������Ƶ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����·׿������֮�󣬴�δ��ý����ǰ����
����Ȼ����ѵ��Ů���Ĵ��š�������Ҳ����ʵ
��������δ������Ů���ı����С�

���������������������ʲô���и��ָ����Ĳ²⡣
�������д�δ�й��������������忪���Ĳ��롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//���١�
<voice name="��" class="��" src="voice/ma03/0111480b42">
��������͸��׼����𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111490a00">
���������š�
�����������𣿡�

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111500b42">
�������š�
�����Ե�һ�ᡣ��

//���١�
<voice name="��" class="��" src="voice/ma03/0111510b42">
���������ס�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����Ů����һ����
�����չ��޷������ֵĻ����д��

�������������Ĺ�����Ա���Ϸ�Ӧ������
��ֻ�����ߵ���������������ĳ��ָ��ָ��ߡ�

������һ�����ݵ���Ӱ�߽�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st��·_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw��·_ͨ��a.png");

	#voice_on_��·׿=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111520b24">
����ô�ˣ����١���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111530b42">
����������ˡ����Ǿ������ӵġ�
����˵�ڹ�ȥ�������׵ı�������

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111540b24">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
�������ҵ���һ��������͵����ס�
��һ�ۿ�ȥ�������ò��û�м����ҵļ��䣬���ʵ��
̫�����յĴ����ǿ���ֻ�·׿�Ȳ����۾���Ҳ��δ
¶���������͵ı��顣

��ֱ��ϸ�����ӽ���ʧ��ĳ̶�ʱ���ҲŸı����뷨��
����ȥ�۾�����ʱ�����еĻ���վ�������ȷʵ������
λ���֡����顪��Ҳ���ڹ�ȥ����־�п�����˽�����е�
���º͵��������ˡ�

���Ǽ������˸о��м���������΢Ц�У�ȫȻ��������
��Ҫ����˺ҧ���ֵĶ��ǰ����Ӱ��
��������ˣ������ɾ��ǻ�·׿��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/ma03/0111550a00">
���ҽдն�������
���ܼ��������ҵ����ҡ���Ϊ����Ϊ������
�Ȳ�֮�˵�һԱ����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111560b24">
���������ҵ���
�����ǻ�·׿�������������Ϊ�����������
�鱣�ܡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111570a00">
�����Ǻιʡ�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111580b24">
���Ѿ����Ĳ���վ���������̨�ϡ�
�����Ѿ����Լ��ķ�ʽ�롺��·׿�����˾���
�����ٱ��ھ�����Ļ������е㡭����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111590a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
������֮�䣬�Ҿ��������������֮�⡣
���������۵Ļ�·׿��Ů����ͬ�������
���뱻�������������εس�Ū��

���о�������������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/ma03/0111600a00">
���ǳ���Ǹ��
��������ˣ����������Ĳ���֮��Ҳ��������
������ɡ���

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111610b24">
���������������Ǹ���˼��
���Ҳ�Ӧ��˵��Ǹ����Ⱑ��˵��Щ��̰�
�Ļ��ء���

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111620b24">
���ܺ������������˼����Һܸ���Ŷ���˽⵽
���յ��Լ���Ϊһ��ְҵѡ�֣��ùۿ͸е���
ϲ�ã�����е�������ء���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0111630b24">
��������ȻҲ�е���Щ��Ϊ�顣
�������Բ������ᡣ��

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111640a00">
������
���Ǿͺá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�����Ƿ������ĵĻ���
����Ϊ��Ҳ�������Ļ����ǻ��ԡ�

����·�ٻ������ţ�̧ͷ�������ǡ�
���������ϴ���һ���Ժ�����ɫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="����" src="voice/ma03/0111650a00">
�������������Ҿ��ȡ�
������Ȼ��վ�ڿ����ߵ������ϲ���װ�׾�
�����������ζ�û���������

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111660b24">
���������Ӳ�������˵����
���š���Ȼ�ƺ��͸ղ�˵�Ļ���Щì�ܣ���
�Ͼ������޷�����������������롭����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111670a00">
��������Ҳ����֮���顣
������֮��������λ�������ֿɼ�֮������
��û������Ļ������ƾ���˳������ȥ����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111680a00">
�����������Ϊս��������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111690b24">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
�����������ı�����ͷ��
���˿̣��������ϱ�ӿ�����ĸ�������ʵ��̫�����ӡ�

������û��ս����
�����Ƕ�������������Ǳ�ս�����ߡ�

����·׿��ɹ����ư���Ҫ����ŷ��ʱ���������ꡣ
����ս������

����������ǰ����ӭ����սʱ���������ȫʢ��������ȥ��
����Ϊ���Լ���Ŭ�������ȫ�޹�ϵ��ԭ����������룬
�������Ļ���ô��ʹ�ı��ߡ����Զ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//��������
<voice name="����" class="����" src="voice/ma03/0111700a00">
��ʧ��
��˵��ЩǷȱ���ǵĻ�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111710b24">
�������������벻�����⡣
���Ͼ��ǹ�ȥ�˵����顣��������ƽ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
��������εĻ����ǻ��ԡ�
�����Կ��ó�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="����" src="voice/ma03/0111720a00">
��������

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111730b24">
�����ң�Ů��Ҳ������ȥ����������
�����ҿ����Ļ��塣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111740a00">
��һʱ���������������š�
���Ǵ��������˺󣬴�ͷ��ʼѧϰ���𣿡�

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111750b24">
���������Ǿ�ʵ��̫������
����ԭ�����Ǹɻ�е��Ŷ���������ƻ���ʱ��
ѧ���˷��з�����֪��ʱ�������Լ��ı���
���������������ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111760a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
������֪������ʵ��
��������ȥ�ƺ�Ҳ�����������Ĵ��ţ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111770b24">
���������ԣ�����һ����Ϊ���ֱƽ�����֮�ۣ�
�̶���׹��ȵס�
����������һ����ˡ��ص���ȥ�Ǹ��ط���
������Կ����ߵ���ݡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111780a00">
��������弼���Ľᾧ�𡣡�

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111790b24">
�������Ҳ˵���𣿡��١���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111800b42">
�������š�
����Ϊ���������������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111810b24">
��Ҫ�Ǳ�ɽ�������������ǻᷢŭ�ġ�
����Ϊ�ܶ��˶������Ǹ��Ŀ�������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0111820b42">
���������ǡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111830a00">
���������������൱�ܳ�����Ʒ�ء���

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111840b24">
������������أ�
��������Ϊ�����ʼ������������Ҳ˵��
����������������ԡ������Ѿ�������������
�����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111850a00">
�����Լ���Ϊ�أ���

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111860b24">
�����������
��Ҳֻ����������յ�һս��Ŀ�Դ�������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0111870a00">
����������ʮ���ء���

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0111880b24">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
����·������Ҫ֧�������Ц�˼�����
������Ц����ȴ���������ҵ���������
����ζ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�����ʥ��`�øжȣ�
//�룺�ե饰�{����090923��
//$Another_Flag = $Another_Flag++;
//	$ma03_011_routeFlag = true;
//	$Others_Flag++;

//	judgment_of_count();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
�������õġ�
�������ʱ���ˡ�

��ͣ��̫�øо�������Ǵ������š�
�����ң�Ҳ��Щ����һ���ʹ����ξ��״����

��Ӧ��ȥ�������𡭡�����˵��
������ô���أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}


//���x�k��һ���Θ��Ӥ�Ҋ���Ф�������֦�Θ��Ӥ�Ҋ���Ф������Έ������ޤ�


..//������ָ��
//�����Έ������ޤ롡"ma03_011a.nss"
//��һ���Θ��Ӥ�Ҋ���Ф���"ma03_011b.nss"
//������֦�Θ��Ӥ�Ҋ���Ф���"ma03_011c.nss"


//���x�k֫���`��
scene ma03_011.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm16",0,1000,true);

	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice03("��������","ȥ����һ��","ȥ��������֦");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA03();
//���Έ������ޤ롡"ma03_011a.nss"
				$GameName = "ma03_011a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//һ���Θ��Ӥ�Ҋ���Ф���"ma03_011b.nss"
				$GameName = "ma03_011b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//����֦�Θ��Ӥ�Ҋ���Ф���"ma03_011c.nss"
				$GameName = "ma03_011c.nss";
		}
	}
}