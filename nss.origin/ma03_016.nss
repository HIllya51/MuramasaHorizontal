//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_016.nss_MAIN
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
	#bg039_��������ϯa_01=true;
	#bg038_���`���å�ֱ��_01=true;
	#bg037_����������`��a_01=true;
	#ev906_���٥�����_a=true;
	#ev906_����ƥ�������_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_���٥�=true;
	#av_����ƥ��ޡ�����`��=true;

	$PreGameName = $GameName;
	$GameName = "ma03_017.nss";

}

scene ma03_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_015.nss"

//������

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���㲥Աͨ���������������µĶ����ս��
�����ţ������������ϵ����塣

��
�������辩���̶ӡ����������ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm36",0,1000,true);

//������ƥ��ޡ����ֵı�ʾ���ݳ��m��
	#av_����ƥ��ޡ�����`��=true;

//�룺EVָ����ev907_����ƥ�������.jpg
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",200,1000,null,true);

	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_01.jpg");
	SetVertex("�}����100", 0, middle);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);

	CreateTextureSP("�}����ƥ���1", 11000, Center, Middle, "cg/st/resize/3d����ƥ���_����_ͨ��_l.png");
	Move("�}����ƥ���*", 0, @+200, @-200, null, true);

	Request("�}����ƥ���1", Smoothing);
	Request("�}����100", Smoothing);


	Move("�}����100", 10000, @0, @+100, null, false);
	Move("�}����ƥ���*", 10000, @0, @+200, null, false);

	Fade("�ե�å����",500,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������������Ｑ���ź����ơ�
�������������ذ�׼�����Ҳ�����ơ�
���������������λ���Ҳ�����ơ�

�����ǣ������ǽԲ�ͬ���ǡ�
�������ƽ�֮��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�ե�å����",500,1000,null,true);
//������ƥ��ޡ����ֵı�ʾ���ݳ��m��
	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_01.jpg");
	SetVertex("�}����100", 0, middle);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);

	CreateTextureSP("�}����ƥ���1", 11000, 0, Middle, "cg/st/resize/3d����ƥ���_����_ͨ��_l.png");

	CreateTextureEXadd("�}����ƥ���2", 11100, 0, Middle, "cg/st/resize/3d����ƥ���_����_ͨ��_l.png");

	Move("�}����ƥ���*", 0, @0, @+200, null, true);

	Move("�}����100", 5000, @-512, @0, null, false);
	Move("�}����ƥ���*", 7000, @-2000, @0, null, false);

	Fade("�ե�å����",300,0,null,true);

	Fade("�}����ƥ���2", 0, 700, null, false);
	DrawTransition("�}����ƥ���2", 1500, 0, 1000, 100, Dxl1, "cg/data/beam_01_00_0.png", true);

	Fade("�}����ƥ���2", 1000, 0, null, false);
	DrawTransition("�}����ƥ���2", 1000, 1000, 0, 100, Axl1, "cg/data/beam_01_00_1.png", true);

	Fade("�ե�å����",500,1000,null,true);

	Delete("�}����ƥ���*");
	Delete("�}����100");

	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_01.jpg");
	SetVertex("�}����100", 0, middle);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);

	CreateTextureSP("�}����ƥ���1", 11000, Center, Middle, "cg/st/resize/3d����ƥ���_����_ͨ��_l.png");
	Move("�}����ƥ���*", 0, -402, -279, null, true);

	Move("�}����100", 0, @-25, @0, null, false);
	Move("�}����ƥ���*", 0, @-50, @0, null, true);

	Move("�}����100", 500, @+25, @0, null, false);
	Move("�}����ƥ���*", 500, @+50, @0, null, false);

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��
�����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma03/0160010a00">
����Ȼ������������һ���𡭡�
�����ǡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160020a04">
����װ�ס���
���ǲ������ձ�������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160030a03">
���ǵģ�û��
�������������ȸ֡�ȫ���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ƥ��ޡ�������ȫ����
//������`�դϥ��`�ܥ��ץƥ��ޤ����꤫��
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",200,1000,null,true);

	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_01.jpg");
	SetVertex("�}����100", 0, middle);
	Zoom("�}����100", 0, 1000, 1000, null, true);
	SetShade("�}����100", MEDIUM);

	CreateTextureSP("�}����ƥ���1", 11000, Center, Middle, "cg/st/resize/3d����ƥ���_����_ͨ��_l.png");
	Move("�}����ƥ���*", 0, -942, -619, null, true);
	Request("�}����ƥ���1", Smoothing);
	Zoom("�}����ƥ���1", 0, 400, 400, null, true);

	Fade("�ե�å����",300,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��
������������Ϊ������š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160040a02">
�����ȸ֡���������˵����
����ӡ�����ɣ����Ҽǵ��������󡣡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160050a03">
��û����Ϊ�������١�
������������ǿ���൱�ߵ����ȸ֡�����Ϊ��
���ý��еĲ���ȷʵ�����롣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160060a04">
������Ϊֹ�в��ָ߶˻�����������ڻ����
��Ҫ��λ��
������û�뵽��Ȼ���ˣ�������߼��ĸֲ���
�˺�����ϧ��Ͷ�뵽���е������С�����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160070a02">
���������أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160080a00">
���ܿ����֪���ˡ�
������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160090a02">
���ס�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����������һ���쳣�ľ���
���ƽ������ʿ��ֱ���ܵ��Ϸɳ��š�

�����ٶ��븽�����ŵĺü������һ����
������˵��΢�������ǡ�
���������������⼸��������ٶȡ���

�������š�
��������<RUBY text="��������������">�տ�ʼ�ܵ�һȦ</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160100a02">
������������ô���£���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160110a00">
������ֻ�������ô���¡�
����Ȼ������ž����˳�ֵ��������˰ɡ���
������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160120a04">
������ֻ�ܳ�֮Ϊ�쳣�ļ������ܡ�
���ǿ���ȫ�����ȸ�������һ�����������Ĳ���
˼���������ʵ�����ּ��ٵİɡ�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160130a03">
�����ļ�����Ӧ���ھ����з�������������ֵ��
����������ɱ���տ�ʼ��Ļ�ս��֮���һ��
һ��ط��оͺ��˰ɡ����԰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���Һ��������˴��ž����˵ı���С���ط�����Եĸ�
�롣
��������ֻ�����ǡ�������Ҳ�����˿��ȣ�ֻ�Ǵ���ľ
���ص��ż����ŵ���Ĩ��ɫ��

�������Դ���һ����
����һƬͨ�������ܷ����ڱ������صļž��У��辩��
�����롱���������������֮�˸߰��ز��Ϸɳ��š�

����Ȧ����Ȧ����
������Ȧ�����ӣ����������������ӱ�¶�ˡ�

������Ȧ�ɼ�һ�ֶ�ʮ����˾š�
������Ȧ�ɼ�һ�ֶ�ʮ�������ġ�
������Ȧ�ɼ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma03/0160140a00">
������һ�ֶ�ʮ������ߡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160150a02">
����Ȼ�������ܡ���
������˵���ĳɼ�������ˢ���𡭡�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160160a03">
������ɴ����
���ղų�����Ȯ�ĳɼ��Ƕ��١�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160170a04">
������һ�ֶ�ʮ����һ�š�
����ʵ�ϣ�����˽�һ�밡����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ÿȦʱ�������һ�롣
��װ�׾������־�����Ŀ�ϣ��������ֻ�������̨�ϣ�
����˵��ѹ���Բ��Ҳ��Ϊ����

�����Ƚ϶����ǡ���
����Ȼ��ͨ�����������֮�ֵ��Ͼ��ǳư�������ĺ�
ɭ����ĳ�����Ȯ��

����һ�����Ѿ��˳��˵ĺ�Ͷ��ٴο��������������
���ϡ�
������û�õģ�����û�����塣��Ԥ��������Ӯ������
�Ż����������ţ����޷����˾�������ʤ����

��ֻҪȷ����������ȣ�֮���ֻҪ�۲���˾��㹻�ˡ�
��������������ô�롪���Ҿ������ƺ�������͵���
�顣

���ܻ��ҡ�
�����£��Ѿ����ҵ��޷����������ж��ˡ�

����˵ͬΪ���ʻ��ƽ��ɵ�ͬ�飬����û���˸�֪��
�͹�����������°ɡ�
��˵����������˳�ֶ��ʤ�����Ա��ڲ��ʻ���������
��Ȩ��

���������������ϳ���������������顪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160180a02">
���������Ǵֱ��ķ��С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160190a00">
���ǰ���������������±ȽϺá�
������ֻ�������¹ʡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160200a03">
���辩�����ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160210a04">
����������ʮ��Ȧ�ͽ����ˡ�
���ɼ��ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ʱ����ϯ�״λָ�������
��ÿ���˶���Ŀ��Ͷ����ʾ����

������һ�ֶ�ʮ������ߡ�
�������û�Ǵ�Ļ�������ɼ�����ֵ�Ѿ��ƽ�������
���������������ϣ�����������ŷ�޶����������ǵļ�
¼�ˡ�

������ĿǰΪֹ����Ͷ������ڶ���
��������ڶ����Ժ�Ķ�����һ�����ϵĲ��λ����ǰ��

����֪˭�ĵ��ﴫ����С�<k>
��
������������ľ���������û���ٱȵ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160220a03">
��û���ء�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160230a04">
��������Ҳ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���������Ҳ������ͬһ�仰�ɡ����������������
��һ���ƺ���Щ�����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160240a02">
���С�ʲô�
���ⲻ�ͱ�ɿ�ǮӮ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160250a00">
��û��
���������پ��������ġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160260a00">
��������������������������
�������ϵ��ۺ���������ʤ������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160270a00">
��Ҫ����ĳ����ǳ�����Ļ�����ʹ��������
�Ȳ�������Ҳ�ܻ�ʤ��
���ʽ��ϵ������ر���Ч������ܶࡣ��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160280a02">
��������Ǹ���ն�������
���ҿ��ܻ��ǲ�̫ϲ�����־�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����������Ǹ�����������δ���Իش�
����������������Ȼ�ġ�

���������̨�����ǿ�����ü������˱�ÿ��ȵ�ͬ
ʱ����Ҳ��ʹ��֪���ո�һ����ֱ�ӵ��ľ���ʵ�飬��
��������ĳ���е�ʧ����

�����Լ�Ҳ�������ĸо���
����Ȼ�������������һȴ����̹�׵���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160290a03">
���������ֵ�����Ҳ�൱�˲����ء���
������ӵ�����ǿ��ļ�������Ҳ����˵����
�Ѿ�������ѱ���ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160300a04">
���ǽ��������
������û��ô��˵���ء�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160310a00">
���������ڷ�רҵ���١�
����ֻ�����ѡ���������塺��֮Ѩ��������
������ʽ��Զ�ɺ�����ŷ�޵�ѡ�ֶ�ս������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160320a03">
���������ǿ��ɵľ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160330a00">
������ʵ��ȷʵ��һ���ġ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160340a02">
���Ǿͱ�����̨�����������壬��ʵ����ʤ��
���ͺ��ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���õ����������϶�Ҳ����һ��ʵ����
������������Ҳû˵���ڡ�

��һ�����е�ʧ�����ҷ·�Ҳ�й�����
������������Ժ��Ҷ�����ʤ���ڴ��ƺ���Ϊǿ��
�ˡ����辩��ѹ�����������̲�ס�е����ơ�

����������ר�Ĵ�ĥ��������Ů����Ӱ��
����������������˵���Ǹ��׵���Ѫ�Ļ���

�������辩�Լ��϶�Ҳ���Լ��������ԡ�û������Ϊ��
�������������֣��ͽ�����Ҳ����а��Ļ���
���������һ����ס�

�������һ��ǡ���
����������ʵ˵����ϣ�������Ӯ��

����������<k>

����ô˵�Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma03/0160350a00">
�������ô�ˣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160360a04">
�������������ˡ�
������վ�Ĺ�����Ա˵�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����̴���ôһ˵��ȷʵ����ӡ����Ϥ����������
������Ա������㸽���Ҵ�ææ�������ܡ�
��ò�ƻ�·��������ӰҲ�����С���Ȼñ��ѹ�úܵ͡�

���㲥����
��֪�������Ĵ�����ǳ�����������������������֪
Ϊ��ɢ����Ӧ����ĸо���

����Ҳû�취��ÿ���˶�����ʤ���Ѷ���
�����ڳ������辩�������޵еĵǳ���Ҳ����ô������
�ǡ����ڼ��γ���һ�����ĵ����ա�


����������ҵ�ӡ�<RUBY text="����ս��">���ԡ��ơ��ơ�</RUBY>����

���ڿ���ģ��·����ھ糡ר�Ż�Ծ���յ��˵�ͽ��Ŭ
�������Ļ������У�����׼�������ˡ�
���Ǿ�Ȼ����Ĺ���ģ������׳�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160370a03">
���ǳ��е����ء�
����װ�仨ʱ�����𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160380a04">
����֪���ء�
��Ҳ����֪����Ԥ�������辩�Կ������ǣ���
��ܿ��İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������������Աƽ����ģ�����Ҿ��������̴ӵ�˵����
˵������
��������������ж�����ȷ�ġ�������ħ��һ�����ʲ
ô�ô���û�еİɡ�

����Ȼ��˵�����Լ���Ĳ�����һ���ܵĻ��ɼ����á�
�������������޶ȵġ����ǹ������ܵĻ���һ����ڹ�
���Ի���;�о;����Լ����޴���Ӱ�췢�ӡ�


���������ֻ�·�١�

��˲�䣬��������ող�ͬ�������Ļ�������
����·���Ǿ߱��˳��������Ĳ����ߡ�ƽ���ľ�����
̸����֮�෴�Ŀ�Ұ���У������������γ�������
�ص�������

��Ҳ�кܶ��˴������Ͽ����˹�ȥ��Ӣ�۵�Ӱ�ӡ�
�����������Ĳ�ͬ���ڶ�����·��ʢ�������Ϊ����

������������ӦΪ�������������ϵ���Ԯ�ڽ���Ҳû��
�ȵ��䱾�˵ǳ��ͼ����ˡ�
��˲��ķ���ֹ��˲�䣬�������������Լ���Ů����
��ʤ�������Զ��

������ϡ��ĺ����������У���������Ʒ������
��΢�����������ڴ����ǰ��
�����Ÿ����������Ľ��С�


����������������

��������һɲ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣ�ֹͣ
	SetVolume("@mbgm*", 300, 0, null);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma03/0160390a00">
������������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160400a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�������ڡ�
��һ�й����������ˣ����з綼ֹͣ��������

�������˵�˼����ָ����ͬһ����
  �ھ�ֹ�������ÿ���˶�����������һ�仰��

����������ʲô��
����������ʲô��
����������ʲô��

��<RUBY text="����">����</RUBY>��<RUBY text="����">ʲô</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥󥸡�����`�դϟoՓ����䡤���Х�ơ�
//�����εǈ����`����ݳ�����������ǡ�
	#av_���٥�=true;

//�룺�زĵ���Ҫ�{��
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",200,1000,null,true);

	MovieSESet(20000,"mv���٥󥸵ǈ�","se����_mv��_���٥󥸵ǈ�");
	MovieSEStart(2000);

	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_01.jpg");
	SetVertex("�}����100", 0, middle);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", MEDIUM);

	CreateTextureSP("�}���٥�1", 11000, -333, -667, "cg/st/resize/3d���٥�_����_ͨ��_l.png");

	Move("�}����100", 5000, @0, @+200, null, false);
	Move("�}���٥�1", 5000, @0, @+300, null, false);
	Fade("�ե�å����",300,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
  ���������ǹ�ȥ����ʲô��ҵ��ʲô���鶼��δ����
���ġ�
  ��ȫû��ǰ���ľ����ý��С�

�����У�
�����ǽ�����

�����Ρ�
��Ť�������Ρ�
  Ť����Ҳ��һ���Ӿͻ�ɥʧƽ��С�

  �ܷ��
  ������ͺܷ��

  ����ʧ�����˲ŻὫ����״���������
  ����û�������ߵ����񾭿϶�������һ����˿����

  ������������Ҫƴ�������Ŀ���С�
  Ȼ���Ƿ·���һ��������ȡ�þ����ĸп�����

��������
  �������ǵ�������

  �·�Ӳ��Բ���ʽ����������������������̬��
  ����֮���������Ͻ�����ɫ�Ļ����Ǳ����޾��Ĵ�
���������ա�

  ���֮����
  ���������֮�
  ����֮���ա�

����񡪡�
  ���������������ڻ����ϡ�

  ������������<RUBY text="����">��Ϯ</RUBY>������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

//���£ǣ�
	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fwһ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160410a02">
���ǡ���
������ʲô������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160420a00">
�����������������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160430a03">
���ǡ��������������������
  ��ֻ����Ϊ���������ϵͳ�ӻ������뿪ʼ
����ȫ��һ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160440a04">
�����������˴ӻ����������������֣�Ȼ��
���������ۻ�����ļ����Ʋ��ء�
  ����������ܷ������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣��·���Ȥλ�Ԓ


	OnSE("se�M��_�ե�å���Хå�01",1000);
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����", 200, Center, Middle, "cg/bg/bg037_����������`��a_01.jpg");
	StL(1000, @0, @0,"cg/st/st��·_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st��_ͨ��_˽��.png");
	FadeStA(0,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw��·_ͨ��a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0160450b24">
������������أ�
  ������Ϊ�����ʼ������������Ҳ˵��
����������������ԡ������Ѿ�������������
�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);

	DeleteStA(0,true);
	Delete("�}����*");

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��ɴ���̴ӵ������������ұ��ʵ��������ص��ˡ�
���������ڣ�����������ǰ�ˣ��Ǿ�ֻ���ǵ�Ȼ���ˡ�

�����ֹ��룬�����ǲ��������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma03/0160460a00">
����������
�����롣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160470a03">
���������ˣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160480a00">
����̨����ȷʵ���������Ҳ����������ʵ���
�ݡ�
  ���������ܸо�����ǿ�ҵ�˼���ԡ���

//��������
<voice name="����" class="����" src="voice/ma03/0160490a00">
������ǲ��������װ�����Ļ����ǲ����
�����ָо��ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160500a04">
����������ͬ�С�
  ����ô˵���ء���Ȼ��̨���������������
�����ӳ�ʶ�������ܺ�г������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160510a00">
���š���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160520a03">
���ǰ�����
  ��Ҳ�ܿ�����ģ�����ֳ�����ȷ�Ĺ����ԡ���
���ҵ����š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
  �������������Ͳ����ܻ���ô������
  �������뱻���������ɽ�Ҿ�����ǧ����ɵ�����֮
������ȫ��ͬ�ġ�
�������������෴��

  ����äĿ�����Լ��������ĵ�̼ҽ�ƽ�������ʯ��
���ϵؿ��š����ţ������ı䵽ʧȥԭò������ʵ����
�뽫֮����ɹ���貵ı�ʯ�������������ļ��ȴֱ�
��������

  �Ǿ��������Ķ�����
  �����е�ȷʵ��˼�롪����<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160530a02">
���������ǡ���
��������ô��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160540a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����Ȼ���������ң����Ҳ��ܻش�
���ұ���ȥ�����ķ��С�

  �⼴���������ս���Ͽ�ʼ����




</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������_ʼ
//�룺EVָ����ev906_���٥�����_a.jpg

	CreateTextureEX("�}EV100", 10000, Center, Middle, "cg/ev/ev906_���٥�����_a.jpg");
	CreateTextureEX("�}EV200", 10000, Center, Middle, "cg/ev/ev906_���٥�����_a.jpg");
	SetBlur("�}EV200", true, 3, 500, 100, false);

	OnSE("se����_�z_��`��_����02",1000);

	Fade("�}EV200", 300, 500, null, false);
	Zoom("�}EV200", 500, 1200, 1200, null, false);
	Move("�}EV200", 500, @+100, @0, null, false);
	Fade("�}EV100", 300, 1000, null, true);
	Fade("�}EV200", 300, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
  ������ʼ�ǻ����ؽ�����
  ��ɫ�����尲��ƽ�ȵػ���ֱ��������

  ƽ���ļ��١�
  ��ƽ�����ٶȵ��������

  ��һ������Ȳ���
  ���㲻��ô�����ٶ�Ҳ�ܰ��ȵ�ת���䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma03/0160550a00">
����������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160560a03">
��������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160570a04">
��������ѽ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160580a02">
���ţ�
  ���ղ��ǲ����е���ң���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160590a03">
���ǡ��ǵġ���
  Ҳ�����ֻ�����Ϥ����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��ͨ���̶̵�ֱ�������źͻ������ǰ����
���ٶȲ�û�мӿ죬�������ڵ�һȦ��˵������֡���
�յ��辩���쳣�ġ�

��������б�¡�
������ת�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160600a03">
��û�м����ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0160610a04">
���⻹�ǵ�һȦ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��������෴��������עĿ֮���ķ��С�
������ϯ��ʧ�����������ڴ������ں��漸Ȧ�����ܵ�
����������һ������ɢ������

������Ǳ�����������Ⱦ�˰ɡ�
  ��������ԭ����Ŀ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma03/0160620a00">
��������
�����ǡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0160630a01">
�����ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160640a00">
����������
��ȷ���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0160650a01">
��û���κο���֮����
  ��Ȼһ��������ܹ��о������Ǻŵ���Ϣ��
�����ƺ������޹ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160660a00">
���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��ʵ�����Ҿ��ú����⡣
����Ϊ��ֱ���ϣ������϶��˾�������

�����������������ķ��������顣
������ľ��÷·𿴵������Ǻš���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma03/0160670a00">
�����������ô����
  ������̨�лƽ��������塣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0160680a01">
��ͬ����ʲôҲû��Ŷ��
  ��������������������ȫ����������

//��������
<voice name="����" class="��������" src="voice/ma03/0160690a01">
��������������������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160700a00">
������
  ��Ӧ�������һ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��������ô���£�
���������Ҳ�����辩��Ҳ����������������壿

������ת��������
���μ�Ԥѡ��������ȫ�����������˵�����ֹ��ˡ�
Ӧ��ȷʵ��ˡ����ǳ������壬Ӧ�þ�����̨�۽���
Ŀ����ɫ���塪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0160710a02">
������ȥ��!?��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160720a00">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
������ʶ�صɴ����ۡ�
����Ŀ���ٴ�Ͷ����Ϯ�������˲�䡣

����Ҫͨ��������������<RUBY text="��������">���˹�ȥ</RUBY>��
����һ�ֵֿ����ٶ�������������Ŀ�������ʧ�ܵ���
̬����

�����������Ծ��
������ϲ���ĺ�������ȫû����������������ߡ���
���ʧ��

����ȫ��������·׿���԰��ļ�����һ����Ӱ�ӡ�
���Ǳ��Ĺ��䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//�����衿
<voice name="����" class="����" src="voice/ma03/0160730a04">
����ת���㻹�ǡ�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0160740a03">
���ǵ�����ͷ�˰ɡ�
  �����һ���˵�����û��ֱ�Ӻ��ŵ��¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0160750a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����Ϊ�������·��Ů�Թ������ˣ��ҵÿ����Ų�˵������
��Ȼ������ȴ�̲�ס������

�������������塣

����ΧҲ������ʧ����������
���������������Ͽ����������辩���������������
�ķ��жԿ���Ψһϣ�����ˣ�һ��Ϊ�����ٰɡ�

�������Ѿ�ûʲô�ÿ����ˡ���������˱������λ��
վ�������Ӱ��ϡ�ɼ���
���ر��ڹ��ϯ����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 150, "#000000");
	FadeDelete("�ϱ���", 1000, true);

	Wait(1000);

}

..//������ָ��
//�Υե����롡"ma03_017.nss"