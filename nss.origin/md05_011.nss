//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_011.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_011.nss","TurboBlur3",true);
	

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
	#ev244_�r�g�ƄӇ��_a=true;
	#ev244_�r�g�ƄӇ��_b=true;
	#ev244_�r�g�ƄӇ��_c=true;
	#ev244_�r�g�ƄӇ��_d=true;
	#ev244_�r�g�ƄӇ��_e=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_012.nss";

}

scene md05_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_010vsb.nss"

//���������`�ݤ��Ǖr�g�Ƅӡ��Υ���`������


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	CreateColorSPadd("��", 2500, "WHITE");

	CreateTextureEX("˲�g�ƄӸ�", 1010, @0, @0, "cg/ef/ef039_�r�g�Ƅ�.jpg");
	Fade("˲�g�ƄӸ�", 0, 300, null, true);
	MoveFFP1("@˲�g�ƄӸ�",3000);

	CreateTextureSP("˲�g�Ƅ�", 1000, @0, @0, "cg/ef/ef039_�r�g�Ƅ�.jpg");

	CreateColorEXadd("�}ɫ100", 2000, "WHITE");
	Fade("�}ɫ100", 0, 1000, null, true);

	$Warp�ȥ�� = @�}ɫ100;
	$Warp�ȥ���ٶ� = 3000;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;



	CreateTextureEXadd("�}����������", 1500, Center, Middle, "cg/ef/resize/ef039_�r�g�Ƅ�l.jpg");
	SetVertex("�}����������", 800, 420);
	$�����ʥå��� = @�}����������;


	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);
	FadeDelete("��",2000,true);

	Wait(500);

	SoundPlay("@mbgm02", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����⡢���⡢���⡣

���������⡣
�����ֱ���ʧ�������������ȥ��

����ͬ��ԡ����ҫ�����С�

���������ԡ�

��Ҳ��ǡǡ�෴��

�������ڹ�Ⱥ֮�б�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/0110010a00">
�������������ڿ��ܷ�Χ�ڼ��ɣ�
��˵�����ڵ��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110020a01">
�������Ǹ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������������ֱ��׳������Ҫ�󣬴�������һ����
ԥ��������Ϊһ��ѧ��������ڽ����д������׶�
�ʼҿ�ѧЭ������ˣ��������ķ������������
��˵������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md05/0110030a01">
�����ڣ�������ʱ���ϱ��ƶ��ˡ�
���������Ǻ������ʵġ���

//��������
<voice name="����" class="��������" src="voice/md05/0110040a01">
�����������ǵ���ʶ��δ���ң�˵�����ǵ�<RUBY text="��������">
����ʱ��</RUBY>��ά��������
������ʱ�������ʱ���౳���ˡ�����

//��������
<voice name="����" class="��������" src="voice/md05/0110050a01">
�����������У��Һ����ʱ�����꣬
���볣������ת�ơ�
��������˱���Ƿ���ȷ�ء�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110060a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ҵ����̶�������ɡ�

������ǿ����⣬����򵥻���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md05/0110070a00">
���ܶ���֮��
����������<RUBY text="����������������">�Ĵ�Ԫ�ϱ�������</RUBY>�𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110080a01">
���������£���ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110090a00">
����������Ī���Ĺ�ȥ������δ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������̾Ϣ��
���������������ţ��������š���ԭ�������磬
ԭ����ʱ������������������顣

�������ȥ��
�����ǣ�Ҫ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md05/0110100a01">
������
�������Σ����ö�֪����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110110a00">
��Ϊʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110120a01">
�������ҵ���֪������ȷ���״���Ļ���
���ǡ���
�����ǲ�����ʱ������ֱ���ƶ�����

//��������
<voice name="����" class="��������" src="voice/md05/0110130a01">
�������ڹ�ȥ��δ����
���ƺ�Ҳ�޷�����˴���ƶ���Χ����
���ǲ²⣬Ҳ���������ֻ����������
�ķ�Χ�ڰɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110140a00">
 ����������
������������ڣ�����Ϊ�Ӽ�����ǰ��������
���ڸ�ʿɽ�Ͽյ�ʱ�����꼤�ұ仯��
�����ڵģ���


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������֮��
��û�е�ʱ�����״���пᡭ����

����֮����������������̹Ŵ�½�ϣ�
����δ֪������������ٵ������ء�
������������ˣ�Ҳ��ֵ�ø��ˡ�

���ƶ������귶Χ��ͣ�͵�ʱ�䣬��������˵Ҳ�Ǽ�Ϊ
���ʵģ���㲻��䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md05/0110150a01">
����ʿɽ�Ͽգ��������ⶼ��һ����Ŷ��
��������������ʵ��
˵����Ҳ�������ҵ��Ʋ���ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110160a00">
����������ʲô��˼��
�����ǲ�ֻ���ڸ�ʿɽ�Ͽգ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������ֻ��ʱ���ϵ��ƶ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md05/0110170a01">
��ʱ���ƶ��������ſռ��ƶ�������
���ϵģ��������ǵĿռ����걣�̶ֹ���
��Ե��ƶ�Ҳ�п��ܷ�������

//��������
<voice name="����" class="��������" src="voice/md05/0110180a01">
���������Ҫ������Ҳ��ͬ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110190a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ȷʵ��ˡ�
��������ת��ͬʱҲ��̫����Χ��ת��

�����ң����������쳣��㿴�����ƺ���û��
����������ռ䡭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md05/0110200a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110210a01">
��ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110220a00">
������û��<RUBY text="����">����</RUBY>�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��һ�߹۲���Χ��һ�߽�̸��
�����Ըо�������������ٶ��ڽ����仺��

��������Ϊ��ˣ��ҵ�����Ҳ����ǰ����������⡣
������ֻ����֪����Ⱥ�ļ��ߣ���ʵ�ϣ�
�������Ŷ�ȥ������<RUBY text="����">����</RUBY>��

����ȷʵ������ʱ�ռ���ƶ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/md05/0110230a01">
���ǰ���
�����������ǵ�ʱ���ж���
�����������ģ��ӽ��㡣��

//��������
<voice name="����" class="��������" src="voice/md05/0110240a01">
���ܿ��Ҫֹͣ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110250a00">
�����������ľ�ֻ������
�������������񡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��������ͣ����ӽ�����ԭ����ʱ�ռ�֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md05/0110260a01">
����������
����Ҳ���޷����е��Ʋ��ء���

//��������
<voice name="����" class="��������" src="voice/md05/0110270a01">
���������ǵ�״����Ҳ������ô���ۡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110280a00">
���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��û�о������Ǿ�������벽֮ң��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/md05/0110290a01">
�����������°ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���r�g��
//������ˡ�������λ�á��ε�

	CreateTextureEX("�r�g��01", 3000, @0, @0, "cg/ev/ev244_�r�g�ƄӇ��_a.jpg");
	Fade("�r�g��01", 1000, 1000, null, true);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/md05/0110300a01">
�����Ǵ�ԭ��ʱ���λ���ϣ�
����������������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʸӡ���ƄӤ�ʾ��

	CreateTextureEX("�r�g��02", 3100, @0, @0, "cg/ev/ev244_�r�g�ƄӇ��_b.jpg");
	Fade("�r�g��02", 1000, 1000, null, true);
	Delete("�r�g��01");
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/md05/0110310a01">
 ������Ӱ�����ǵ��ⲿ֮����������������
�����Զ��ͬһ�ٶ���ʱ�����ϳ����ƶ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʸӡ��ˤޤ���Ф�

	CreateTextureEX("�r�g��03", 3200, @0, @0, "cg/ev/ev244_�r�g�ƄӇ��_c.jpg");
	Fade("�r�g��03", 1000, 1000, null, true);
	Delete("�r�g��02");
	
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/md05/0110320a01">
����������ʵ������ˡ���

//��������
<voice name="����" class="��������" src="voice/md05/0110330a01">
���ƶ����ǵ�����������������
����ĳ�������������������ӽ�����������
ʱ���ƶ�������

//��������
<voice name="����" class="��������" src="voice/md05/0110340a01">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������λ�á����򤫤�ʸӡ

	CreateTextureEX("�r�g��04", 3300, @0, @0, "cg/ev/ev244_�r�g�ƄӇ��_d.jpg");
	Fade("�r�g��04", 1000, 1000, null, true);
	Delete("�r�g��03");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md05/0110350a01">
��������������ԭ��ʱ���������
���Ǳ���ʱ���<RUBY text="������">������</RUBY>������

//��������
<voice name="����" class="��������" src="voice/md05/0110360a01">
�����������ҵĿ��ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110370a00">
����������
����ô�����ջ���Σ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110380a01">
��ֱ��������������ȷ��λ�ã�
��������Ӧ��һֱ��������
��������񲻸�����ʩ���µ������Ļ�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110390a01">
������Ϊ�������ǻ�ص�ԭ����ʱ�䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������˵��
�������Ǵ�½�����ô��ڷ�������յ��ڵ���
���ڵ��ᱻ����������Ӱ�졪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������λ�á�����Ĥ������줿�����������������졢
//�����뤰��ؤä�����Ԫ�ˑ���·�

	CreateTextureEX("�r�g��05", 3400, @0, @0, "cg/ev/ev244_�r�g�ƄӇ��_e.jpg");
	Fade("�r�g��05", 1000, 1000, null, true);
	Delete("�r�g��04");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����ջ�ع���档
��
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/md05/0110400a00">
����ôȷʵ�������豯�ۡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110410a01">
���ǵġ�
������ƶ�����ȷ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�r�g��*",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���Ʋ������������š�
���޷�ͨ������֮������ʱ���ƶ������ǣ�
���������ɼ���ϣ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="��������" src="voice/md05/0110420a01">
��ֻ����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110430a00">
���ţ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110440a01">
�����ڵ��������׽���ʱ���ƶ���
���ƶ��������������������ᱻ���ռ��
ʱ��<RUBY text="����">ץס</RUBY>����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110450a00">
��ץס����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110460a01">
������ʱ��Ϊ����ʱ�ռ�ľ��񡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110470a00">
�������ǿ��ǣ��ܲ����˵����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����ν��ʱ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="��������" src="voice/md05/0110480a01">
���������⣬�ܿ��������ͻ�ѹ�ƴ������Լ
����������������ԭ����ʱ�ռ��ƶ��ˡ���

//��������
<voice name="����" class="��������" src="voice/md05/0110490a01">
��<RUBY text="��������">��������</RUBY>�ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110500a00">
�������������ʲô���Ͳ�һ���˰ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110510a01">
���ǵġ�
������Ϊ�����ռ�ľ���ʲôʱ�򱻹̶�
���Ǹ�ʱ�ն��޷����ߣ�����������Σ�ա���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110520a00">
��Ҫ����Ļ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110530a01">
��ʲô�����������ǡ�
���������һ�в��Ų��ʣ�
�ȴ���������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110540a00">
�������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110550a01">
�����ǣ�Ҫע����Ҳ���Ǿ��ԡ�
������Ϊ�޾ٶ�һζ�ȴ���Ҳ���ܺ��������
��������ǣ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���������磬�ڱ�ץס��ʱ�ռ䣬ǹս������ʱ����
�����Ƕ�վ�ţ���Ȼ�ᱻ�ӵ��䴩�������緢��������
    
��������Ҫ�������˼�ɡ�

  �����������ֳ����£�������Ĺ����Ѿ�����ν�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/md05/0110560a00">
�������ϲ�Ҫ������
����Ҫ׼�����Ӧ�䡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0110570a00">
��������ˣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0110580a01">
����Űɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����˹�ͬ��Ľ��У��ò���ô�ɿ��Ļ���
�����ұ��ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���Щ`�󡣱ڤ��Ƥ�褦�ʡ�
//���ۥ磻��

//�����ߣ����Υ�����ץȤ��ݳ�


//	WaitKey(1500);

}

..//������ָ��
//�Υե����롡"md05_012.nss"


function TurboBlur3()
{

	while(1){

	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 0, 1000, $Warp�ȥ�󥸤ʤ�餫��, Axl2, "cg/data/circle_01_00_0.png", true);
	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 1000, 0, $Warp�ȥ�󥸤ʤ�餫��, Dxl2, "cg/data/circle_01_00_1.png", true);

	}

}