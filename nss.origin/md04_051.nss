//<continuation number="1850">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_051.nss_MAIN
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
	#bg084_�w�д�Ş��_02=true;
	#bg028_��亣ǣȣѻ���_03=true;
	#ev805_�����}����`�����Σ�_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_052.nss";

}

scene md04_051.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_050vs.nss"

//������`���`��
//��Ş��
//��������ܥå���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	CreateTextureSP("�}�ţ�", 4900, Center, Middle, "cg/ev/ev805_�����}����`�����Σ�_c.jpg");
	Zoom("�}�ţ�", 0, 1300, 1300, null, true);
	Request("�}�ţ�", Smoothing);
	Zoom("�}�ţ�", 3000, 1000, 1000, null, false);

	OnBG(100, "bg084_�w�д�Ş��_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	CreateSE("SE01L","se�\��_�w�д�_Ѳ����_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);

	SetVolume("SE01L", 1000, 300, null);
	FadeDelete("�}�ţ�", 1000, true);

	Wait(500);

	SetFwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510010e008">
�����ñ㵽�����ˣ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStL(300, true);

	SetVolume("SE01L", 3000, 0, null);

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510020b03">
�����𡭡�
��������Ͷ��׼���˰ɣ���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510030e008">
���ǵģ�û�����⡣
�����������װ������ڷ���ڴ�������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510040b03">
���Ǿͺá���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510050e008">
����������
����ũ��������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510060b03">
��ʲô�£���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510070e008">
�����ǵ�Ŀ���ܹ�����𣿡�

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510080b03">
��������

{	FwH("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510090b03">
������
����Ȼ�ܣ���������ξ����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510100b03">
����ȡ��ͣ���Ů����ս����Ź��硣
��Ϊ������Ƭ����½�ϵȺ��ͬ���ǡ���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510110e008">
��������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510120b03">
��Ȼ��������Ϊ����ȥ��ͬ���ǡ�
��ά���ٽ��������п�������������

{	FwH("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510130b03">
�������ܹ�����������η������������ξ����

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510140e008">
�������ǡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��������
	WaitKey(500);

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510150b03">
�������ţ�
������ʲô����

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510160e008">
���������ˣ���ô�ˣ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510170b03">
�������������Ծ���
�����ǡ����Ѿ�����

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510180b03">
�����ǻ�û������!?��

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510190e008">
������������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510200b03">
����ξ�������ȡ�����硣
�����̣���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510210e008">
���ǡ���

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��������
	WaitKey(500);

	SetFwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510220e008">
���������ˡ�����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510230b03">
������ˣ���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510240e008">
�������ֳ���Χ������ҡ�
������������<RUBY text="�ӣ������">���Ǻ�</RUBY>�����ˡ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510250b03">
��ʲô!?��

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510260e008">
���ܴ�Ӱ�죬�Ҿ���δ��ɳ��ˡ�
���Ʋ����Ǳ������������Ǻ�������Ļ���
��̬�С���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510270b03">
������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510280a13">
��������ԥʲô��
����ũ��������

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������

	StR(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStR(300, false);


	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510290b03">
�����ڡ�����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510300a13">
�����ɣ���Ͷ�������׵��ˡ�
�����������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510310b03">
�������ҿɲ�׼�����������ɱ�Ļ����硣��

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510320a13">
����Ҳ�ǡ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510330b03">
�����㻹����ͬ��ͷ����Ͷ��ը������

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510340a13">
�����Ǳ�Ҫ����������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510350b03">
���Ƿ��ܶ������Ǳ�Ҫ������Ϊ���д���ȶ����

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510360a13">
������
��Ҫ�����𣿡�

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510370a13">
�����ʹ�ö����׵��Ļ����ܼ��������ޡ�
���������ͻᾴη���������ǣ����Ǳ��
������Ӣ���������ֵ��ʱ�����

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510380a13">
��������Ǵ�û��ᡣ
����֪����һ�εĻ����ʱ��������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510390a13">
��������ô��
���������۵�����𣿡�

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510400b03">
������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510410a13">
����������Ӧ�����������ʲô��
���ͱ����˷�ʱ���˰ɣ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510420b03">
��������ͬ����ֻ�Ǹ����ˡ�
�����޷���˼򵥵��жϳ���ʵ����١���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510430a13">
��ƽʱ�Ļ���Ҫ����Ҳδ�����ɣ��㾡�ɿ���
������ֱ���ó��Լ����ܵ��˵Ľ���Ϊֹ��
�����������Ǿ���֮ʱ����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510440a13">
����Ȼ�Ǿ��˾͸����װɡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510450b03">
�������治�ɣ���ս���ϴ����Ƿ�Ӧ��Ϊ���
Ŀ�Ĳ�ϧ��ִ����ըս���������⣬���⻹��
��һ�Ρ���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510460a13">
��������û�����ǵ�ս�ѡ�
�������˾����ǿ��Ǵ�Ӣ������߹��������𣿡�

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510470b03">
���������У�Ҳ�����ǵ�<RUBY text="����">ͬ��</RUBY>�ɡ���

{	FwH("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510480a13">
�����Ǳ�Ҫ��������
���������������ˣ��᲻�����𣡡�

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510490b03">
������������

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw�������_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510500a13">
��Ҳ����˵��Ȼ�ѵ�������Ů���ڿ������ϵ�
���䣬������Ʒ���������֮ǰ���������¿�
ɬ���������ڿ���У������������ĵ���!!��

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510510b03">
��Խ��Խ�Ѷ��ˡ���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510520a13">
���ߣ����Ǽ��ֵ����ˣ�
�����������Ѿ���ά���ٽ����յ�ģ��������
��!?��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510530b03">
��������

{	FwH("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510540a13">
������������������
��������˵���������𣡡�

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510550a13">
����׼����̤������Ը��!?��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510560b03">
���ֶ�����ڣ���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510570a13">
�����ɣ�����Ҫ������ֻ��һ����
�����������´������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 500, 0, null);


//�����㥭���|����
	OnSE("se���L_�|��_ȭ�|����01", 1000);

	StL(1000, @0, @0, "cg/st/st����Υ�_���_�Ʒ�.png");
	FadeStL(300, true);


	WaitKey(300);

	SetFwH("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510580a13">
��������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510590b03">
��������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510600a13">
��������Ư����
�����ǣ��Ҳ����̡���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510610b03">
����ǳ����潡����
������ر������ֽ�����̬�ȡ���

{	SoundPlay("@mbgm34", 0, 1000, true);}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510620b03">
����Ϊ���Ư���Ĵ���ֻҪʹ������΢����
���ͻ����·ǳ��������ĺ��������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510630a13">
������������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510640b03">
�����������
���ǵģ�<RUBY text="������">�����</RUBY>������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510650b03">
��ִ����Ͷ�¶����׵��Ļ���������˵������
������ͼ�ɡ�
����źϺ��������𣿡�

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510660a13">
������㻹��˵Щʲô��
����һ�ж���Ϊ�˸���Ӣ����İ���֧��ʩ��
�ܾ�������������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510670b03">
�����ڡ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510680b03">
��ͬ���������Ҳ����ʵ����顣
��������Ĵ𰸻��ǲ���Ļ��������ź�����
�����彫���ò���������������ػش𡣡�

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510690a13">
������������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510700b03">
����ִ����ʹ�ö����׵���
��û������Ϊʤ����ս�����������塭����ֻ
�ǳ����ڽ��׵�Ͷ����������һ��Ϊ���ѡ���

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510710b03">
��Ϊ�����Žӽ����ǡ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510720a13">
����ũ����������ȫ����ᰡ����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510730b03">
���ֶ�����ڡ�
�������ǵ��𡭡���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510740b03">
����սǰ�����ں���ĶԻ�����

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510750a13">
����������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);

	DeleteStA(0.true);

	OnBG(100, "bg028_��亣ǣȣѻ���_03.jpg");
	FadeBG(0, true);

	StR(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	StL(1100, @100, @0, "cg/st/st������`_ͨ��_�Ʒ�.png");
	StCL(1000, @-100, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStR(300, false);
	FadeStL(300, false);
	FadeStCL(300, true);

	EfRecoIn2(300);

	SetFwH("cg/fw/fw����Υ�_��ʹ.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510760b03">
�����������п���<RUBY text="��������">�޷�ʤ��</RUBY>��
����Ȼ���������Ǿͻ��䡣������ͼ���о���
����ǰ��������޷�ʵ�֡���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510770a13">
������˵���������ս����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510780b03">
��û����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0510790b00">
���ǰ�������

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510800a13">
���ⲻ�պ����

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510810b03">
��������ʲô��˼����

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510820a13">
��ս�����벻������Ļ����Դ���Ϊ�������
�����׵���ʹ����ɾͿ����ˡ�
�����������˱�����ǲ������Ԯ���ӣ����ϣ
����������ֶν���ɡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510830b03">
���������ڡ�
���ⲻ���е㣬����³ç���𣿡�

{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0510840b00">
������������
��Ҳ������˶������ũ��������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);

	DeleteStL(0,true);
	DeleteStCL(0,true);
	OnBG(100, "bg084_�w�д�Ş��_02.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0, "cg/st/st����Υ�_���_�Ʒ�.png");
	FadeStL(0, true);

	EfRecoOut2(600,true);

	SetFwH("cg/fw/fw����Υ�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510850b03">
��������ʱ�򡪡�
��˵�����<RUBY text="����">�պ�</RUBY>����

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510860b03">
��������ʲô�պ��أ�
��ͨ���Ը��ݱ�����ѡ������ض���������˵��
��õĽ��������ս˳�����У�����ʧ�����
�ȹ��������֡���

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510870b03">
�������ս����ɲ��ò�ʹ�ö����׵���������
��Ӧ�ò����òŶԡ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510880a13">
��������������������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510890b03">
����ν�ĸպ�ֻ��<RUBY text="������������">�������˶���</RUBY>��
��û��ɣ����ڣ���

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510900b03">
���������������������ɣ�������Ҫʹ�ö���
�׵��������ԣ����������ս��������ϣ���ġ�
��Ϊ�������ս����Ҳ����Ŭ���˰ɣ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510910b03">
������˵���鱨й¶�������ޡ�����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510920a13">
������������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510930b03">
����ش�
���ֶ�����ڣ�����Ŀ����ʲô����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0510940a13">
������������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510950b03">
������������

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510960e008">
����Ϊ��ӭ���������а���
����ũ��������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣�|


	OnSE("se���L_�|��_ȭ�|����01", 1000);
	StCL(990, @-150, @0, "cg/st/st�ǣȣ���ξ_���L_�Ʒ�.png");
	FadeStCL(300, true);

	Wait(300);

	StL(1000, @0, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStL(300, false);

	SetFwH("cg/fw/fw����Υ�_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510970b03">
��������������ξ������

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0510980e008">
���������Ϳ�¡�
���¹ٵĴ���Ҳ�ǲ���������Ʒ����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0510990b03">
�������ֶ�����ڵ�ͬ���𣿡�

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511000e008">
���ǰ�����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511010a13">
��Ӧ��˵��׷����ʵ��ͬ־�ɡ���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511020e008">
��������˵���ˡ�
���¹�ֻ�ǡ�����ֻ��ƣ�����ѡ���

//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511030e008">
�������ˣ���ũ��������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511040b03">
����ξ������

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511050e008">
��ռ���ͣ����������ء�
���������������Ӣ����
����û��û�˵�ս���ɡ���

//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511060e008">
����֪����ʱ���ܽ�����
��Ҳ������ܷ��Ӯ�ģ�ս������

//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511070e008">
�����Ѿ�������������ˡ�����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511080b03">
������������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511090b03">
�����ԣ���Ҫ������Ź����𣿡�

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511100b03">
���Ҳ�֪����������Ǯ���Ǳ��ʲô������
���㾹Ȼ�Ὣ�����ͬ�������������ɵĺ�
���У�Ȼ���İ���õضȹ���������

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511110e008">
������������

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwH("cg/fw/fw����Υ�_��ʹ.png");

//�룺������˼�äƤ룩��090930��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511120b03">
�������Ǹ����εĵܵܡ�����ٶ�����ŵĻ�
�͸������˰ɡ���
��û�뵽�����Ϊ����������Ů��Ҳ����ν����

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511130e008">
��ϣ�����������ҡ�
���Ҳ�δ��Ů����ͷ����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511140b03">
�����㲻�Ƿ���ս����
��׼�������Ϸ��������𣿡�

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511150e008">
������
����ȻҪս������

//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511160e008">
����ȻҪ�Դ�Ӣ��������Ʋá���

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511170b03">
�������˲��������Ǽ�������أ���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511180e008">
���ڽ����ڡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511190b03">
������������

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511200e008">
��������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511210b03">
�����ᵽ�������ж԰ɣ���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511220e008">
���ǵġ���

{	FwH("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511230b03">
���Ҳ�̫�˽���������˼��Ц����
�����ܲ��ܽ������һЩ��
ʹ������Ҳ�������ء���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511240e008">
��û���⣬������Ͷ�¶����׵���
�������������쵽�ģ�
������ϣ����������ˡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511250b03">
�������Լ�����Σ�
  ��Ȼ�������æ������ǹָ�ų����ҵ��Դ�
����Ϸ����ʵ������ѧ�������������ϷҲ��
����æ���ء���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511260e008">
��������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511270a13">
���������ٻ���������

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����Υ�_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511280b03">
�������������ڣ�
����˵ʲô����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511290a13">
�������ٻ�������
�������ڴ�������

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511300a13">
������������ǰ������α���������¡�
����������������С���һ�е���ʵ�����Լ�
��¶����������������������������ֵ�ɡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511310b03">
����������
��������ʶ�������Ǹ����һ������������
����ǰ�ء���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511320a13">
���ߡ��������⼸ǧ��һֱ��˯�ڵص׵����ҡ�
�����ź����ء�
  �����뽫������Ϊ�츸���羴���ݵ�������
˵����״̬�������롣��

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511330a13">
����ʱ���������������ˡ�
�����ȵý����Ӵ��Ͻ��ѣ���������ɹɹ̫��
���С���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511340b03">
������������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511350b03">
��ϣ������������ˡ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511360a13">
���ţ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511370b03">
���ѵ���������<RUBY text="��������">ʵ�ʴ���</RUBY>�����������ڴ��𣿡�

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511380a13">
���ǰ���û����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511390b03">
��������������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511400a13">
��Ϊ����׼����������׵������ش����Ŷ����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511410b03">
��ʮ�ֱ�Ǹ�����ڡ�
������ȫ�޷���⡣��

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511420a13">
���ڳ�Խ������֪�ĵط�Ҳ������ʵ��
���������������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511430b03">
�����������ߵĿ�ͷ������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511440a13">
���㲻Ӧ����Ϊ�⼸�仰��ֹͣ˼����
�������˼����Ȼ����ͬ����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511450b03">
��������ͬ��ʲô�ص׵���������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511460a13">
���š�
�����������ڳ��ϣ�һֱûע�⵽�Ŀ�������
ξ�ı��ţ���һ��ʵ�˰ɣ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511470a13">
��������һ���ġ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511480b03">
������������

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511490a13">
������������ʶ�����У��������֮һ��
�����������𺣵���ϣ���ˡ�����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511500a13">
����������������ӵ�����ǵ��ˡ�
����ǰ��Ϊĳ��<RUBY text="�ӣ�">������</RUBY>�󽫵�������ء�����
��ϣ��Ҳ���ǲ���������󱻿ֲ����ӻ����ˡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511510b03">
������˵ʲô����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511520a13">
����˵������ûע�⵽��ʵ��
����������Ϊֻ�п�������ξ�����𣿡�

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511530b03">
������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511540a13">
���㽫�´�½�����ɵ�ͬ�������ͽ��ǣȣѵĸ�
���ţ�ִ����Ȩ�޶԰ɣ�
  ͬ�����������������᲻��˼���𣿡�

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511550b03">
������˵ʲô������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511560a13">
����Ȼ�Ⲣ���򵥡�
����������ξ���ֳ��������Ρ�������������
�����㶼��֮ǰ���ڷ�����ߵ�С��������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511570a13">
������<RUBY text="����������">�ҵ�ͬ����</RUBY>��
������롣
��Ǳ���������֯�С���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511580b03">
������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511590a13">
����Ȼ�������࡭��
�������㹻�ڱ�Ҫ��ʱ���ȡ��Ҫ���ж��ˡ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511600a13">
��<RUBY text="������������">�����ҷɴ���</RUBY>����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511610a13">
������Ҳ���㹻�������������ڱ�Ҫʱ��ȡ����
�Ŀ��ơ�����

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������������
//����ʿ����

	OnSE("se����_����_��ʿ����01", 1000);

	WaitKey(1500);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511620b03">
������������������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511630a13">
����������
����ũ��������

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511640a13">
�������ڻ����������Ҫ��
������<RUBY text="Yes">��</RUBY>��<RUBY text="No">��</RUBY>���ش𡣡�

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511650b03">
��������ɡ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511660a13">
��������˺ܶ���Ҫ�Ķ�������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511670b03">
��<RUBY text="Yes">��</RUBY>����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511680a13">
���㲢����������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511690b03">
��<RUBY text="Yes">��</RUBY>����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511700a13">
�������ˡ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511710b03">
������<RUBY text="Yes">��</RUBY>������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511720a13">
����ô�������������𣿡�

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511730b03">
��<RUBY text="No">��</RUBY>����

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511740a13">
������������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511750b03">
�����ڣ�����ʧ���ߡ�
  ����Ҳ����ʤ���ߡ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511760a13">
��Ϊʲô����

{	FwH("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511770b03">
����ֻ��һ���۶��ѡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511780b03">
�����������ˡ��羴����ˡ���������ˡ�
��������ˣ���Ϊʤ���ߵ������Ǵ��ڵġ�
  Ȼ����<RUBY text="������">������</RUBY>����ͨ������ʧ���ߡ���

{	FwH("cg/fw/fw�ǣȣ���ξ_ͨ��.png");}
//������㣯����ξ��
<voice name="����㣯����ξ" class="����������" src="voice/md04/0511790e008">
������������

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511800a13">
�����𡭡���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511810b03">
���ֶ�����ڡ�
���������������һ�������𣿡�

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511820b03">
�����м���һֱ����˵������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511830a13">
��ʲô�£���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0511840b03">
����������ӡ���

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0511850a13">
��<RUBY text="Yes">��</RUBY>����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���֥�å�������

	SetVolume("@mbgm*", 500, 0, null);


//����`��ֱ��˰�ܞ�ѩ`��Ȥ����ݳ�
	CreateColorSP("��ܞ", 15000, "BLACK");


//���|��
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md04_052.nss"