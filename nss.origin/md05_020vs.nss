//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_020vs.nss_MAIN
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
	#bg002_��a_02=true;
	#bg001_��a_02=true;
	#bg002_��a_01=true;
	#bg001_��a_01=true;
	#bg047_�������_�a_01=true;
	#ev226_�����֣��\��_b=true;
	#bg053_ܥԽ������ͥ_01=true;
	#ev249_����VS�y�Ǻţ�_a=true;
	#ev249_����VS�y�Ǻţ�_b=true;
	#ev249_����VS�y�Ǻţ�_b2=true;
	#ev249_����VS�y�Ǻţ�_c=true;
	#ev249_����VS�y�Ǻţ�_d=true;
	#ev249_����VS�y�Ǻţ�_e=true;
	#ev128_�����ι�_a03=true;
	#ev249_����VS�y�Ǻţ�_f=true;
	#ev249_����VS�y�Ǻţ�_g=true;
	#ev250_�y�Ǻť�Щ`�����Υ��ޥ���ѥ���=true;
	#bg202_�����ݳ�����ɽa_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_021.nss";

}

scene md05_020vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_019vs.nss"

//���Q�顤��һ��
//�����գ�Ϧ�գ�
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg002_��a_02.jpg");
	SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������һ����ʤ����
��
��û�������Է���

���Զ��׼������Ǻſ���һ������<RUBY text="��">����</RUBY>��
��Ȼ����֮��Ȼ�����Ǻ��Ѳ���ӵ�о޴������ġ��񡱣�
�����ǻᱻ��һ��ն�ϵ�<RUBY text="������">��ģ</RUBY>���ˡ�

����һ���������ߵ�ʤ��

���䲻�ǵ���ս����Ҳ��Ϊ���ơ�
���˴��������������ŵ�������ƣ�
��Ϊ�˰���ֱ�ӶԻ��ľ��룬��Ϊ��㡣

����������תΪ���У����ڱ��Ե������ܡ�
����¶������������

�������ܶ���
���ж�֮ʱ�����ǹ���֮ʱ��

���Ƿų���ɱһ����ʱ�̡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš���
	PrintGO("������", 30000);
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_���L.png");
	FadeStL(0,true);
	FadeDelete("������", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����Ǻ�������֣��ջ����֣��ںü��ơ�
��
����Ұ������ս�񷨣�ͽ��֮�Ƶ�һ�֡�������
�������Գ�һ�ɵĹ��ơ�

�������ڷ�����ͬʱ�����𹥣�ʹ���˵Ĺ�����Ч��
�������ƵС��ǲ��ǻ�֮�Ƶ����⡣
�����ǣ����Ǻ�һ����ֹ��ˡ�

�����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤��ᦌm�Ǥ��y�Ǻő�
//��һ˲�������Ƥ����`�󡣴����w�ִ���
//������
	CreateColorEX("ɫ��", 9000, "#FFFFFF");

	CreatePlainSP("������", 10001);
	Wait(1);
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg002_��a_01.jpg");
	CreateEffect("���ե����ȣ�", 10000, 0, 0, 1024, 576, "Sepia");
	SetAlias("���ե����ȣ�", "���ե����ȣ�");
	Fade("������", 1000, 0, null, false);

	Wait(2000);

	SetBlur("@StL*", true, 3, 500, 200, false);
	Move("@StL*", 100, @100, @0, Axl1, false);
	DeleteStA(100,true);

	Fade("ɫ��", 0, 1000, null, true);
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��a_01.jpg");
	CreateTextureSP("�ԙC��", 100, 0, -300, "cg/st/3d�����˜�_�T��_ͨ��.png");
	CreateTextureSP("�ԙC��", 100, -20, -300, "cg/st/3d�����˜�_�T��_ͨ��.png");
	Rotate("�ԙC��", 0, @0, @0, @180, null, true);
	Rotate("�ԙC��", 0, @0, @0, @180, null, true);
	Fade("�ԙC��", 0, 500, null, true);

	Move("�ԙC*", 500, @50, @0, Dxl1, false);
	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ڰ�ᦌm�Ͽ�ս��ʱһ����
����ˣС������ֻƾ�ٶȹ�����

������������������ܳ�Ϊս����äĿð����
���������ܴﵽ<RUBY text="����������">�޷���ʶ��</RUBY>ս���ٶ�
������ֲ��̶�Ҫǿ���κξ���ս����

�����һ������ȭ�򡪡����ǽ����ء�
�����ֶ��аɡ��Ƿ�������������������ŭ��ɱ�⣬
�������ֶ��ܽ�����ͬװ��һ���ķ����Ѱɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("������", 30000);
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_���L.png");
	FadeStL(0,true);
	FadeDelete("������", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0031]
�����������̬��һ���������а���Ȼ��
�����У�ֻ��˫����������Ĺ�â��
�����Ž������ᡭ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	PrintBG("������", 30000);
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��a_02.jpg");
	StR(1000, @0, @0,"cg/st/3d������K_����_���La.png");
	FadeStR(0,true);
	FadeDelete("������", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������ԡ�
���ҽ�Ұ̫�������Ҽ硣

�������������ٵ�������
�����Ƽ򵥣�ȴӵ��ǧ���򻯵�����ԣ���������
���ǻع鵥������ն��̤������ڵĵ��ˡ�

�����˶��ѡ�

�����ˣ��С���У���һ���Ƕ��֣����ǲ���Ϊ�á�
��ֻ�԰׷����������������ǽ��ҡ��˷�����ǧ���ʱ
�䣬��ɳ�Ϊ�ܱ��ľ��������ء�

���ڼ�����õĽ���֮�䣬<RUBY text="��������">Ψ��նɱ</RUBY>��
�����������С�

����׽���Ǻ�̤����Ѿ����˲�䣬ն����
��
�����������ܲ�ȡ���ж��У�ֻ����������ȷ�ġ�

���ҷ�ռ�о������ơ�
�����ͽ�ֵĵз���ʹ��Ұ̫�����ң�
�ڹ�����Χ�ϸ���һ�

�����Եȴ����˶��������ȷ����ˡ�

���������ǡ�
��
�����ܾ�ȷ��׽��һ˲��
���������Ǻŵ��ٶ�˦����

���˼�Ϊ����ʤ�ܵĹؼ���
������ץס��ʱ���𣿡���ȥ��δ�ɹ��Ĵ����⣬
���ջ�ʵ���𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���š�ev249
	PrintBG("������", 30000);
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_���L.png");
	FadeStL(0,true);
	FadeDelete("������", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ںδ������Ǻŵĺ�������������

����������֮��һ�㡪��
��������������֮�˱���

�������Ρ�

���εĻ����������龲�ף��ִ�����֮���硣
��
���������������뽣��

����β��ܰ������Ȼ��ء�

���ɹ���ʤ��������������

����һ��
�������Ƕ�����<RUBY text="������">���Ǻ�</RUBY>��

�������
�����ǵ�����<RUBY text="������">�ն���</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ե�å��塤�^ȥ�ι�
	CreateColorEXadd("ɫ��", 19999, "#FFFFFF");
	CreateTextureEX("������", 2100, 0, 0, "cg/bg/bg047_�������_�a_01.jpg");
	StR(3000, @0, @0,"cg/st/st������ǰ_ͨ��_�Ʒ�.png");
	SetTone("������", Sepia);
	SetTone("@StR*", Sepia);

	Fade("ɫ��", 0, 1000, null, true);
	FadeStR(0,true);
	Fade("������", 0, 1000, null, true);
	Fade("ɫ��", 300, 0, null, true);
	Wait(500);
	Fade("ɫ��", 100, 1000, null, true);
	DeleteStR(0,true);
	Delete("������");
	Fade("ɫ��", 500, 0, null, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md05/020vs0010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������
���ﵽ���Ҿ��硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤������ǰ�Α��L
//	CreateColorEXadd("ɫ��", 19999, "#FFFFFF");
	CreateTextureEX("������", 2100, 0, 0, "cg/ev/ev226_�����֣��\��_b.jpg");
	SetTone("������", Sepia);

//	Fade("ɫ��", 0, 1000, null, true);
	Fade("������", 500, 1000, null, true);
//	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������Ⱦ����һ�̡���
���һӳ���ƽʱ���ԻӲ�����һ����

������������֮����ǿ�����������ס�

����ʱ�Ľ��������Ķ�����
  ������Ⱦʹ�����ı�ù�ִ�������Ҿ�����ȫ�෴��
�����ų�������������ϣ��������ҶԵȵ��ľ�����

���ɴ˶�����һ����
��
�������ԡ����Ǵθ��磬�ںܾ���ǰ����ʹ��<RUBY text="��������">ͬ��һ��</RUBY>
֮ʱ��һ��Ҳ�������ľ���

�������ľ��ӽ����ң�ȴ�������ң�����ʹ��������
������
��Ҳ�ܻ�ɱ���Ǻš�

���ܴﵽ���ľ��Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	DeleteStA(0,true);

	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg001_��a_02.jpg");
	StR(1000, @0, @0,"cg/st/3d������K_����_���La.png");

//	Fade("ɫ��", 100, 1000, null, true);
//	Delete("������");
	FadeStR(0,true);
//	Fade("ɫ��", 300, 0, null, true);
	FadeDelete("������", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���������ľ���

�����������ɡ�
����������ִ�Ĳ�̬����

���������ɡ�
������֮��

��ɱ�ˣ��ҡ�

������˵��ɱ�����

���������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤ܥԽ��ͯ�ķ�
//	CreateColorEXadd("ɫ��", 19999, "#FFFFFF");
	CreatePlainSP("������", 19999);
	Wait(1);

	CreateTextureSP("������", 2100, 0, 0, "cg/bg/bg053_ܥԽ������ͥ_01.jpg");
	SetTone("������", Sepia);


	Fade("������", 500, 0, null, true);

	SetFwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md05/020vs0020a09">
�����ǡ�
�����������ָ���������֮���
���Ҽ��ǽ����ұ���֮�����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md05/020vs0030a09">
������ͨ����ȫ�����򡣡�

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md05/020vs0040a09">
���ﵽ���Ҿ��磬����˽��Ҳ��˽������

{      FwC("cg/fw/fwͯ�ĉ�װ_ͨ��a.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md05/020vs0050a09">
��ֻ��������塣
���ַ��ǵ���Ҳ������֮��־����

{	FwC("cg/fw/fwͯ�ĉ�װ_ͨ��b.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md05/020vs0060a09">
����ȥ��֮�����
��������֮��־���ж����ַ����˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("ɫ��", 1000, 1000, Axl2, true);
	DeleteStA(0,true);
	Delete("����*");
	Wait(1000);

	StL(1000, @0, @0,"cg/st/st��_װ��_˽��a.png");
	StR(1000, @0, @0,"cg/st/st����_װ��_˽��a1.png");
	FadeStL(0,false);
	FadeStR(0,false);

	Fade("ɫ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ҡ�

��ɱ�ˣ��ҡ�

����һ�����
����Ϊ�ն����ֳ��Ļ��䣬

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0111]
��Ĩɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-100, @0,"cg/st/3d�y�Ǻ�_����_���L.png");
	StR(1000, @150, @0,"cg/st/3d������K_����_���La.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw��������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md05/020vs0070a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//������ԩ`�����礬����Ф�
	SetVolume("@mbgm*", 4000, 0, NULL);
	Wait(4000);

	PrintBG("������", 30000);
	OnSE("se����_냇��_�k��03",1000);
	CreateTextureSP("���٥�ȣ�", 100, 0, 0, "cg/ev/ev249_����VS�y�Ǻţ�_a.jpg");
	FadeDelete("������", 2000, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����˹�������֮ʱ��
����׽��ʱ����ն�¡�

��������һ��Ҳ���ܱ��㿪��

����ʱ��
��ҲҪ��׽��ʱ����

�������������ܵ�ɲ�ǣ�
�������������ܵķ���

��һ���ػ���

�������෵��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	Wait(3000);


	SetFwC("cg/fw/fw��_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0080a14">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/020vs0090a00">
��������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0100a14">
������һ�ʡ���

//���⡿
<voice name="��" class="��" src="voice/md05/020vs0110a14">
�����ߵ���꣬��ǰȥ�η���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/020vs0120a00">
������������

//��������
<voice name="����" class="����" src="voice/md05/020vs0130a00">
������û��ȥ������

//��������
<voice name="����" class="����" src="voice/md05/020vs0140a00">
���������ǡ���
��������еĻ�����

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0150a14">
������еĻ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/020vs0160a00">
����׹����£����߰ɡ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0170a14">
������������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0180a14">
���һ���Ϊ����ҫ�����졣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//���Ω`�磻�פ�ev249a
//���r�gֹͣ
//�����������ݳ����󥻥ץȤϡ���������ֹ��
//���������Ȥ�����ͻ�M��ӭ�Ĥ����������ƴ�ֹ��

	Wait(5000);
	CreateTextureSP("���٥�ȣ�", 100, 0, 0, "cg/ev/ev249_����VS�y�Ǻţ�_b.jpg");

	SoundPlay("@mbgm09",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�������ˡ�������

�������Ĺ켣��
���Ѿ���׽�������ٵ�ͻ����

������ƾ�о�����������ֱ������������

��ն����
���Ѿ�û��˼����ʱ�䣬

���ҵ������Ӧ�š�

������Ұ̫����
��Ϊ���������ϣ��ͻ����ȵĵ��档

��ն�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ����S
//���ؤ��¤��������
//��ֹͣ

	CreateTextureEX("���٥�ȣ�", 100, 0, 0, "cg/ev/ev249_����VS�y�Ǻţ�_b2.jpg");
	Fade("���٥�ȣ�", 300, 1000, null, true);

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������ѿ���

���߾�ȫ���ӳ�һ����
��ȴ��δѪ����

��Ҫ˵Ϊ�Ρ���

��������ֵ��η�塣
���߾�ȫ��Ҳ�޷��󼰡�

  �����Ӧ��ɱ��һ����<k>
��
��
�����������������������������㿪�ˣ�

�����ǡ�

���Һ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���u�������y�Ǻ�
	CreateTextureEX("���٥�ȣ�", 100, 0, 0, "cg/ev/ev249_����VS�y�Ǻţ�_c.jpg");
	Fade("���٥�ȣ�", 300, 1000, null, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����˻�㿪����£�
��֪����<RUBY text="����">����</RUBY>��������¡�

���ڵ��˹���δ�����ڼ䣬�Ҳ�����ˡ�

��Ҳ����˵��

����û���ӡ�

�����ǲ�׽��

�����������ҵĸйٷ�Χ�ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("���٥�ȣ�", 100, 0, 0, "cg/ev/ev249_����VS�y�Ǻţ�_d.jpg");
	Fade("���٥�ȣ�", 300, 1000, null, true);
	Wait(1000);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0181]
���ػ���

����ת��������ϡ�

�������������Ӱ�ӣ�

��ն����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ұ̫���������ؤ뤾�äƳ��ˤ�
//���y�Ǻš�Ŀǰ��
	CreateTextureEX("���٥�ȣ�", 100, 0, 0, "cg/ev/ev249_����VS�y�Ǻţ�_e.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������Ȼ���<k>{Wait(1000);Fade("���٥�ȣ�", 300, 1000, null, true);}��׽���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0190a14">
��������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md05/020vs0200a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������Խ��ǵĽ����룬������ϡ�

����̴�һ�ű�ֽ������˶��ݵ�ʱ�䡣
�������ཻ��

��ʤ���Ѷ���

��ս����Ϊȷ����
�����֮�����������֮����

����׷���ϡ�

�����ٶȡ�
����Ȼ�޷���Խ��

��Ҫ�ǻ���һ˲��ǧ��֮һ�����ʱ��Ҳ�á�
��ֻҪ����ʱ�䣬���ܸ��ڵ��˹���ǰն�¡�

�����ǰ�����û�����ⴭϢ֮����

���ѳ����һ���

������Ұ̫��ҪնҲ�޷�ն�µľ��롣

���ǵ��˵�ȭ�������ƫ�ı�ɱ���롣

�������Ѿ��޷���ء�

��ʤ���Ѷ���

�������Ѿ����ˡ�

����ô��<k>
��<RUBY text="��">��</RUBY>��<RUBY text="����������">����ʲô��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������x���å�
	CreateTextureEX("���٥�ȣ�", 100, -628, -183, "cg/ev/ev249_����VS�y�Ǻţ�_e.jpg");
	Request("���٥�ȣ�", Smoothing);
	Zoom("���٥�ȣ�", 0, 3000, 3000, Dxl2, true);

	Move("���٥�ȣ�", 3000, @-100, @0, Dxl1, false);
	Fade("���٥�ȣ�", 3000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�������ڶ���

����֡�
����ֻ�֣���Ӧ����Ұ̫���ı���

��Ϊ���ɿ��֡�

��Ҫ��ʲô��

�����ֳ����ҵ�����

����ȥץ�������ĳ�

��������ģ�<k>
���̵���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/md05/020vs0210a00">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����ǡ�

���ڶ���֮�£������������������һ��������

����Ұ������ս��
��
��������������

����̫��ն�µ�ɲ�ǣ�
�������ɿ�̫�����γ��̵�����ն��

���Դ�ս���Ը�����̫�����򣬲����뻳��ĵ��ˡ�

��������ʹ������
������ʶ�¡�

��Ϊ�Σ�

��Ϊ�Σ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md05/020vs0220a00">
��ʤ����������

//��������
<voice name="����" class="����" src="voice/md05/020vs0230a00">
��<RUBY text="������������������������">�����ǵ��������Ǻ������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���ԡ�
���Ҽǵá�

�����������Ǻš�

��������ʤ������ۻ�����Ȼ�ܷ��������֮�ĵ��ˡ�

������Ҫ���ǣ�����ǵá�
�������ܵ�Ű�������塢��ͷ��

�����ԡ�
����ζ�Ҫ��

��Ԥ������������������������Ϊ�˱�����Ӧ������

����Ұ����������

�������ң�

�������Ǻţ�

����������������������������Ѹ�١�

���γ��̵�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|��i�������㤭��
	OnSE("se���L_����_������01",1000);
	Wait(200);
	Fade("���٥��*", 0, 0, null, true);
	Delete("���٥��*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
  ն��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ˲���Υ����Τ褦�ˣãǡ��^ȥ�ι�
//���ء�����ѩ`�󡣔ؤ��Ϥ����˥�
//����������

	SL_leftup2(10001,@0,@0,1000);
	CreateColorSP("ɫ��", 10000, "#000000");
	Fade("ɫ��", 0, 700, null, true);

	CreateTextureSP("���٥�ȣ�", 100, 0, 0, "cg/ev/ev128_�����ι�_a03.jpg");
	CreateTextureSPsub("���ե����ȣ�", 2000, 0, 0, "cg/data/noize_01_00_0.png");
	CreateTextureSPsub("���ե����ȣ�", 2000, 0, 0, "cg/data/noize_01_00_0.png");
	Rotate("���ե����ȣ�", 0, @180, @180, @0, null, true);

	$SYSTEM_effect_lens_curvature = 1000;
	$SYSTEM_effect_lens_distance = 10;
	CreateEffect("��󥺣�", 1000, -100, -300, 1200, 1200, "Lens");
	SetAlias("��󥺣�", "��󥺣�");
	Fade("��󥺣�", 0, 500, null, true);

	CreateAFA1("@���ե����ȣ�","@���ե����ȣ�",0,1000,50,2);
	MoveSSP1("@���٥�ȣ�",100000,0,3,0,3,1000,null);
	MoveFFP1("@���٥�ȣ�",5000);

	Zoom("���٥�ȣ�", 0, 1000, 1000, null, true);
	Wait(80);
	Zoom("���٥�ȣ�", 0, 2000, 2000, null, true);
	Wait(160);
	Zoom("���٥�ȣ�", 0, 1500, 1000, null, true);
	Wait(320);
	Zoom("���٥�ȣ�", 0, 1000, 1500, null, true);
	Wait(160);
	Zoom("���٥�ȣ�", 0, 1000, 1000, null, true);

	Wait(500);

	Fade("ɫ��", 0, 1000, null, true);
	MoveSSP1stop();
	MoveFFP1stop();
	AFA1stop();
	Delete("@���٥��*");
	Delete("@���*");
	Delete("@���ե�����*");

	OnSE("se���L_����_�����02",1000);
	SetVolume("@mbgm*", 1000, 0, NULL);
	SL_leftupfade2(1);

	Wait(4000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��Ŭ����⡣

��������˲�䡪��

���ҵ���������˱�ʤ֮����
�������ڵ��˵Ĺ�����
��ն�¡�

��Ȼ����<k>
���⣬<k>���޻�����ұۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev249e
	CreateTextureSP("���٥�ȣ�", 100, 0, 0, "cg/ev/ev249_����VS�y�Ǻţ�_f.jpg");
	Fade("ɫ��", 1000, 0, null, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��ն������ա�

��ֻ����ա�

��Ŭ��ȥ��⡣

�����������ˣ�ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/md05/020vs0240a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������ں��С�

�������������źš�
�����������������������鱨���

��������˵�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��
�������������������������ռ�
������������������������Ť��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/md05/020vs0250a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���ռ�Ť����

���ԡ�
���Ǹ���������չ¶����������

����������Ť���ռ䡣

�����Ǻŵļ����Ѿ����롰��֮����

���Ѿ��̳��ˡ���֮�������Ǻţ�û������
����������

������ʹ�á�

���ڼ��̵�ʱ���
  ������С��ģ��Ť����

���㿪�˱��е�һ����

��Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��������
	Wait(1000);

	SetFwC("cg/fw/fw��_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0260a14">
������ա���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0270a14">
������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ݡ�ev249f
		CreateTextureEX("���٥�ȣ�", 100, 0, 0, "cg/ev/ev249_����VS�y�Ǻţ�_g.jpg");
		CreateTextureEX("���٥�ȣ�", 100, 0, -390, "cg/ev/ev250_�y�Ǻť�Щ`�����Υ��ޥ���ѥ���.jpg");
		CreateColorEXadd("ɫ��", 10000, "#FFFFFF");
	
		CreateTextureEX("���٥�ȣ�", 100, -512, -288, "cg/ev/ev250_�y�Ǻť�Щ`�����Υ��ޥ���ѥ���.jpg");
		Zoom("���٥�ȣ�", 0, 2000, 2000, Dxl2, true);
	
		CreateTextureEXadd("���ե����ȣ�", 100, 0, 0, "cg/ef/ef042_���ô��.jpg");
		Zoom("���ե����ȣ�", 0, 1300, 1300, Dxl2, true);
	
		CreateTextureEX("������", 100, Center, -5536, "cg/bg/bg202_�����ݳ�����ɽa_02.jpg");
		CreateTextureEXadd("���ե����ȣ�", 100, 0, 0, "cg/ef/ef036_�o�Ҥξ���.jpg");
		Zoom("���ե����ȣ�", 0, 500, 500, Dxl2, true);

	Fade("���٥�ȣ�", 0, 0, null, true);
	Fade("���٥�ȣ�", 300, 1000, null, true);
	Wait(700);
	Fade("ɫ��", 0, 1000, null, true);

	OnSE("se���L_����_�z_̤���z��02",1000);
	OnSE("se���L_����_�z��������",1000);

	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 500, 0, null, false);
	Shake("���٥�ȣ�", 500, 0, 50, 0, 0, 1000, Dxl1, false);

	SetFwR("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���⡿
<voice name="��" class="��" src="voice/md05/020vs0280a14">
����ת����֮�������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Move("���٥�ȣ�", 600, @0, 0, Axl1, false);
	Wait(200);
	Fade("���٥�ȣ�", 300, 1000, null, false);
	Move("���٥�ȣ�", 400, @0, @576, Axl1, false);
	Fade("ɫ��", 400, 1000, null, true);

	OnSE("se���L_����_�z_���02",1000);
	OnSE("se���L_����_�z��������03",1000);
	OnSE("se���L_����_��ͻ�M08",1000);

	Fade("ɫ��", 0, 0, null, true);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Shake("���ե����ȣ�", 300, 0, 50, 0, 0, 1000, null, false);
	Fade("ɫ��", 300, 1000, null, true);

	SetVolume("@mbgm*", 3000, 0, NULL);
	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M07",1000);

	Fade("������", 0, 1000, null, true);
	Fade("ɫ��", 1000, 0, null, false);
	Move("������", 2000, @0, @500, Dxl2, true);

	Fade("���ե����ȣ�", 300, 1000, null, true);
	Fade("���ե����ȣ�", 300, 0, null, true);
	Wait(1000);

	ClearFadeAll(3000, true);


//����ʽ�����΍u���å�
//����ԫ���褯���ؤ����ߤ����ʸФ�����
//���Ȥ�Ǥ�ͩ`�ݤ��Ǵ����w�ִ������դα˷��ء�

}

..//������ָ��
//�Υե����롡"md05_021.nss"